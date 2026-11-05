package backend.android;

import extension.androidtools.Permissions;

class AndroidUtil {
    /**
     * The already granted permissions the APP has, if the user however denies one then it wont show up here.
    **/
    public static var grantedPermissions:Array<String> = [];


    public static var defaultPermissions = ['android.permission.READ_EXTERNAL_STORAGE', 'android.permission.WRITE_EXTERNAL_STORAGE'];


    /**
     * Populates the grantedPermissions array with the granted permissions at the time of initilization.
     **/
    public static function init() {
        grantedPermissions = Permissions.getGrantedPermissions();
    }

    /**
     * Requests default permissions so that the game can function properly. called first so the permissions if the user grants them show up in granted permissions.
     * **/
    public static function requestDefaultPermissions() {
        Permissions.requestPermissions(defaultPermissions);
    }
}