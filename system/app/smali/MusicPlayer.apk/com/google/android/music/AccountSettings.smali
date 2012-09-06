.class public Lcom/google/android/music/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static accounts:[Landroid/accounts/Account;

.field private static sSelectedPreference:Lcom/google/android/music/AccountPreference;


# instance fields
.field private mAccountPreferences:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/AccountPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mClickedAccount:Lcom/google/android/music/AccountPreference;

.field private mMainScreen:Landroid/preference/PreferenceScreen;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "AccountSettings"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AccountSettings;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    .line 122
    new-instance v0, Lcom/google/android/music/AccountSettings$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/AccountSettings$2;-><init>(Lcom/google/android/music/AccountSettings;)V

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 134
    return-void
.end method

.method static synthetic access$000()[Landroid/accounts/Account;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/MusicEventLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mTracker:Lcom/google/android/music/MusicEventLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AccountSettings;)Landroid/preference/Preference$OnPreferenceClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/music/AccountPreference;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/music/AccountSettings;->sSelectedPreference:Lcom/google/android/music/AccountPreference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/google/android/music/AccountSettings;->sSelectedPreference:Lcom/google/android/music/AccountPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/music/AccountSettings;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/AccountSettings;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/AccountSettings;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/music/AccountSettings;->authenticationSuccess(Lcom/google/android/music/AccountPreference;)V

    return-void
.end method

.method private authenticationFailed(II)V
    .registers 8
    .parameter "title"
    .parameter "message"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "authfailure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "actionArea"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/music/AccountSettings;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v0, Lcom/google/android/music/AccountSettings$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/AccountSettings$4;-><init>(Lcom/google/android/music/AccountSettings;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private authenticationSuccess(Lcom/google/android/music/AccountPreference;)V
    .registers 3
    .parameter "accountPref"

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/music/AccountSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/AccountSettings$3;-><init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "accountSettings"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 60
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/music/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    .line 63
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_2c

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, dialog:Landroid/app/Dialog;
    :goto_4
    return-object v1

    .line 204
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d0177

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0006

    new-instance v4, Lcom/google/android/music/AccountSettings$5;

    invoke-direct {v4, p0}, Lcom/google/android/music/AccountSettings$5;-><init>(Lcom/google/android/music/AccountSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v2, 0x7f0d0178

    new-instance v3, Lcom/google/android/music/AccountSettings$6;

    invoke-direct {v3, p0}, Lcom/google/android/music/AccountSettings$6;-><init>(Lcom/google/android/music/AccountSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 237
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_4

    .line 201
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 73
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    iget-object v2, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AccountPreference;

    .line 81
    .local v0, ap:Lcom/google/android/music/AccountPreference;
    iget-object v2, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 84
    .end local v0           #ap:Lcom/google/android/music/AccountPreference;
    :cond_1b
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/AccountSettings$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/AccountSettings$1;-><init>(Lcom/google/android/music/AccountSettings;)V

    invoke-static {v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 113
    return-void
.end method
