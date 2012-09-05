.class public Lcom/sec/android/app/voicerecorder/util/VRSettings;
.super Ljava/lang/Object;
.source "VRSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/util/VRSettings$1;,
        Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;,
        Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;
    }
.end annotation


# static fields
.field private static mAppContext:Landroid/content/Context;

.field private static mLimitForMms:I

.field private static mNotificationHandler:Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;

.field private static mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static mQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 51
    sput v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    .line 52
    sput v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    .line 54
    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mObservers:Ljava/util/List;

    .line 256
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;

    invoke-direct {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;-><init>(Lcom/sec/android/app/voicerecorder/util/VRSettings$1;)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$000(II)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->handleNotification(II)V

    return-void
.end method

.method public static getAudioFormat()Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
    .registers 2

    .prologue
    .line 259
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 260
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;

    invoke-direct {v0}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;-><init>()V

    .line 262
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;

    invoke-direct {v0}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;-><init>()V

    goto :goto_c
.end method

.method public static getDefaultFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 154
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v2, "default_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "default_name"

    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInternalStorageSelected()Z
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 70
    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v3, "storage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 74
    .local v1, storageVal:Z
    const-string v2, "storage"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    if-nez v1, :cond_25

    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageStateSd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 85
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setInternalStorageSelected(Z)V

    .line 86
    const/4 v1, 0x1

    .line 89
    :cond_25
    return v1
.end method

.method public static getLimitForMms()I
    .registers 4

    .prologue
    .line 149
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v2, "limit_for_mms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "limit_for_mms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLimitForMmsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    sget v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 117
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getLimitForMms()I

    move-result v0

    sput v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    .line 119
    :cond_b
    sget v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    packed-switch v0, :pswitch_data_2e

    .line 125
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 121
    :pswitch_12
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 123
    :pswitch_20
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 119
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_20
    .end packed-switch
.end method

.method public static getQuality()I
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 204
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v2, "recording_quality"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "recording_quality"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getQualityString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    sget v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 173
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getQuality()I

    move-result v0

    sput v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    .line 175
    :cond_b
    sget v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    packed-switch v0, :pswitch_data_2e

    .line 181
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 177
    :pswitch_12
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 179
    :pswitch_20
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 175
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_20
    .end packed-switch
.end method

.method public static getSelectedStorageString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private static handleNotification(II)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 238
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;

    invoke-interface {v1, p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;->OnVRSettingChanged(II)V

    goto :goto_6

    .line 243
    :cond_16
    return-void
.end method

.method public static initAppContext(Landroid/content/Context;)V
    .registers 2
    .parameter "appContext"

    .prologue
    .line 57
    sput-object p0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static isMmsMode()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    sget-object v4, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v5, "limit_for_mms"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v4, "limit_for_mms"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, recordingTime:I
    if-nez v1, :cond_13

    :goto_12
    return v2

    :cond_13
    move v2, v3

    goto :goto_12
.end method

.method public static notifySettingChanged(II)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 233
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public static removeOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V
    .registers 2
    .parameter "o"

    .prologue
    .line 229
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public static setInternalStorageSelected(Z)V
    .registers 6
    .parameter "internal"

    .prologue
    .line 93
    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v3, "storage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "storage"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public static setLimitForMms(I)V
    .registers 6
    .parameter "onOff"

    .prologue
    .line 131
    sput p0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    .line 142
    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v3, "limit_for_mms"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "limit_for_mms"

    sget v3, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mLimitForMms:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public static setOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V
    .registers 2
    .parameter "o"

    .prologue
    .line 225
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public static setQuality(I)V
    .registers 6
    .parameter "quality"

    .prologue
    .line 187
    sput p0, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    .line 197
    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mAppContext:Landroid/content/Context;

    const-string v3, "recording_quality"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "recording_quality"

    sget v3, Lcom/sec/android/app/voicerecorder/util/VRSettings;->mQuality:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method
