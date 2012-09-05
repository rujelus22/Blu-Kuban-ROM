.class public Lcom/samsung/swift/applet/AppletActivity;
.super Landroid/app/Activity;
.source "AppletActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;
    }
.end annotation


# static fields
.field public static final BUTTONCLICK_EVENT:Ljava/lang/String; = null

.field private static final BUTTON_TOGGLE_DELAY:I = 0x1f4

.field private static final DELAYED_ENABLE_TIMER_ID:Ljava/lang/String; = null

.field public static final DISMISS_START_NETWORK_EVENT:Ljava/lang/String; = null

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final LEAVENETWORK_EVENT:Ljava/lang/String; = null

.field public static final NETWORK_CHOSEN_EVENT:Ljava/lang/String; = null

.field public static final NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String; = null

.field public static final RESTARTNETWORK_EVENT:Ljava/lang/String; = null

.field public static final RESUMED_EVENT:Ljava/lang/String; = null

.field public static final START_NETWORK_ONLY_EVENT:Ljava/lang/String; = null

.field private static final STATUS_AUTHORISED:I = 0x2

.field private static final STATUS_RUNNING:I = 0x1

.field private static final STATUS_STOPPED:I

.field public static final STOPNETWORK_EVENT:Ljava/lang/String;

.field private static final TAGNAME:Ljava/lang/String;

.field public static URL_LOCAL:Ljava/lang/String;

.field private static accessDenialInfoDialogDeviceName:Ljava/lang/String;

.field public static easyConnectIntroHasNotBeenShown:Z

.field private static instance:Lcom/samsung/swift/applet/AppletActivity;

.field private static isScanningKiesAir:Z

.field public static final sdkVersion:I

.field public static useDeveloperMode:Z


# instance fields
.field protected final ABOUT_EASY_CONNECTION_DIALOG:I

.field protected final ACCESS_DENIAL_INFO_DIALOG:I

.field protected final CHOOSE_NETWORK_DIALOG:I

.field protected final FORGET_DEVICE_DIALOG:I

.field private final HELP_MENU:I

.field private final RUNNING_COLOUR:I

.field private final SCAN_MENU:I

.field private final SETTINGS_MENU:I

.field protected final SHUTDOWN_TIMEOUT_DIALOG:I

.field private final START_MENU:I

.field protected final START_NETWORK_DIALOG:I

.field protected final START_NETWORK_ONLY_DIALOG:I

.field protected final STATE:Ljava/lang/String;

.field private final STOPPED_COLOUR:I

.field protected final STOP_DEVICE_INFO_DIALOG:I

.field protected final STOP_NETWORK_DIALOG:I

.field private final WAITING_COLOUR:I

.field private animatedImg:Landroid/widget/ImageView;

.field private animatedImgAuthorised:Landroid/widget/ImageView;

.field private authorisedDeviceArea:Landroid/view/View;

.field private authorisedDeviceHeadingLine:Landroid/widget/TextView;

.field private authorisedDeviceIcon:Landroid/widget/ImageView;

.field private authorisedDeviceText:Landroid/widget/TextView;

.field private buttonsInActionBar:Ljava/lang/Boolean;

.field private cellIcon:I

.field private connectNetwork:Landroid/widget/TextView;

.field private connectNetworkAuthorised:Landroid/widget/TextView;

.field private copyrightText:Landroid/widget/TextView;

.field private currentNetworkName:Ljava/lang/String;

.field private currentOrientation:I

.field private deviceName:Ljava/lang/String;

.field private doNotAskAgain:Ljava/lang/String;

.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private handler:Landroid/os/Handler;

.field private helpInStart:Landroid/widget/TextView;

.field private helpInStartAuthorised:Landroid/widget/TextView;

.field private helpInStop:Landroid/widget/TextView;

.field private helpInWaiting:Landroid/widget/TextView;

.field private interfaceName:Ljava/lang/String;

.field private ipAddress:Landroid/widget/TextView;

.field private ipAddressAuthorised:Landroid/widget/TextView;

.field public isToastAllowed:Z

.field private laptopIcon:I

.field private layoutAuthorisedDevice:Landroid/widget/LinearLayout;

.field private lighttpdButton:Landroid/widget/Button;

.field private lighttpdText:Landroid/widget/TextView;

.field private menu:Landroid/view/Menu;

.field private model:Ljava/lang/String;

.field private motionEngineContentObserver:Landroid/database/ContentObserver;

.field private networkNameText:Landroid/widget/TextView;

.field private networkNameTextAuthorised:Landroid/widget/TextView;

.field private offsetWithConnectedDevice:I

.field private offsetWithoutConnectedDevice:I

.field private popupResetNetworkActive:Z

.field private restartNetworkButton:Landroid/widget/Button;

.field private restartNetworkText:Landroid/widget/TextView;

.field private startButton:Landroid/widget/Button;

.field private stopButton:Landroid/widget/Button;

