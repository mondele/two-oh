unit configurator;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TConfigurator = class
  private

  public
    procedure getValue(key: String);                        // Returns the value associated with the given key
    procedure setValue(key: String, value: nil, meta: nil); // Sets the value associated with the given key
    procedure loadConfig(config: TJSONObject);              // Loads a configuration object into the configurator
    procedure unLoadConfig();                               // Unloads the current configuration
    procedure getKeys();                                    // Returns an array of keys in the configurator
    procedure unsetValue(key);                              // Removes the value associated with the given key
    procedure purgeValues();                                // Clears all values in the configurator

    procedure getUserSetting(name: String);                 // Not clear yet what this does
    procedure setUserSetting(name: String, value: nil);     // Sets the value of a user setting
    procedure getUserPath(key: String, arg1: nil, arg2: nil, arg3: nil); // Returns a path associated with a user setting

    procedure applyPrefAppearance();                        // Applies the user's preferred appearance settings
    procedure getAppData();                                 // Returns information about the application
    procedure refreshUserSetting();                         // Refreshes the user's settings. (huh?)

implementation

end.

