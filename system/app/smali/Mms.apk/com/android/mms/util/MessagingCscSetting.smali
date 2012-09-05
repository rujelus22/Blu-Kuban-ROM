.class public Lcom/android/mms/util/MessagingCscSetting;
.super Ljava/lang/Object;
.source "MessagingCscSetting.java"


# static fields
.field static final CSC_KEY_BOOL:[Ljava/lang/String;

.field static final CSC_KEY_INT:[Ljava/lang/String;

.field static final CSC_KEY_STR:[Ljava/lang/String;

.field static final PREF_KEY_BOOL:[Ljava/lang/String;

.field static final PREF_KEY_INT:[Ljava/lang/String;

.field static final PREF_KEY_STR:[Ljava/lang/String;

.field private static mAutoDelete:I

.field private static mCbActivation:I

.field private static mCmasEnabled:I

.field private static mContext:Landroid/content/Context;

.field static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mEnableNotification:I

.field private static mEnablePushMesage:I

.field private static mMaxChCount:I

.field private static mMaxRecipient:I

.field private static mMmsAutoRetireve:I

.field private static mMmsAutoRetireveRoam:I

.field private static mMmsCreationMode:Ljava/lang/String;

.field private static mMmsDeleteLimit:I

.field private static mMmsDeliveryReport:I

.field private static mMmsReadReport:I

.field private static mMyChannels:I

.field private static mNotiVibrate:I

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mServiceLoadingAction:Ljava/lang/String;

.field private static mSimState:Z

.field private static mSmsDeleteLimit:I

.field private static mSmsDeliveryReport:I

.field private static mSmsInputMethod:Ljava/lang/String;

.field private static mSmsReplyPath:I

.field private static mSmsToMmsThreshold:I

.field private static mSmsc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_cmas_alert_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    .line 76
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_emergency_alert"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    .line 94
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "csc_pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    .line 102
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    .line 116
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 118
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsReplyPath:I

    .line 120
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 122
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 124
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 126
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 128
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 130
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mCmasEnabled:I

    .line 132
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 134
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 136
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    .line 137
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 139
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 140
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    .line 141
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 148
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 150
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 154
    sput-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 163
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sput-object p1, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    .line 171
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 172
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "cscKey"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 342
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 343
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCscToDefaultSettings] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "STRING"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_b3

    .line 349
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 350
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 352
    .end local v1           #i:I
    :cond_53
    const-string v3, "INT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 353
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5c
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_b3

    .line 354
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 355
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 353
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 357
    .end local v1           #i:I
    :cond_83
    const-string v3, "BOOLEAN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 358
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8c
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_b3

    .line 359
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 360
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 358
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 364
    .end local v1           #i:I
    :cond_b3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    const-string v3, "csc_pref_key_threshold"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 367
    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    .line 368
    :cond_cd
    const-string v3, "csc_pref_key_max_recipient"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 369
    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsMaxRecipient(I)V

    .line 371
    :cond_e4
    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 372
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 375
    :cond_11d
    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 376
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$SmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 379
    :cond_156
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 313
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 314
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 317
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 318
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 323
    :cond_37
    const/4 v0, 0x0

    :goto_38
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_61

    .line 324
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 325
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 330
    :cond_61
    const/4 v0, 0x0

    :goto_62
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_89

    .line 331
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 332
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 337
    :cond_89
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    const/4 v1, 0x1

    return v1
.end method

.method public static loadDefaultSettings()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 247
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 248
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 251
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_sim_ready_status"

    sget-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_key_manage_smsc_address"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_max_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_enabled_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-ltz v0, :cond_46

    .line 260
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_sms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-lez v0, :cond_158

    move v0, v1

    :goto_43
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    :cond_46
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-ltz v0, :cond_56

    .line 264
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-lez v0, :cond_15b

    move v0, v1

    :goto_53
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    :cond_56
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-ltz v0, :cond_66

    .line 266
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_read_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-lez v0, :cond_15e

    move v0, v1

    :goto_63
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    :cond_66
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-ltz v0, :cond_76

    .line 268
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_auto_retrieval"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-lez v0, :cond_161

    move v0, v1

    :goto_73
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    :cond_76
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-ltz v0, :cond_86

    .line 270
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_retrieval_during_roaming"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-lez v0, :cond_164

    move v0, v1

    :goto_83
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_86
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-ltz v0, :cond_96

    .line 272
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_auto_delete"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-lez v0, :cond_167

    move v0, v1

    :goto_93
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    :cond_96
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCmasEnabled:I

    if-ltz v0, :cond_a6

    .line 275
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_cmas_alert_enabled"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCmasEnabled:I

    if-lez v0, :cond_16a

    move v0, v1

    :goto_a3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    :cond_a6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-ltz v0, :cond_b6

    .line 278
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_vibrate"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-lez v0, :cond_16d

    move v0, v1

    :goto_b3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_b6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-ltz v0, :cond_c6

    .line 280
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_enable_notifications"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-lez v0, :cond_170

    move v0, v1

    :goto_c3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    :cond_c6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-ltz v0, :cond_d6

    .line 282
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_cb_settings_activation"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-lez v0, :cond_173

    move v0, v1

    :goto_d3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    :cond_d6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    if-ltz v0, :cond_e3

    .line 285
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_threshold"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    :cond_e3
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    if-ltz v0, :cond_f0

    .line 287
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_max_recipient"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    :cond_f0
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_101

    .line 290
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_creation_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    :cond_101
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 292
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_input_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    :cond_112
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    if-ltz v0, :cond_11f

    .line 294
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    :cond_11f
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    if-ltz v0, :cond_12c

    .line 296
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    :cond_12c
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-ltz v0, :cond_13c

    .line 300
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_enable_push_message"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-lez v4, :cond_139

    move v2, v1

    :cond_139
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    :cond_13c
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14d

    .line 302
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "csc_pref_key_service_loading_action"

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    :cond_14d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/MessagingCscSetting;->loadCscToDefaultSettings(Landroid/content/Context;)Z

    .line 309
    return v1

    :cond_158
    move v0, v2

    .line 260
    goto/16 :goto_43

    :cond_15b
    move v0, v2

    .line 264
    goto/16 :goto_53

    :cond_15e
    move v0, v2

    .line 266
    goto/16 :goto_63

    :cond_161
    move v0, v2

    .line 268
    goto/16 :goto_73

    :cond_164
    move v0, v2

    .line 270
    goto/16 :goto_83

    :cond_167
    move v0, v2

    .line 272
    goto/16 :goto_93

    :cond_16a
    move v0, v2

    .line 275
    goto/16 :goto_a3

    :cond_16d
    move v0, v2

    .line 278
    goto/16 :goto_b3

    :cond_170
    move v0, v2

    .line 280
    goto/16 :goto_c3

    :cond_173
    move v0, v2

    .line 282
    goto/16 :goto_d3
.end method

.method public static storeCscSettings()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 191
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 192
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c0

    move v0, v1

    :goto_1f
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 195
    :cond_21
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 196
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c3

    move v0, v1

    :goto_36
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 197
    :cond_38
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 198
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c6

    move v0, v1

    :goto_4d
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 199
    :cond_4f
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 200
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c9

    move v0, v1

    :goto_64
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 201
    :cond_66
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 202
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1cc

    move v0, v1

    :goto_7b
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 203
    :cond_7d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 204
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1cf

    move v0, v1

    :goto_92
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 205
    :cond_94
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_cmas_alert_enabled"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 206
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_cmas_alert_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d2

    move v0, v1

    :goto_a9
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mCmasEnabled:I

    .line 208
    :cond_ab
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 209
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d5

    move v0, v1

    :goto_c0
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 210
    :cond_c2
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 211
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d8

    move v0, v1

    :goto_d7
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 212
    :cond_d9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 214
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 215
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    const-string v4, "free"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 217
    :cond_f9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 218
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 221
    :cond_10f
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 222
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 224
    :cond_127
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 225
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 227
    :cond_13f
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 228
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    .line 230
    :cond_15d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 231
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    .line 234
    :cond_17b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 235
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1db

    move v0, v1

    :goto_190
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 236
    :cond_192
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 237
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    const-string v4, "pref_key_service_loading_action"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    .line 241
    :cond_1a8
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 242
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1bd

    move v2, v1

    :cond_1bd
    sput v2, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    .line 243
    :cond_1bf
    return v1

    :cond_1c0
    move v0, v2

    .line 192
    goto/16 :goto_1f

    :cond_1c3
    move v0, v2

    .line 196
    goto/16 :goto_36

    :cond_1c6
    move v0, v2

    .line 198
    goto/16 :goto_4d

    :cond_1c9
    move v0, v2

    .line 200
    goto/16 :goto_64

    :cond_1cc
    move v0, v2

    .line 202
    goto/16 :goto_7b

    :cond_1cf
    move v0, v2

    .line 204
    goto/16 :goto_92

    :cond_1d2
    move v0, v2

    .line 206
    goto/16 :goto_a9

    :cond_1d5
    move v0, v2

    .line 209
    goto/16 :goto_c0

    :cond_1d8
    move v0, v2

    .line 211
    goto/16 :goto_d7

    :cond_1db
    move v0, v2

    .line 235
    goto :goto_190
.end method

.method public static storeCurrentSettings()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 178
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_sim_ready_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 182
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_max_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 183
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 185
    const/4 v0, 0x1

    return v0
.end method
