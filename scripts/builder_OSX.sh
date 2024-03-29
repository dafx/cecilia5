rm -rf build dist

export DMG_DIR="Cecilia5 5.1.0"
export DMG_NAME="Cecilia5_5.1.0.dmg"

if [ -f setup.py ]; then
    mv setup.py setup_back.py;
fi

py2applet --make-setup Cecilia5.py Resources/*
python setup.py py2app --plist=scripts/info.plist
rm -f setup.py
rm -rf build
mv dist Cecilia5_OSX

if cd Cecilia5_OSX;
then
    find . -name .svn -depth -exec rm -rf {} \
    find . -name *.pyc -depth -exec rm -f {} \
    find . -name .* -depth -exec rm -f {} \;
else
    echo "Something wrong. Cecilia5_OSX not created"
    exit;
fi

rm Cecilia5.app/Contents/Resources/Cecilia5.ico
rm Cecilia5.app/Contents/Resources/CeciliaFileIcon5.ico

ditto --rsrc --arch i386 Cecilia5.app Cecilia5-i386.app
rm -rf Cecilia5.app
mv Cecilia5-i386.app Cecilia5.app

cd ..
cp -R Cecilia5_OSX/Cecilia5.app .

# Fixed wrong path in Info.plist
cd Cecilia5.app/Contents
awk '{gsub("Library/Frameworks/Python.framework/Versions/2.6/Resources/Python.app/Contents/MacOS/Python", "@executable_path/../Frameworks/Python.framework/Versions/2.6/Python")}1' Info.plist > Info.plist_tmp && mv Info.plist_tmp Info.plist

cd ../..
echo "assembling DMG..."
mkdir "$DMG_DIR"
cd "$DMG_DIR"
cp -R ../Cecilia5.app .
ln -s /Applications .
cd ..

hdiutil create "$DMG_NAME" -srcfolder "$DMG_DIR"

rm -rf "$DMG_DIR"
rm -rf Cecilia5_OSX
rm -rf Cecilia5.app

if [ -f setup_back.py ]; then
    mv setup_back.py setup.py;
fi

