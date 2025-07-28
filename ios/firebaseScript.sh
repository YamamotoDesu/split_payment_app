if [ "$CONFIGURATION" == "Debug-development" ] || [ "$CONFIGURATION" == "Release-development" ]; then
  cp Runner/development/GoogleService-Info.plist Runner/GoogleService-Info.plist
elif [ "$CONFIGURATION" == "Debug-production" ] || [ "$CONFIGURATION" == "Release-production" ]; then
  cp Runner/production/GoogleService-Info.plist Runner/GoogleService-Info.plist
fi

