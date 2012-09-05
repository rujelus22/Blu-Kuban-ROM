.class public Lcom/samsung/swift/security/SecurityPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "SecurityPreferencesActivity.java"


# static fields
.field public static final EXTRAS_DEVICE_NAME:Ljava/lang/String; = "DeviceName"

.field public static final FOCUS_EVENT:Ljava/lang/String; = null

.field private static final LICENCE_DIALOG:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final REFRESH:I = 0x1

.field private static final RESET_SETTINGS:I = 0x0

.field public static final SETTING_ID_ALLOWED:Ljava/lang/String; = "0"

.field public static final SETTING_ID_ASK:Ljava/lang/String; = "2"

.field public static final SETTING_ID_BLOCKED:Ljava/lang/String; = "1"

.field public static final TIMEOUT_CHANGE_EVENT:Ljava/lang/String; = null

.field public static final accessRequest:Ljava/lang/String; = "accessRequest"

.field private static final connectionKey:Ljava/lang/String; = "connection_"

.field public static final contentLock:Ljava/lang/String; = "contentlock"

.field public static final deviceName:Ljava/lang/String; = "devicenamepref"

.field private static final discoverability:Ljava/lang/String; = "discoverability"

.field public static final discoverable:Ljava/lang/String; = "discoverable"

.field public static final doNotAskAgain:Ljava/lang/String; = "doNotAskAgain"

.field private static instance:Lcom/samsung/swift/security/SecurityPreferencesActivity; = null

.field private static final listeddevices:Ljava/lang/String; = "listeddevices"

.field private static final listednetworks:Ljava/lang/String; = "listednetworks"

.field private static final networkKey:Ljava/lang/String; = "network_"

.field public static final openSourceLicenses:Ljava/lang/String; = "openSourceLicenses"

.field public static final timeoutShutDownKey:Ljava/lang/String; = "timeoutShutDown"

.field private static final timeoutShutDownList:Ljava/lang/String; = "timeoutShutDownList"

.field public static useDeveloperMode:Z = false

.field public static final version:Ljava/lang/String; = "version"


# instance fields
.field private accessRequestDefault:Ljava/lang/Boolean;

.field private checkbox:Landroid/preference/CheckBoxPreference;

.field private checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

.field private contentLockPref:Lcom/samsung/swift/security/ContentLockListPreference;

.field private discoveryDefault:Ljava/lang/Boolean;

.field private editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

.field private listedDevs:Landroid/preference/PreferenceCategory;

.field private listedNets:Landroid/preference/PreferenceCategory;

.field private localConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/swift/security/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private localNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/swift/security/Network;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private resetSettingId:I

.field private serverShutdownTimeoutDefault:Ljava/lang/String;

.field private timeout:Landroid/preference/ListPreference;