.field private stopButtonAuthorised:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/BUTTONCLICK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->BUTTONCLICK_EVENT:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RESTARTNETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->RESTARTNETWORK_EVENT:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->RESUMED_EVENT:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/LEAVENETWORK_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->LEAVENETWORK_EVENT:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/STOPNETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->STOPNETWORK_EVENT:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/NETWORKCHOSEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_CHOSEN_EVENT:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/START_NETWORK_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_ONLY_EVENT:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/NETWORK_ONLY_SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DISMISS_START_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->DISMISS_START_NETWORK_EVENT:Ljava/lang/String;

    .line 165
    sput-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    .line 166
    sput-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->easyConnectIntroHasNotBeenShown:Z

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    .line 174
    const-class v0, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".delayedEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->DELAYED_ENABLE_TIMER_ID:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->STOPPED_COLOUR:I

    .line 176
    const/16 v0, -0x100

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->WAITING_COLOUR:I

    .line 177
    const v0, -0xff0100

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->RUNNING_COLOUR:I

    .line 178
    const-string v0, "state"

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->STATE:Ljava/lang/String;

    .line 179
    iput v1, p0, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_DIALOG:I

    .line 180
    iput v2, p0, Lcom/samsung/swift/applet/AppletActivity;->STOP_NETWORK_DIALOG:I

    .line 181
    iput v3, p0, Lcom/samsung/swift/applet/AppletActivity;->CHOOSE_NETWORK_DIALOG:I

    .line 182
    iput v4, p0, Lcom/samsung/swift/applet/AppletActivity;->FORGET_DEVICE_DIALOG:I

    .line 183
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->SHUTDOWN_TIMEOUT_DIALOG:I

    .line 184
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ACCESS_DENIAL_INFO_DIALOG:I

    .line 185
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->STOP_DEVICE_INFO_DIALOG:I

    .line 186
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ABOUT_EASY_CONNECTION_DIALOG:I

    .line 187
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_ONLY_DIALOG:I

    .line 194
    iput v1, p0, Lcom/samsung/swift/applet/AppletActivity;->SCAN_MENU:I

    .line 195
    iput v2, p0, Lcom/samsung/swift/applet/AppletActivity;->START_MENU:I

    .line 196
    iput v3, p0, Lcom/samsung/swift/applet/AppletActivity;->SETTINGS_MENU:I

    .line 197
    iput v4, p0, Lcom/samsung/swift/applet/AppletActivity;->HELP_MENU:I

    .line 209
    iput-boolean v1, p0, Lcom/samsung/swift/applet/AppletActivity;->popupResetNetworkActive:Z

    .line 213
    const-string v0, "doNotAskAgain"

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->doNotAskAgain:Ljava/lang/String;

    .line 217
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;

    .line 2057
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->url_local()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->connectNetwork:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/swift/applet/AppletActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/swift/applet/AppletActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->shiftStartButton(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/swift/applet/AppletActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->shiftAuthorisedDeviceArea(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/swift/applet/AppletActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/swift/applet/AppletActivity;->laptopIcon:I

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/swift/applet/AppletActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput p1, p0, Lcom/samsung/swift/applet/AppletActivity;->laptopIcon:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/swift/applet/AppletActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/swift/applet/AppletActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/swift/applet/AppletActivity;->cellIcon:I

    return v0
.end method

.method static synthetic access$3102(Lcom/samsung/swift/applet/AppletActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput p1, p0, Lcom/samsung/swift/applet/AppletActivity;->cellIcon:I

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/samsung/swift/applet/AppletActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->doNotAskAgain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->updateMotionEngineSetting()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/swift/applet/AppletActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/swift/applet/AppletActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->setButtonText(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->delayedEnableButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    return-object v0
.end method

.method private delayedEnableButton()V
    .registers 8

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$2;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->DELAYED_ENABLE_TIMER_ID:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 797
    return-void
.end method

.method private findIdIfExist(Ljava/lang/String;)I
    .registers 3
    .parameter "id"

    .prologue
    .line 699
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "id"
    .parameter "type"

    .prologue
    .line 690
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 691
    .local v0, stringId:I
    if-eqz v0, :cond_17

    .line 695
    .end local v0           #stringId:I
    :goto_16
    return v0

    .restart local v0       #stringId:I
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private findStringIfExists(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;)I

    move-result v0

    .line 682
    .local v0, stringId:I
    if-eqz v0, :cond_f

    .line 684
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private findViewIfExists(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "id"

    .prologue
    .line 672
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 673
    .local v0, viewId:I
    if-eqz v0, :cond_1d

    .line 675
    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 677
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasButtonsInActionBar()Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 293
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->buttonsInActionBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 294
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->buttonsInActionBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 303
    :goto_b
    return v0

    .line 296
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_37

    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_37

    .line 299
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->buttonsInActionBar:Ljava/lang/Boolean;

    .line 303
    :goto_30
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->buttonsInActionBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    .line 301
    :cond_37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->buttonsInActionBar:Ljava/lang/Boolean;

    goto :goto_30
.end method

.method private hasScanButton()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 502
    const-string v1, "scan_button_stopped"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    .line 509
    :cond_9
    :goto_9
    return v0

    .line 504
    :cond_a
    const-string v1, "scan_button_running"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 506
    const-string v1, "scan_button_authorised"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 509
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/applet/AppletActivity;
    .registers 2

    .prologue
    .line 226
    const-class v0, Lcom/samsung/swift/applet/AppletActivity;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->instance:Lcom/samsung/swift/applet/AppletActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isKiesAirScanning()Z
    .registers 3

    .prologue
    .line 2024
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKiesAirScanning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->isScanningKiesAir:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->isScanningKiesAir:Z

    return v0
.end method

.method private logMemoryInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "where"

    .prologue
    .line 272
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 274
    .local v0, meminfo:Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 276
    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Memory: dalvik "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " native "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " other "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private onButtonClick(Landroid/view/MenuItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/swift/applet/AppletActivity;->onButtonClick(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 807
    return-void
.end method

.method private onButtonClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->onButtonClick(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 803
    return-void
.end method

.method private onButtonClick(Landroid/view/View;Landroid/view/MenuItem;)V
    .registers 6
    .parameter "v"
    .parameter "item"

    .prologue
    .line 810
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 814
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onButtonClick: developer build"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->RESTARTNETWORK_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 835
    :goto_28
    return-void

    .line 819
    :cond_29
    if-eqz p2, :cond_31

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_5d

    :cond_31
    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "scan_button_stopped"

    const-string v2, "id"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_5d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "scan_button_running"

    const-string v2, "id"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_5d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "scan_button_authorised"

    const-string v2, "id"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_68

    .line 822
    :cond_5d
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onButtonClick: calling scanDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->scanDevices()V

    goto :goto_28

    .line 828
    :cond_68
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 829
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    sget v1, Lcom/samsung/swift/R$string;->start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 831
    :cond_7b
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onButtonClick: assuming start button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V

    .line 834
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->BUTTONCLICK_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_28
.end method

.method private registerMotionEngineChangeListener()V
    .registers 5

    .prologue
    .line 2041
    new-instance v0, Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;

    invoke-direct {v0, p0}, Lcom/samsung/swift/applet/AppletActivity$MotionEngineContentObserver;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    iput-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->motionEngineContentObserver:Landroid/database/ContentObserver;

    .line 2043
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity;->motionEngineContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2047
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->updateMotionEngineSetting()V

    .line 2048
    return-void
.end method

.method private scanDevices()V
    .registers 7

    .prologue
    .line 1974
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->isKiesAirScanning()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1978
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: isKiesAirScanning true, returning"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :goto_14
    return-void

    .line 1982
    :cond_15
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v2, :cond_73

    aget-object v3, v0, v1

    .line 1983
    .local v3, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1985
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance()Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-result-object v4

    if-nez v4, :cond_48

    .line 1987
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: starting new PopupEasyConnectActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/samsung/swift/applet/AppletActivity;->startActivity(Landroid/content/Intent;)V

    .line 2000
    :cond_3c
    :goto_3c
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: setKiesAirScanning(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/swift/applet/AppletActivity;->setKiesAirScanning(Z)V

    goto :goto_14

    .line 1992
    :cond_48
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: PopupEasyConnectActivity already running"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance()Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1995
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: PopupEasyConnectActivity already running and showing, sending doScanServer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance()Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->doScanServer()V

    goto :goto_3c

    .line 1982
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2006
    .end local v3           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_73
    sget-object v4, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v5, "scanDevices: sending START_NETWORK_ONLY_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-static {p0}, Lcom/samsung/swift/applet/AppletActivity;->setInstance(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 2008
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_ONLY_EVENT:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private setButtonEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1066
    sget-boolean v1, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v1, :cond_26

    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1068
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->menu:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1069
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->start:I

    invoke-virtual {p0, v2}, Lcom/samsung/swift/applet/AppletActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/swift/applet/AppletActivity;->setButtonIcon(Landroid/view/MenuItem;ZZ)V

    .line 1070
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1083
    .end local v0           #item:Landroid/view/MenuItem;
    :goto_25
    return-void

    .line 1072
    :cond_26
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1074
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1076
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1077
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButtonAuthorised:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_25

    .line 1081
    :cond_3c
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_25
.end method

.method private setButtonIcon(Landroid/view/MenuItem;ZZ)V
    .registers 6
    .parameter "item"
    .parameter "enabled"
    .parameter "setToStart"

    .prologue
    .line 1048
    if-eqz p3, :cond_1c

    .line 1050
    if-eqz p2, :cond_10

    .line 1051
    const-string v0, "header_start_normal"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1062
    :goto_f
    return-void

    .line 1053
    :cond_10
    const-string v0, "header_start_disabled"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_f

    .line 1057
    :cond_1c
    if-eqz p2, :cond_2a

    .line 1058
    const-string v0, "header_stop_normal"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_f

    .line 1060
    :cond_2a
    const-string v0, "header_stop_disabled"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_f
.end method

.method private setButtonText(I)V
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 1087
    sget-boolean v3, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v3, :cond_22

    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1089
    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity;->menu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1090
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    .line 1092
    .local v0, enabled:Z
    sget v3, Lcom/samsung/swift/R$string;->start:I

    if-ne p1, v3, :cond_20

    :goto_19
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/swift/applet/AppletActivity;->setButtonIcon(Landroid/view/MenuItem;ZZ)V

    .line 1093
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1100
    .end local v0           #enabled:Z
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_1f
    return-void

    .line 1092
    .restart local v0       #enabled:Z
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_20
    const/4 v2, 0x0

    goto :goto_19

    .line 1097
    .end local v0           #enabled:Z
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_22
    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    .line 1098
    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method private static declared-synchronized setInstance(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "instance"

    .prologue
    .line 231
    const-class v0, Lcom/samsung/swift/applet/AppletActivity;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/applet/AppletActivity;->instance:Lcom/samsung/swift/applet/AppletActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 232
    monitor-exit v0

    return-void

    .line 231
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setKiesAirScanning(Z)V
    .registers 4
    .parameter "scanning"

    .prologue
    .line 2018
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKiesAirScanning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    sput-boolean p0, Lcom/samsung/swift/applet/AppletActivity;->isScanningKiesAir:Z

    .line 2020
    return-void
.end method

.method private shiftAuthorisedDeviceArea(Z)V
    .registers 6
    .parameter "hasAuthoirsiedDevice"

    .prologue
    const/4 v3, 0x0

    .line 1281
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1285
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_19

    .line 1286
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithConnectedDevice:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1290
    :goto_f
    const-string v1, "layoutHelpTextRunning"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1291
    return-void

    .line 1288
    :cond_19
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithoutConnectedDevice:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_f
.end method

.method private shiftStartButton(Z)V
    .registers 6
    .parameter "hasAuthoirsiedDevice"

    .prologue
    const/4 v3, 0x0

    .line 1267
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1271
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1c

    .line 1272
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithConnectedDevice:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1276
    :goto_16
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    return-void

    .line 1274
    :cond_1c
    iget v1, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithoutConnectedDevice:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_16
.end method

.method public static showAccessDenialInfoDialog(Ljava/lang/String;)V
    .registers 1
    .parameter "device"

    .prologue
    .line 1951
    sput-object p0, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    .line 1952
    return-void
.end method

.method private declared-synchronized showStatus(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 1387
    monitor-enter p0

    packed-switch p1, :pswitch_data_3e

    .line 1410
    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    .line 1390
    :pswitch_6
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->switchLayoutToStopped()V

    .line 1391
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->stopAnimation(Landroid/widget/ImageView;)V

    .line 1392
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->stopAnimation(Landroid/widget/ImageView;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_4

    .line 1387
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1395
    :pswitch_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->switchLayoutToRunning()V

    .line 1396
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->startAnimation(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 1399
    :pswitch_26
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1401
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->switchLayoutToAuthorised()V

    .line 1402
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->startAnimation(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 1405
    :cond_35
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->switchLayoutToRunning()V

    .line 1406
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->startAnimation(Landroid/widget/ImageView;)V
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_1a

    goto :goto_4

    .line 1387
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method private startAnimation(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "img"

    .prologue
    .line 1446
    if-eqz p1, :cond_a

    .line 1448
    new-instance v0, Lcom/samsung/swift/applet/AppletActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/samsung/swift/applet/AppletActivity$12;-><init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1455
    :cond_a
    return-void
.end method

.method private stopAnimation(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "img"

    .prologue
    .line 1459
    if-eqz p1, :cond_a

    .line 1461
    new-instance v0, Lcom/samsung/swift/applet/AppletActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/samsung/swift/applet/AppletActivity$13;-><init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1468
    :cond_a
    return-void
.end method

.method private declared-synchronized switchLayoutToAuthorised()V
    .registers 3

    .prologue
    .line 1422
    monitor-enter p0

    :try_start_1
    const-string v0, "layoutKiesairAuthorised"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    const-string v0, "layoutKiesairRunning"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    const-string v0, "layoutKiesairStopped"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1425
    monitor-exit p0

    return-void

    .line 1422
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchLayoutToRunning()V
    .registers 3

    .prologue
    .line 1429
    monitor-enter p0

    :try_start_1
    const-string v0, "layoutKiesairRunning"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    const-string v0, "layoutKiesairStopped"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "layoutKiesairAuthorised"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 1432
    :cond_27
    monitor-exit p0

    return-void

    .line 1429
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchLayoutToStopped()V
    .registers 3

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_1
    const-string v0, "layoutKiesairStopped"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    const-string v0, "layoutKiesairRunning"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "layoutKiesairAuthorised"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    :cond_27
    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_37

    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_37

    .line 1441
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->shiftStartButton(Z)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 1442
    :cond_37
    monitor-exit p0

    return-void

    .line 1436
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private threeLayoutModel()Z
    .registers 2

    .prologue
    .line 1415
    const-string v0, "layoutKiesairAuthorised"

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1416
    const/4 v0, 0x0

    .line 1417
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private unbind(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 566
    if-nez p1, :cond_4

    .line 578
    :goto_3
    return-void

    .line 568
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 571
    :cond_11
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_32

    .line 572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    move-object v1, p1

    .line 573
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2c
    move-object v1, p1

    .line 575
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 577
    .end local v0           #i:I
    :cond_32
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private unregisterMotionEngineChangeListener()V
    .registers 3

    .prologue
    .line 2052
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->motionEngineContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2055
    return-void
.end method

.method private updateMotionEngineSetting()V
    .registers 5

    .prologue
    .line 2032
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 2033
    .local v1, motionEnabled:I
    invoke-static {v1}, Lcom/samsung/swift/sensor/MotionShakeManager;->setShakingEnabled(I)V
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2037
    .end local v1           #motionEnabled:I
    :goto_d
    return-void

    .line 2034
    :catch_e
    move-exception v0

    .line 2035
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method private url_local()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1956
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->URL_LOCAL:Ljava/lang/String;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    const-string v2, "SERVER_PORT"

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/AppletActivity;->URL_LOCAL:Ljava/lang/String;

    .line 1958
    :cond_27
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->URL_LOCAL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->onButtonClick(Landroid/view/View;)V

    .line 841
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcom/samsung/swift/controller/Controller;->instance()Lcom/samsung/swift/controller/Controller;

    .line 313
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/swift/applet/AppletActivity;->isToastAllowed:Z

    .line 314
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    .line 317
    const-string v11, "use_developer_mode"

    const-string v12, "bool"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 318
    .local v10, useDeveloperModeId:I
    if-eqz v10, :cond_2b

    .line 319
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    .line 321
    :cond_2b
    sget-boolean v11, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v11, :cond_3f

    .line 323
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->registerMotionEngineChangeListener()V

    .line 324
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    .line 326
    sget v11, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_28f

    .line 327
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->requestWindowFeature(I)Z

    .line 332
    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v11

    if-eqz v11, :cond_2a9

    .line 334
    const v11, 0x103006e

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->setTheme(I)V

    .line 336
    sget v11, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v12, 0xe

    if-lt v11, v12, :cond_2a2

    .line 337
    const-string v11, "main_holo_light"

    const-string v12, "layout"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->setContentView(I)V

    .line 344
    :goto_5c
    const-string v11, "lighttpdText"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;

    .line 345
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    iput v11, p0, Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I

    .line 348
    const-string v11, "screen_layout"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 349
    .local v7, screenLayout:Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_1f7

    .line 351
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v11

    if-eqz v11, :cond_94

    .line 353
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    const-string v11, "softkey_area"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 356
    .local v3, layoutSoftKeyArea:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_94

    .line 357
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    .end local v3           #layoutSoftKeyArea:Landroid/widget/LinearLayout;
    :cond_94
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_2b0

    .line 361
    sget-object v11, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v12, "Three layout model"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_a1
    const-string v11, "layoutKiesairRunning"

    const-string v12, "id"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_173

    .line 367
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-nez v11, :cond_e1

    .line 370
    const-string v11, "offsetWithConnectedDevice"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 371
    .local v8, textviewOffsetWithDevice:Landroid/widget/TextView;
    if-eqz v8, :cond_c9

    .line 372
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithConnectedDevice:I

    .line 374
    :cond_c9
    const-string v11, "offsetWithoutConnectedDevice"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 375
    .local v9, textviewOffsetWithoutDevice:Landroid/widget/TextView;
    if-eqz v9, :cond_e1

    .line 376
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/samsung/swift/applet/AppletActivity;->offsetWithoutConnectedDevice:I

    .line 379
    .end local v8           #textviewOffsetWithDevice:Landroid/widget/TextView;
    .end local v9           #textviewOffsetWithoutDevice:Landroid/widget/TextView;
    :cond_e1
    const-string v11, "kiesairAnimatedIcon"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    .line 380
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    if-eqz v11, :cond_fe

    .line 382
    const-string v11, "kiesair_animation"

    const-string v12, "drawable"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, animationListId:I
    if-eqz v0, :cond_fe

    .line 385
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 388
    .end local v0           #animationListId:I
    :cond_fe
    const-string v11, "kiesairAnimatedIconAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    .line 389
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    if-eqz v11, :cond_11b

    .line 391
    const-string v11, "kiesair_animation"

    const-string v12, "drawable"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 392
    .restart local v0       #animationListId:I
    if-eqz v0, :cond_11b

    .line 394
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 398
    .end local v0           #animationListId:I
    :cond_11b
    const-string v11, "layoutHelpTextRunning"

    const-string v12, "id"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_173

    .line 400
    const-string v11, "connectNetwork"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->connectNetwork:Landroid/widget/TextView;

    .line 401
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_13f

    const-string v11, "connectNetworkAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->connectNetworkAuthorised:Landroid/widget/TextView;

    .line 403
    :cond_13f
    const-string v11, "enter_url_in_browser"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;

    .line 404
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_159

    const-string v11, "enter_url_in_browserAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;

    .line 406
    :cond_159
    const-string v11, "networkText"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;

    .line 407
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_173

    .line 408
    const-string v11, "networkTextAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;

    .line 412
    :cond_173
    const-string v11, "layoutHelpTextStopped"

    const-string v12, "id"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_1b5

    .line 414
    const-string v11, "helpTextInStop"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;

    .line 416
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;

    if-eqz v11, :cond_1a1

    .line 418
    const-string v11, "help_in_stop"

    invoke-static {v11}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, helpText1:Ljava/lang/String;
    if-eqz v1, :cond_1a1

    .line 421
    move-object v2, v1

    .line 422
    .local v2, helpTextCombined:Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .end local v1           #helpText1:Ljava/lang/String;
    .end local v2           #helpTextCombined:Ljava/lang/String;
    :cond_1a1
    const-string v11, "connectToNetworkText"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;

    .line 427
    const-string v11, "copyright"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->copyrightText:Landroid/widget/TextView;

    .line 430
    :cond_1b5
    const-string v11, "layoutAuthorisedDeviceInfo"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;

    .line 431
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_1f7

    .line 433
    const-string v11, "authorisedDeviceHeadingLine"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceHeadingLine:Landroid/widget/TextView;

    .line 434
    const-string v11, "authorisedDeviceArea"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceArea:Landroid/view/View;

    .line 435
    const-string v11, "authorisedDeviceText"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceText:Landroid/widget/TextView;

    .line 436
    const-string v11, "arrowicon"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceIcon:Landroid/widget/ImageView;

    .line 438
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceArea:Landroid/view/View;

    if-eqz v11, :cond_1f7

    .line 439
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceArea:Landroid/view/View;

    new-instance v12, Lcom/samsung/swift/applet/AppletActivity$1;

    invoke-direct {v12, p0}, Lcom/samsung/swift/applet/AppletActivity$1;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_1f7
    const-string v11, "restartNetworkText"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;

    .line 458
    const-string v11, "restartNetworkButton"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    .line 459
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    if-eqz v11, :cond_214

    .line 461
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_214
    sget v11, Lcom/samsung/swift/R$id;->internetAddress:I

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;

    .line 465
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_22e

    const-string v11, "internetAddressAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;

    .line 467
    :cond_22e
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z

    move-result v11

    if-eqz v11, :cond_2b9

    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v11

    if-nez v11, :cond_2b9

    .line 469
    const-string v11, "startButton"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    .line 470
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const-string v11, "stopButton"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButton:Landroid/widget/Button;

    .line 473
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    const-string v11, "stopButtonAuthorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButtonAuthorised:Landroid/widget/Button;

    .line 476
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButtonAuthorised:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasScanButton()Z

    move-result v11

    if-eqz v11, :cond_28e

    .line 480
    const-string v11, "scan_button_stopped"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 481
    .local v6, scanButtonStopped:Landroid/widget/Button;
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const-string v11, "scan_button_running"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 484
    .local v5, scanButtonRunning:Landroid/widget/Button;
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const-string v11, "scan_button_authorised"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 487
    .local v4, scanButtonAuthorised:Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    .end local v4           #scanButtonAuthorised:Landroid/widget/Button;
    .end local v5           #scanButtonRunning:Landroid/widget/Button;
    .end local v6           #scanButtonStopped:Landroid/widget/Button;
    :cond_28e
    :goto_28e
    return-void

    .line 328
    .end local v7           #screenLayout:Landroid/widget/RelativeLayout;
    :cond_28f
    sget v11, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_3f

    sget v11, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v12, 0xe

    if-ge v11, v12, :cond_3f

    .line 329
    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->requestWindowFeature(I)Z

    goto/16 :goto_3f

    .line 339
    :cond_2a2
    sget v11, Lcom/samsung/swift/R$layout;->main:I

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->setContentView(I)V

    goto/16 :goto_5c

    .line 342
    :cond_2a9
    sget v11, Lcom/samsung/swift/R$layout;->main:I

    invoke-virtual {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->setContentView(I)V

    goto/16 :goto_5c

    .line 363
    .restart local v7       #screenLayout:Landroid/widget/RelativeLayout;
    :cond_2b0
    sget-object v11, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v12, "Two layout model"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1

    .line 491
    :cond_2b9
    const-string v11, "lighttpdButton"

    invoke-direct {p0, v11}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    .line 492
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    if-eqz v11, :cond_28e

    .line 494
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v11, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_28e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 25
    .parameter "id"

    .prologue
    .line 1552
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1553
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1559
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    :goto_e
    packed-switch p1, :pswitch_data_308

    .line 1888
    const/4 v2, 0x0

    .line 1890
    .local v2, alertDialog:Landroid/app/AlertDialog;
    :goto_12
    return-object v2

    .line 1554
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_13
    sget v4, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_22

    .line 1555
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_e

    .line 1557
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_22
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_e

    .line 1562
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->enable_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1567
    move/from16 v13, p1

    .line 1568
    .local v13, dialogId:I
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v20

    .line 1569
    .local v20, networks:[Lcom/samsung/swift/service/network/NetworkInterface;
    move-object/from16 v0, v20

    array-length v4, v0

    new-array v11, v4, [Ljava/lang/CharSequence;

    .line 1570
    .local v11, choices:[Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    array-length v4, v0

    if-eqz v4, :cond_83

    .line 1571
    const/4 v14, 0x0

    .line 1572
    .local v14, i:I
    move-object/from16 v8, v20

    .local v8, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    move v15, v14

    .end local v14           #i:I
    .local v15, i:I
    :goto_50
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_64

    aget-object v21, v8, v16

    .line 1574
    .local v21, ni:Lcom/samsung/swift/service/network/NetworkInterface;
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v15

    .line 1572
    add-int/lit8 v16, v16, 0x1

    move v15, v14

    .end local v14           #i:I
    .restart local v15       #i:I
    goto :goto_50

    .line 1578
    .end local v21           #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_64
    const/4 v14, 0x0

    .end local v15           #i:I
    .restart local v14       #i:I
    :goto_65
    array-length v4, v11

    if-ge v14, v4, :cond_83

    .line 1580
    aget-object v4, v11, v14

    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getWiFiDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1582
    const/4 v4, 0x0

    aget-object v4, v11, v4

    aput-object v4, v11, v14

    .line 1583
    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getWiFiDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    .line 1578
    :cond_80
    add-int/lit8 v14, v14, 0x1

    goto :goto_65

    .line 1588
    .end local v8           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v14           #i:I
    .end local v16           #i$:I
    .end local v19           #len$:I
    :cond_83
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e1

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->enable_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1592
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/swift/R$string;->enable_network_to_use:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v22, 0x0

    aget-object v22, v11, v22

    aput-object v22, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1595
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v11}, Lcom/samsung/swift/applet/AppletActivity$15;-><init>(Lcom/samsung/swift/applet/AppletActivity;I[Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1648
    :goto_cd
    sget-boolean v4, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v4, :cond_ec

    .line 1650
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/samsung/swift/applet/AppletActivity$17;-><init>(Lcom/samsung/swift/applet/AppletActivity;I)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1723
    :cond_db
    :goto_db
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1724
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1621
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    :cond_e1
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v11}, Lcom/samsung/swift/applet/AppletActivity$16;-><init>(Lcom/samsung/swift/applet/AppletActivity;I[Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v11, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_cd

    .line 1671
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->cancel_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$18;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1691
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/swift/applet/AppletActivity$19;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1709
    sget-boolean v4, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v4, :cond_db

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->skip_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$20;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_db

    .line 1726
    .end local v11           #choices:[Ljava/lang/CharSequence;
    .end local v13           #dialogId:I
    .end local v20           #networks:[Lcom/samsung/swift/service/network/NetworkInterface;
    :pswitch_123
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->stop_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1727
    const-string v4, ""

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->no_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$21;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1737
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->yes_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$22;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1746
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1747
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1749
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    :pswitch_163
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->enable_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1751
    const-string v4, "must_choose_a_network"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1752
    .local v12, choose_a_network_message:Ljava/lang/String;
    if-eqz v12, :cond_17b

    .line 1754
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1757
    :cond_17b
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$23;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1766
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/swift/applet/AppletActivity$24;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1774
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1775
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1777
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v12           #choose_a_network_message:Ljava/lang/String;
    :pswitch_1a3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1778
    const-string v4, ""

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1779
    const v4, 0x108009b

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1781
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/swift/R$string;->cancel_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/swift/applet/AppletActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/swift/applet/AppletActivity$25;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->stop_access:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$26;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1806
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1807
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1809
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    :pswitch_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->appName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1810
    const-string v4, "inactivity_timeout"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1812
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$27;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1821
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1822
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1825
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    :pswitch_21c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->security_manager_challange_deny:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1826
    const-string v4, ""

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1828
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/swift/applet/AppletActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/swift/applet/AppletActivity$28;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1835
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1836
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_12

    .line 1840
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    :pswitch_24c
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/applet/AppletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 1842
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v4

    if-eqz v4, :cond_2df

    .line 1844
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1845
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    const-string v4, "dialog_shake_holo_light"

    const-string v5, "layout"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1857
    .local v3, view:Landroid/view/View;
    :goto_279
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1859
    sget v4, Lcom/samsung/swift/R$id;->animation_motion:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1860
    .local v17, image:Landroid/widget/ImageView;
    sget v4, Lcom/samsung/swift/R$drawable;->kiesair_motion:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1861
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$29;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/samsung/swift/applet/AppletActivity$29;-><init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1868
    sget v4, Lcom/samsung/swift/R$id;->do_not_ask:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 1869
    .local v10, checkBox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/swift/applet/AppletActivity;->doNotAskAgain:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1871
    new-instance v4, Lcom/samsung/swift/applet/AppletActivity$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/samsung/swift/applet/AppletActivity$30;-><init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1878
    sget v4, Lcom/samsung/swift/R$string;->about_easy_connection:I

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1879
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1880
    const/4 v4, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/swift/applet/AppletActivity$31;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/swift/applet/AppletActivity$31;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_12

    .line 1850
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v3           #view:Landroid/view/View;
    .end local v10           #checkBox:Landroid/widget/CheckBox;
    .end local v17           #image:Landroid/widget/ImageView;
    :cond_2df
    sget v4, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2fc

    .line 1851
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1854
    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    :goto_2f1
    sget v4, Lcom/samsung/swift/R$layout;->dialog_shake:I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto/16 :goto_279

    .line 1853
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v3           #view:Landroid/view/View;
    :cond_2fc
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .restart local v2       #alertDialog:Landroid/app/AlertDialog;
    goto :goto_2f1

    .line 1559
    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_123
        :pswitch_163
        :pswitch_1a3
        :pswitch_1e8
        :pswitch_21c
        :pswitch_21c
        :pswitch_24c
        :pswitch_2a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 706
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_aa

    .line 708
    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_3f

    .line 710
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasScanButton()Z

    move-result v0

    if-nez v0, :cond_21

    .line 711
    sget v0, Lcom/samsung/swift/R$string;->scan:I

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 713
    :cond_21
    sget v0, Lcom/samsung/swift/R$string;->settings:I

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 715
    sget v0, Lcom/samsung/swift/R$string;->help:I

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 743
    :goto_39
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity;->menu:Landroid/view/Menu;

    .line 750
    invoke-direct {p0, v3}, Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V

    .line 752
    return v5

    .line 720
    :cond_3f
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasButtonsInActionBar()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 722
    sget v0, Lcom/samsung/swift/R$string;->scan:I

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "header_scan_normal"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 725
    sget v0, Lcom/samsung/swift/R$string;->start:I

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "header_start_normal"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 732
    :cond_6f
    :goto_6f
    sget v0, Lcom/samsung/swift/R$string;->settings:I

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "optionmenu_configure"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 734
    sget v0, Lcom/samsung/swift/R$string;->help:I

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "tw_action_bar_icon_help_holo_dark"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_39

    .line 729
    :cond_92
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->hasScanButton()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 730
    sget v0, Lcom/samsung/swift/R$string;->scan:I

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "tw_action_bar_icon_search_holo_dark"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_6f

    .line 740
    :cond_aa
    sget v0, Lcom/samsung/swift/R$string;->connection_settings:I

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$drawable;->ic_menu_preferences:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_39
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 516
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 520
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->animatedImgAuthorised:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStart:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStartAuthorised:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameTextAuthorised:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInStop:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->helpInWaiting:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 528
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->connectNetwork:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->connectNetworkAuthorised:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceHeadingLine:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->restartNetworkButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddressAuthorised:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->startButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->stopButtonAuthorised:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->lighttpdButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->copyrightText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->unbind(Landroid/view/View;)V

    .line 545
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_8f

    .line 547
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->unregisterMotionEngineChangeListener()V

    .line 550
    :cond_8f
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_9a

    .line 552
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 553
    iput-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->handler:Landroid/os/Handler;

    .line 555
    :cond_9a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1537
    const/4 v1, 0x4

    if-ne p1, v1, :cond_f

    .line 1539
    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v2, "Moving applet to back of activity stack instead of destroying it"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->moveTaskToBack(Z)Z

    .line 1543
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/samsung/swift/applet/AppletActivity;->isToastAllowed:Z

    .line 768
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 782
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_e
    return v0

    .line 772
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/AppletActivity;->onButtonClick(Landroid/view/MenuItem;)V

    goto :goto_e

    .line 776
    :pswitch_13
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 779
    :pswitch_1e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/swift/applet/HelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/AppletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 768
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 661
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->isShakingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 663
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->stopListening()V

    .line 666
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 667
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 11
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1896
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    .line 1898
    .local v0, ad:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_b8

    .line 1925
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 1901
    :pswitch_9
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/swift/R$string;->switch_off_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/swift/applet/AppletActivity;->interfaceName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1904
    :pswitch_29
    const-string v3, "trustNetwork"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1905
    .local v2, stop_device:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 1907
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1908
    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1912
    .end local v2           #stop_device:Ljava/lang/String;
    :pswitch_44
    sget-object v3, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_5f

    .line 1913
    const-string v3, "connection_denied_info_popup"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1916
    :goto_5b
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    goto :goto_8

    .line 1915
    :cond_5f
    sget-object v3, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v4, "accessDenialInfoDialogDeviceName was null in onPrepareDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 1919
    :pswitch_67
    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, message:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connection_denied_info_popup"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1922
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1898
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_29
        :pswitch_8
        :pswitch_44
        :pswitch_67
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/applet/AppletActivity;->isToastAllowed:Z

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 628
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v3, "onRestart()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v2, "screen_layout"

    invoke-direct {p0, v2}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 631
    .local v1, screenLayout:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_15

    .line 633
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 636
    :cond_15
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 638
    const-string v2, "softkey_area"

    invoke-direct {p0, v2}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 639
    .local v0, layoutSoftKeyArea:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_28

    .line 640
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    .end local v0           #layoutSoftKeyArea:Landroid/widget/LinearLayout;
    :cond_28
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 644
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 597
    const-string v2, "deviceName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    .line 598
    const-string v2, "currentNetworkName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    .line 599
    const-string v2, "interfaceName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/swift/applet/AppletActivity;->interfaceName:Ljava/lang/String;

    .line 600
    const-string v2, "isScanningKiesAir"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->isScanningKiesAir:Z

    .line 605
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 623
    :cond_2a
    :goto_2a
    return-void

    .line 607
    :cond_2b
    new-instance v1, Lcom/samsung/swift/service/webserver/WebServerJNI;

    invoke-direct {v1}, Lcom/samsung/swift/service/webserver/WebServerJNI;-><init>()V

    .line 609
    .local v1, webServer:Lcom/samsung/swift/service/webserver/WebServer;
    invoke-interface {v1}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 611
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->setRunning()V

    .line 612
    const-string v2, "ipAddress"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/swift/applet/AppletActivity;->updateUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 616
    :cond_45
    const-string v2, "softkey_area"

    invoke-direct {p0, v2}, Lcom/samsung/swift/applet/AppletActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 617
    .local v0, layoutSoftKeyArea:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_52

    .line 618
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    :cond_52
    sget-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v2, :cond_2a

    .line 621
    invoke-direct {p0, v3}, Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V

    goto :goto_2a
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 649
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->isShakingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 651
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->startListening()V

    .line 652
    invoke-static {p0}, Lcom/samsung/swift/sensor/MotionShakeManager;->setOnShakeListener(Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;)V

    .line 655
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 656
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 585
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "currentNetworkName"

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->currentNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "interfaceName"

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->interfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v1, "ipAddress"

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->ipAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "isScanningKiesAir"

    sget-boolean v1, Lcom/samsung/swift/applet/AppletActivity;->isScanningKiesAir:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    return-void
.end method

.method public onShake()V
    .registers 1

    .prologue
    .line 2013
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->scanDevices()V

    .line 2014
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 237
    if-eqz p1, :cond_40

    .line 239
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/samsung/swift/install/InstallActivity;->isSamsungHandset:Z

    if-eqz v0, :cond_39

    .line 242
    :cond_b
    invoke-static {p0}, Lcom/samsung/swift/applet/AppletActivity;->setInstance(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    :goto_18
    iput-boolean v2, p0, Lcom/samsung/swift/applet/AppletActivity;->popupResetNetworkActive:Z

    .line 252
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->accessDenialInfoDialogDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 254
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 257
    :cond_22
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_35

    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->easyConnectIntroHasNotBeenShown:Z

    if-eqz v0, :cond_35

    .line 259
    sput-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->easyConnectIntroHasNotBeenShown:Z

    .line 260
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->showEasyConnectIntro()V

    .line 267
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 268
    return-void

    .line 248
    :cond_39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/swift/install/InstallActivity;->isSamsungHandset:Z

    .line 249
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->finish()V

    goto :goto_18

    .line 265
    :cond_40
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->setInstance(Lcom/samsung/swift/applet/AppletActivity;)V

    goto :goto_35
.end method

.method public setInitializing()V
    .registers 3

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$7;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method public setRestartServer()V
    .registers 3

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$5;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method public setRunning()V
    .registers 3

    .prologue
    .line 845
    sget-object v0, Lcom/samsung/swift/applet/AppletActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "setRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$3;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method public setStopped(Z)V
    .registers 4
    .parameter "buttonEnabled"

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->DELAYED_ENABLE_TIMER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 874
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/swift/applet/AppletActivity$4;-><init>(Lcom/samsung/swift/applet/AppletActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method public setWaitingNetwork(Z)V
    .registers 4
    .parameter "isHotspot"

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/swift/applet/AppletActivity$6;-><init>(Lcom/samsung/swift/applet/AppletActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    return-void
.end method

.method public setWaitingServer()V
    .registers 3

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$8;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method

.method public setWaitingServerStop()V
    .registers 3

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$9;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    return-void
.end method

.method public showEasyConnectIntro()V
    .registers 4

    .prologue
    .line 1963
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->isShakingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1965
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity;->doNotAskAgain:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1967
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1970
    :cond_17
    return-void
.end method

.method public showRestartNetwork(ZLjava/lang/String;Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 8
    .parameter "show"
    .parameter "name"
    .parameter "ni"

    .prologue
    const/4 v3, 0x1

    .line 1475
    if-eqz p1, :cond_3b

    .line 1477
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_3b

    .line 1480
    sput-object p2, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->networkDisplayName:Ljava/lang/String;

    .line 1481
    instance-of v0, p3, Lcom/samsung/swift/service/network/WifiNetworkInterface;

    if-eqz v0, :cond_4c

    .line 1483
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->IDS_KA_HEADER_RESTART_WI_FI:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->restartNetworkMsg:Ljava/lang/String;

    .line 1503
    :goto_21
    iget-boolean v0, p0, Lcom/samsung/swift/applet/AppletActivity;->popupResetNetworkActive:Z

    if-nez v0, :cond_3b

    .line 1504
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/swift/applet/AppletActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 1505
    iput-boolean v3, p0, Lcom/samsung/swift/applet/AppletActivity;->popupResetNetworkActive:Z

    .line 1511
    :cond_3b
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_4b

    .line 1513
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/swift/applet/AppletActivity$14;-><init>(Lcom/samsung/swift/applet/AppletActivity;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1531
    :cond_4b
    return-void

    .line 1485
    :cond_4c
    invoke-virtual {p3}, Lcom/samsung/swift/service/network/NetworkInterface;->isHotspot()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1487
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;

    const-string v1, "I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;

    const-string v1, "M110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->model:Ljava/lang/String;

    const-string v1, "M220L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1489
    :cond_70
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->IDS_KA_HEADER_RESTART_MOBILE_AP:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->restartNetworkMsg:Ljava/lang/String;

    goto :goto_21

    .line 1493
    :cond_85
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->IDS_KA_HEADER_RESTART_WIFI_HOTSPOT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->restartNetworkMsg:Ljava/lang/String;

    goto :goto_21

    .line 1498
    :cond_9a
    invoke-virtual {p0}, Lcom/samsung/swift/applet/AppletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->restart_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->restartNetworkMsg:Ljava/lang/String;

    goto/16 :goto_21
.end method

.method public showShutDownTimeoutDialog()V
    .registers 2

    .prologue
    .line 1946
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1947
    return-void
.end method

.method public showStartNetworkDialog()V
    .registers 2

    .prologue
    .line 1936
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1937
    return-void
.end method

.method public showStartNetworkOnlyDialog()V
    .registers 2

    .prologue
    .line 1941
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1942
    return-void
.end method

.method public showStopNetworkDialog(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity;->interfaceName:Ljava/lang/String;

    .line 1931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1932
    return-void
.end method

.method public updateAuthorisedDevice()V
    .registers 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity;->networkNameText:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 1361
    :cond_8
    :goto_8
    return-void

    .line 1297
    :cond_9
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1299
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$11;-><init>(Lcom/samsung/swift/applet/AppletActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public updateUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "networkName"

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/swift/applet/AppletActivity$10;-><init>(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1263
    return-void
.end method
