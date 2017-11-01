echo "UNLOAD chunkwm"
launchctl unload ~/Library/LaunchAgents/com.koekeishiya.chunkwm.plist
echo "CLEAN core"
make clean &>/dev/null
echo "BUILD core"
make install &>/dev/null
cd ./src/chunkc
echo "CLEAN & BUILD chunkc"
make &>/dev/null
cd ..
cd plugins/border
echo "CLEAN core::border"
make clean &>/dev/null
echo "BUILD core::border"
make install &>/dev/null
cd ../..
cd plugins/ffm
echo "CLEAN core::ffm"
make clean &>/dev/null
echo "BUILD core::ffm"
make install &>/dev/null
cd ../..
cd plugins/tiling
echo "CLEAN core::tiling"
make clean &>/dev/null
echo "BUILD core::tiling"
make install &>/dev/null
cd ../..
echo "LOAD chunkwm"
launchctl load ~/Library/LaunchAgents/com.koekeishiya.chunkwm.plist