.field private useDeveloperModeId:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->FOCUS_EVENT:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->TIMEOUT_CHANGE_EVENT:Ljava/lang/String;

    .line 131
    const-class v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->versionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildConnectionLongPressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildNetworkLongPressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/swift/security/SecurityPreferencesActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setAcessRequestAction(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/swift/security/SecurityPreferencesActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setCheckboxAction(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Lcom/samsung/swift/security/DeviceNamePreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildEditNameDialog(Ljava/lang/String;)V

    return-void
.end method

.method private buildConnectionLongPressDialog(Ljava/lang/String;)V
    .registers 12
    .parameter "key"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 812
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 814
    .local v7, longClickPopUp:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 819
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 822
    .local v6, input:Landroid/widget/ListView;
    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "row"

    aput-object v1, v4, v3

    .line 823
    .local v4, from:[Ljava/lang/String;
    new-array v5, v9, [I

    sget v1, Lcom/samsung/swift/R$id;->item1:I

    aput v1, v5, v3

    .line 826
    .local v5, to:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v2, fillMaps:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "row"

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/samsung/swift/R$string;->security_manager_edit_box:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v8, Ljava/util/HashMap;

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 831
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "row"

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/samsung/swift/R$string;->security_manager_change_remove:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget v3, Lcom/samsung/swift/R$layout;->dialog_list_item:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 837
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 840
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    new-instance v3, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;

    invoke-direct {v3, p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 857
    return-void
.end method

.method private buildEditNameDialog(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 782
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    .local v2, longClickPopUp:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/swift/R$string;->security_manager_edit_box:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 787
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 788
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 789
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 791
    iget-object v3, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Connection;

    .line 792
    .local v0, connection:Lcom/samsung/swift/security/Connection;
    invoke-interface {v0}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 794
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/swift/R$string;->ok_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 806
    return-void
.end method

.method private buildNetworkLongPressDialog(Ljava/lang/String;)V
    .registers 12
    .parameter "key"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 861
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 863
    .local v7, longClickPopUp:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 868
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 871
    .local v6, input:Landroid/widget/ListView;
    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "row"

    aput-object v1, v4, v3

    .line 872
    .local v4, from:[Ljava/lang/String;
    new-array v5, v9, [I

    sget v1, Lcom/samsung/swift/R$id;->item1:I

    aput v1, v5, v3

    .line 875
    .local v5, to:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v2, fillMaps:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 877
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "row"

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/samsung/swift/R$string;->security_manager_change_remove:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget v3, Lcom/samsung/swift/R$layout;->dialog_list_item:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 883
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 886
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    new-instance v3, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;

    invoke-direct {v3, p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 899
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 900
    return-void
.end method

.method private findIdIfExist(Ljava/lang/String;)I
    .registers 3
    .parameter "id"

    .prologue
    .line 452
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "id"
    .parameter "type"

    .prologue
    .line 436
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 438
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_d

    .line 440
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 443
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, stringId:I
    if-eqz v1, :cond_20

    .line 448
    .end local v1           #stringId:I
    :goto_1f
    return v1

    .restart local v1       #stringId:I
    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private findStringIfExists(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;)I

    move-result v0

    .line 427
    .local v0, stringId:I
    if-eqz v0, :cond_f

    .line 429
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getConnectionTitle(Lcom/samsung/swift/security/Connection;)Ljava/lang/String;
    .registers 7
    .parameter "cnx"

    .prologue
    .line 558
    invoke-interface {p1}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 561
    :cond_c
    invoke-interface {p1}, Lcom/samsung/swift/security/Connection;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$string;->security_manager_network_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, title:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/samsung/swift/security/Connection;->getNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/security/Network;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/security/SecurityPreferencesActivity;
    .registers 2

    .prologue
    .line 181
    const-class v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->instance:Lcom/samsung/swift/security/SecurityPreferencesActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private resetSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 924
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 926
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 927
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setAcessRequestAction(Z)V

    .line 930
    :cond_23
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_45

    .line 932
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->discoveryDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 933
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->discoveryDefault:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setCheckboxAction(Z)V

    .line 936
    :cond_45
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devicenamepref"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "devicenamepref"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/security/DeviceNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->serverShutdownTimeoutDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 941
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->serverShutdownTimeoutDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 942
    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    sget v1, Lcom/samsung/swift/R$string;->serverShutdownTimeoutDefaultIndex:I

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 943
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timeoutShutDown"

    iget-object v3, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->serverShutdownTimeoutDefault:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 944
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/swift/security/SecurityPreferencesActivity;->TIMEOUT_CHANGE_EVENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 947
    :cond_b0
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettingsContentLock()V

    .line 949
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "doNotAskAgain"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 952
    const-string v1, "reset_settings_toast"

    invoke-direct {p0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, resetSettingsToast:Ljava/lang/String;
    if-eqz v0, :cond_e6

    .line 955
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_e1

    .line 957
    sget-object v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    const-string v2, "SecurityPreferencesActivity : if(mToast == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->mToast:Landroid/widget/Toast;

    .line 961
    :cond_e1
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 963
    :cond_e6
    return-void
.end method

.method private resetSettingsContentLock()V
    .registers 6

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$array;->portlet_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, portletValues:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 971
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 973
    :cond_27
    return-void
.end method

.method private setAcessRequestAction(Z)V
    .registers 11
    .parameter "checked"

    .prologue
    .line 456
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/security/SecurityManager;->getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v2

    .line 457
    .local v2, connections:[Lcom/samsung/swift/security/Connection;
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/security/SecurityManager;->getNetworks()[Lcom/samsung/swift/security/Network;

    move-result-object v5

    .line 459
    .local v5, networks:[Lcom/samsung/swift/security/Network;
    sget-object v6, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAcessRequestAction() : Number of connections = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v6, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAcessRequestAction() : checked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    array-length v6, v2

    if-eqz v6, :cond_a8

    .line 464
    move-object v0, v2

    .local v0, arr$:[Lcom/samsung/swift/security/Connection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_47
    if-ge v3, v4, :cond_a8

    aget-object v1, v0, v3

    .line 466
    .local v1, c:Lcom/samsung/swift/security/Connection;
    if-nez p1, :cond_a6

    const/4 v6, 0x1

    :goto_4e
    invoke-interface {v1, v6}, Lcom/samsung/swift/security/Connection;->setConnectionProfile(Z)V

    .line 467
    sget-object v6, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "************** Network Blacklist = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->getNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/swift/security/Network;->isBlackListed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v6, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "************** Network WhiteList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->getNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/swift/security/Network;->isWhiteListed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Connection;)V

    .line 470
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v6

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->getNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Network;)V

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 466
    :cond_a6
    const/4 v6, 0x0

    goto :goto_4e

    .line 520
    .end local v0           #arr$:[Lcom/samsung/swift/security/Connection;
    .end local v1           #c:Lcom/samsung/swift/security/Connection;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a8
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "accessRequest"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    return-void
.end method

.method private setCheckboxAction(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 525
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 527
    new-instance v0, Lcom/samsung/swift/service/webserver/WebServerJNI;

    invoke-direct {v0}, Lcom/samsung/swift/service/webserver/WebServerJNI;-><init>()V

    .line 529
    .local v0, webServer:Lcom/samsung/swift/service/webserver/WebServer;
    invoke-interface {v0}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 530
    if-eqz p1, :cond_2c

    .line 531
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/discovery/Discovery;->startService()V

    .line 537
    .end local v0           #webServer:Lcom/samsung/swift/service/webserver/WebServer;
    :cond_1a
    :goto_1a
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "discoverable"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void

    .line 533
    .restart local v0       #webServer:Lcom/samsung/swift/service/webserver/WebServer;
    :cond_2c
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/discovery/Discovery;->stopService()V

    goto :goto_1a
.end method

.method private setCustomPreferenceLayout(Ljava/lang/Object;)V
    .registers 5
    .parameter "pref"

    .prologue
    .line 397
    sget-boolean v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    if-nez v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_b

    .line 409
    :cond_a
    :goto_a
    return-void

    .line 400
    :cond_b
    instance-of v1, p1, Landroid/preference/Preference;

    if-eqz v1, :cond_a

    move-object v0, p1

    .line 402
    check-cast v0, Landroid/preference/Preference;

    .line 404
    .local v0, preference:Landroid/preference/Preference;
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 405
    const-string v1, "preference_more_holo_light"

    const-string v2, "layout"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_a

    .line 407
    :cond_24
    const-string v1, "preference_more"

    const-string v2, "layout"

    invoke-direct {p0, v1, v2}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_a
.end method

.method private static declared-synchronized setInstance(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 3
    .parameter "instance"

    .prologue
    .line 186
    const-class v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->instance:Lcom/samsung/swift/security/SecurityPreferencesActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 187
    monitor-exit v0

    return-void

    .line 186
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showSettings()V
    .registers 34

    .prologue
    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    if-nez v29, :cond_11

    .line 778
    :cond_10
    return-void

    .line 571
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 574
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/SecurityManager;->getConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v4

    .line 575
    .local v4, connections:[Lcom/samsung/swift/security/Connection;
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/SecurityManager;->getNetworks()[Lcom/samsung/swift/security/Network;

    move-result-object v18

    .line 580
    .local v18, networks:[Lcom/samsung/swift/security/Network;
    const/16 v29, 0x0

    array-length v0, v4

    move/from16 v30, v0

    new-instance v31, Lcom/samsung/swift/security/SecurityPreferencesActivity$9;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$9;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v4, v0, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 590
    const/16 v29, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    new-instance v31, Lcom/samsung/swift/security/SecurityPreferencesActivity$10;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$10;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 600
    new-instance v29, Ljava/util/HashMap;

    array-length v0, v4

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;

    .line 601
    new-instance v29, Ljava/util/HashMap;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;

    .line 603
    new-instance v29, Ljava/util/Date;

    invoke-direct/range {v29 .. v29}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/Date;->getTime()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    div-long v19, v29, v31

    .line 606
    .local v19, now:J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_91
    array-length v0, v4

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_3f5

    .line 608
    new-instance v7, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 609
    .local v7, dev:Landroid/preference/ListPreference;
    aget-object v29, v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getConnectionTitle(Lcom/samsung/swift/security/Connection;)Ljava/lang/String;

    move-result-object v16

    .line 610
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "connection_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 612
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 613
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 614
    sget v29, Lcom/samsung/swift/R$array;->security_settings_connection:I

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 615
    sget v29, Lcom/samsung/swift/R$array;->security_settings_values_connection:I

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 616
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 617
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 619
    aget-object v29, v4, v10

    invoke-interface/range {v29 .. v29}, Lcom/samsung/swift/security/Connection;->getExpirationTimestamp()J

    move-result-wide v29

    cmp-long v29, v29, v19

    if-gez v29, :cond_1cf

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_expired:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 639
    :goto_109
    aget-object v29, v4, v10

    invoke-interface/range {v29 .. v29}, Lcom/samsung/swift/security/Connection;->getLastAccessTime()J

    move-result-wide v29

    sub-long v23, v19, v29

    .line 641
    .local v23, timeDiff:J
    const-wide/16 v29, 0x3c

    rem-long v21, v23, v29

    .line 642
    .local v21, secs:J
    const-wide/16 v29, 0x3c

    div-long v29, v23, v29

    const-wide/16 v31, 0x3c

    rem-long v12, v29, v31

    .line 643
    .local v12, mins:J
    const-wide/16 v29, 0xe10

    div-long v29, v23, v29

    const-wide/16 v31, 0x18

    rem-long v8, v29, v31

    .line 644
    .local v8, hours:J
    const-wide/32 v29, 0x15180

    div-long v29, v23, v29

    const-wide/16 v31, 0x7

    rem-long v5, v29, v31

    .line 645
    .local v5, days:J
    const-wide/32 v29, 0x93a80

    div-long v25, v23, v29

    .line 646
    .local v25, weeks:J
    const-wide/32 v29, 0x24ea00

    div-long v14, v23, v29

    .line 647
    .local v14, months:J
    const-wide/32 v29, 0x1dfe200

    div-long v27, v23, v29

    .line 648
    .local v27, years:J
    const-string v11, ""

    .line 649
    .local v11, lastActivity:Ljava/lang/String;
    const-wide/16 v29, 0x0

    cmp-long v29, v27, v29

    if-lez v29, :cond_233

    .line 650
    const-wide/16 v29, 0x1

    cmp-long v29, v27, v29

    if-lez v29, :cond_213

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->years_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 678
    :goto_169
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_1a3

    .line 679
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v31, Lcom/samsung/swift/R$string;->last_activity:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v11, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    :cond_1a3
    new-instance v29, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    aget-object v31, v4, v10

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 606
    .end local v5           #days:J
    .end local v8           #hours:J
    .end local v11           #lastActivity:Ljava/lang/String;
    .end local v12           #mins:J
    .end local v14           #months:J
    .end local v21           #secs:J
    .end local v23           #timeDiff:J
    .end local v25           #weeks:J
    .end local v27           #years:J
    :cond_1cb
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_91

    .line 623
    :cond_1cf
    aget-object v29, v4, v10

    invoke-interface/range {v29 .. v29}, Lcom/samsung/swift/security/Connection;->isBlackListed()Z

    move-result v29

    if-eqz v29, :cond_1f3

    .line 625
    const-string v29, "1"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_blocked_connection:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_109

    .line 628
    :cond_1f3
    aget-object v29, v4, v10

    invoke-interface/range {v29 .. v29}, Lcom/samsung/swift/security/Connection;->isWhiteListed()Z

    move-result v29

    if-eqz v29, :cond_1cb

    .line 630
    const-string v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_allowed_connection:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_109

    .line 651
    .restart local v5       #days:J
    .restart local v8       #hours:J
    .restart local v11       #lastActivity:Ljava/lang/String;
    .restart local v12       #mins:J
    .restart local v14       #months:J
    .restart local v21       #secs:J
    .restart local v23       #timeDiff:J
    .restart local v25       #weeks:J
    .restart local v27       #years:J
    :cond_213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->year_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 653
    :cond_233
    const-wide/16 v29, 0x0

    cmp-long v29, v14, v29

    if-lez v29, :cond_27f

    .line 654
    const-wide/16 v29, 0x1

    cmp-long v29, v14, v29

    if-lez v29, :cond_25f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->months_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 655
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->month_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 657
    :cond_27f
    const-wide/16 v29, 0x0

    cmp-long v29, v25, v29

    if-lez v29, :cond_2cb

    .line 658
    const-wide/16 v29, 0x1

    cmp-long v29, v25, v29

    if-lez v29, :cond_2ab

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->weeks_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 659
    :cond_2ab
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->week_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 661
    :cond_2cb
    const-wide/16 v29, 0x0

    cmp-long v29, v5, v29

    if-lez v29, :cond_317

    .line 662
    const-wide/16 v29, 0x1

    cmp-long v29, v5, v29

    if-lez v29, :cond_2f7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->days_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 663
    :cond_2f7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->day_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 665
    :cond_317
    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-lez v29, :cond_363

    .line 666
    const-wide/16 v29, 0x1

    cmp-long v29, v8, v29

    if-lez v29, :cond_343

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->hours_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 667
    :cond_343
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->hour_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 669
    :cond_363
    const-wide/16 v29, 0x0

    cmp-long v29, v12, v29

    if-lez v29, :cond_3af

    .line 670
    const-wide/16 v29, 0x1

    cmp-long v29, v12, v29

    if-lez v29, :cond_38f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->minutes_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 671
    :cond_38f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->minute_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 674
    :cond_3af
    const-wide/16 v29, 0x1

    cmp-long v29, v21, v29

    if-nez v29, :cond_3d5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->second_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 675
    :cond_3d5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->seconds_ago:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_169

    .line 712
    .end local v5           #days:J
    .end local v7           #dev:Landroid/preference/ListPreference;
    .end local v8           #hours:J
    .end local v11           #lastActivity:Ljava/lang/String;
    .end local v12           #mins:J
    .end local v14           #months:J
    .end local v16           #name:Ljava/lang/String;
    .end local v21           #secs:J
    .end local v23           #timeDiff:J
    .end local v25           #weeks:J
    .end local v27           #years:J
    :cond_3f5
    const/4 v10, 0x0

    :goto_3f6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_10

    .line 714
    new-instance v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 715
    .local v17, network:Landroid/preference/ListPreference;
    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/Network;->getSsid()Ljava/lang/String;

    move-result-object v16

    .line 716
    .restart local v16       #name:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 717
    sget v29, Lcom/samsung/swift/R$array;->security_settings_network:I

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 718
    sget v29, Lcom/samsung/swift/R$array;->security_settings_values_network:I

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 719
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 720
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "network_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 721
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 723
    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/Network;->getExpirationTimestamp()J

    move-result-wide v29

    cmp-long v29, v29, v19

    if-gez v29, :cond_49e

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_expired:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 743
    :goto_46e
    new-instance v29, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    aget-object v31, v18, v10

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 712
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3f6

    .line 727
    :cond_49e
    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/Network;->isBlackListed()Z

    move-result v29

    if-eqz v29, :cond_4c1

    .line 729
    const-string v29, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_blocked_network:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_46e

    .line 732
    :cond_4c1
    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/swift/security/Network;->isWhiteListed()Z

    move-result v29

    if-eqz v29, :cond_4e4

    .line 734
    const-string v29, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_allowed_network:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_46e

    .line 739
    :cond_4e4
    const-string v29, "2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_ask:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_46e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 193
    const-string v11, "use_developer_mode"

    const-string v12, "bool"

    invoke-direct {p0, v11, v12}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperModeId:I

    .line 194
    iget v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperModeId:I

    if-eqz v11, :cond_1a

    .line 195
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperModeId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    .line 197
    :cond_1a
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 198
    const v11, 0x103006e

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setTheme(I)V

    .line 200
    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_36

    .line 204
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 206
    :cond_36
    sget v11, Lcom/samsung/swift/R$string;->settings:I

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setTitle(I)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/swift/R$string;->access_request_default:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/swift/R$string;->discovery_default:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->discoveryDefault:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/swift/R$string;->serverShutdownTimeoutDefault:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->serverShutdownTimeoutDefault:Ljava/lang/String;

    .line 213
    sget v5, Lcom/samsung/swift/R$xml;->preferences:I

    .line 215
    .local v5, prefsId:I
    const-string v11, "prefs.resourceId"

    invoke-direct {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, resname:Ljava/lang/String;
    if-eqz v7, :cond_7f

    .line 218
    const-string v11, "xml"

    invoke-direct {p0, v7, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 221
    :cond_7f
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->addPreferencesFromResource(I)V

    .line 223
    const-string v11, "listednetworks"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    .line 224
    const-string v11, "listeddevices"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    .line 226
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_be

    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedDevs:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_be

    .line 229
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 230
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->listedNets:Landroid/preference/PreferenceCategory;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;

    invoke-direct {v12, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 254
    :cond_be
    const-string v11, "accessRequest"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    .line 256
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_f1

    .line 258
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 259
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "accessRequest"

    iget-object v14, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->accessRequestDefault:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkboxAccessRequest:Landroid/preference/CheckBoxPreference;

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$2;

    invoke-direct {v12, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$2;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    :cond_f1
    const-string v11, "discoverability"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    .line 273
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 274
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "discoverable"

    iget-object v14, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->discoveryDefault:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->checkbox:Landroid/preference/CheckBoxPreference;

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$3;

    invoke-direct {v12, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$3;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    const-string v11, "devicenamepref"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/samsung/swift/security/DeviceNamePreference;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    .line 289
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-direct {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setCustomPreferenceLayout(Ljava/lang/Object;)V

    .line 291
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-virtual {v11}, Lcom/samsung/swift/security/DeviceNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 292
    .local v2, editText:Landroid/widget/EditText;
    const/16 v11, 0x4000

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 293
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 295
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/swift/security/DeviceNamePreference;->setPersistent(Z)V

    .line 296
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "devicenamepref"

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/swift/security/DeviceNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$4;

    invoke-direct {v12, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$4;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v11, v12}, Lcom/samsung/swift/security/DeviceNamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;

    invoke-direct {v12, p0, v2}, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Landroid/widget/EditText;)V

    invoke-virtual {v11, v12}, Lcom/samsung/swift/security/DeviceNamePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    const-string v11, "timeoutShutDownList"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    .line 315
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    invoke-direct {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setCustomPreferenceLayout(Ljava/lang/Object;)V

    .line 317
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 318
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "timeoutShutDown"

    iget-object v14, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->serverShutdownTimeoutDefault:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    const/4 v11, 0x5

    :try_start_198
    new-array v8, v11, [Ljava/lang/CharSequence;

    .line 323
    .local v8, shutDownTimeEntries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/swift/R$string;->manyMinutes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, minutesString:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/swift/R$string;->off:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 325
    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 326
    const/4 v11, 0x2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 327
    const/4 v11, 0x3

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x1e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 328
    const/4 v11, 0x4

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/swift/R$string;->oneHour:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 329
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v11, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V
    :try_end_1fb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_198 .. :try_end_1fb} :catch_277

    .line 336
    .end local v3           #minutesString:Ljava/lang/String;
    .end local v8           #shutDownTimeEntries:[Ljava/lang/CharSequence;
    :goto_1fb
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->timeout:Landroid/preference/ListPreference;

    new-instance v12, Lcom/samsung/swift/security/SecurityPreferencesActivity$6;

    invoke-direct {v12, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$6;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    const-string v11, "reset_settingsId"

    invoke-direct {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findIdIfExist(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettingId:I

    .line 347
    iget v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettingId:I

    if-eqz v11, :cond_22b

    .line 349
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettingId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, strResetSettings:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 351
    .local v6, reset:Landroid/preference/Preference;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 352
    new-instance v11, Lcom/samsung/swift/security/SecurityPreferencesActivity$7;

    invoke-direct {v11, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$7;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 362
    .end local v6           #reset:Landroid/preference/Preference;
    .end local v9           #strResetSettings:Ljava/lang/String;
    :cond_22b
    const-string v11, "contentlock"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/samsung/swift/security/ContentLockListPreference;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->contentLockPref:Lcom/samsung/swift/security/ContentLockListPreference;

    .line 363
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->contentLockPref:Lcom/samsung/swift/security/ContentLockListPreference;

    invoke-direct {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setCustomPreferenceLayout(Ljava/lang/Object;)V

    .line 365
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->contentLockPref:Lcom/samsung/swift/security/ContentLockListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/swift/security/ContentLockListPreference;->setPersistent(Z)V

    .line 367
    sget-boolean v11, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    if-nez v11, :cond_276

    .line 371
    :try_start_244
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->versionName:Ljava/lang/String;

    if-nez v11, :cond_264

    .line 373
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->versionName:Ljava/lang/String;

    .line 374
    const-string v11, "version"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 375
    .local v10, versionPref:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_264
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_244 .. :try_end_264} :catch_281

    .line 382
    .end local v10           #versionPref:Landroid/preference/Preference;
    :cond_264
    :goto_264
    const-string v11, "openSourceLicenses"

    invoke-virtual {p0, v11}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 383
    .local v4, openSourceLicensesPref:Landroid/preference/Preference;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 384
    new-instance v11, Lcom/samsung/swift/security/SecurityPreferencesActivity$8;

    invoke-direct {v11, p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity$8;-><init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    .end local v4           #openSourceLicensesPref:Landroid/preference/Preference;
    :cond_276
    return-void

    .line 331
    :catch_277
    move-exception v1

    .line 333
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v11, Lcom/samsung/swift/security/SecurityPreferencesActivity;->LOGTAG:Ljava/lang/String;

    const-string v12, "Couldn\'t get translated resources for timeout list preference"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1fb

    .line 378
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_281
    move-exception v11

    goto :goto_264
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1004
    .local v0, alertDialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_22

    .line 1005
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1006
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "view_licence"

    invoke-direct {p0, v4}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, title:Ljava/lang/String;
    const-string v4, "view_licence_text"

    invoke-direct {p0, v4}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, text:Ljava/lang/String;
    if-eqz v3, :cond_19

    .line 1010
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1013
    :cond_19
    if-eqz v2, :cond_1e

    .line 1014
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1016
    :cond_1e
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1019
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_22
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 905
    sget-boolean v2, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    if-eqz v2, :cond_1d

    .line 907
    sget v2, Lcom/samsung/swift/R$string;->reset:I

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$drawable;->network_reset:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 908
    sget v2, Lcom/samsung/swift/R$string;->refresh:I

    invoke-interface {p1, v4, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$drawable;->ic_menu_refresh:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 919
    :cond_1c
    :goto_1c
    return v5

    .line 910
    :cond_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1c

    .line 912
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 913
    .local v0, inflater:Landroid/view/MenuInflater;
    sget v2, Lcom/samsung/swift/R$menu;->menu_settings:I

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 915
    sget v2, Lcom/samsung/swift/R$id;->reset:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 916
    .local v1, mnuItem:Landroid/view/MenuItem;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1c

    .line 917
    sget v2, Lcom/samsung/swift/R$drawable;->ic_menu_refresh:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 979
    sget-boolean v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->useDeveloperMode:Z

    if-eqz v1, :cond_19

    .line 981
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 988
    const/4 v0, 0x0

    .line 995
    :cond_d
    :goto_d
    return v0

    .line 983
    :pswitch_e
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->reset()V

    .line 985
    :pswitch_15
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->showSettings()V

    goto :goto_d

    .line 992
    :cond_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/samsung/swift/R$id;->reset:I

    if-ne v1, v2, :cond_d

    .line 993
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettings()V

    goto :goto_d

    .line 981
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_15
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 420
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-virtual {v0}, Lcom/samsung/swift/security/DeviceNamePreference;->pause()V

    .line 421
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 414
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity;->editTextPref:Lcom/samsung/swift/security/DeviceNamePreference;

    invoke-virtual {v0}, Lcom/samsung/swift/security/DeviceNamePreference;->resume()V

    .line 415
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 542
    if-eqz p1, :cond_16

    .line 544
    invoke-static {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setInstance(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    .line 545
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/security/SecurityPreferencesActivity;->FOCUS_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->showSettings()V

    .line 553
    :goto_12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 554
    return-void

    .line 551
    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->setInstance(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    goto :goto_12
.end method
