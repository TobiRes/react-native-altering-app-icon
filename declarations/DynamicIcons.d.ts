declare module "react-native-altering-app-icon" {
    export default class DynamicIcons {

        static dynamicAppIconSupported(): Promise<boolean>;

        static switchAppIcon(iconName: string): void;

        static getIconName(): any;

    }
}
