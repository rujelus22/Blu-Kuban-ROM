.class public Lcom/android/sprintmenu/TTY;
.super Landroid/preference/PreferenceActivity;
.source "TTY.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field button_Mode_TTY_KeyCode:Ljava/lang/String;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryTTYComplete:Landroid/os/Handler;

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private mSetTTYComplete:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const-string v0, "list_preference"

    iput-object v0, p0, Lcom/android/sprintmenu/TTY;->button_Mode_TTY_KeyCode:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/android/sprintmenu/TTY$3;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/TTY$3;-><init>(Lcom/android/sprintmenu/TTY;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TTY;->mQueryTTYComplete:Landroid/os/Handler;

    .line 229
    new-instance v0, Lcom/android/sprintmenu/TTY$4;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/TTY$4;-><init>(Lcom/android/sprintmenu/TTY;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    .line 324
    new-instance v0, Lcom/android/sprintmenu/TTY$5;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/TTY$5;-><init>(Lcom/android/sprintmenu/TTY;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TTY;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    return-void
.end method

.method private UpdatePreferredTtyModeSummary(I)V
    .registers 4
    .parameter "TtyMode"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_2c

    .line 148
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v1, "TTY Mode OFF"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    :goto_a
    return-void

    .line 136
    :pswitch_b
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v1, "TTY Mode OFF"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 139
    :pswitch_13
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v1, "TTY Mode HCO"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 142
    :pswitch_1b
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v1, "TTY Mode VCO"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 145
    :pswitch_23
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v1, "TTY Mode Full"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 134
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_23
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/TTY;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TTY;->handleQueryTTYModeMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/TTY;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TTY;->handleQueryTtyResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/TTY;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TTY;->handleQueryVPModeMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method private handleQueryTTYModeMessage(Landroid/os/AsyncResult;)I
    .registers 5
    .parameter "ar"

    .prologue
    .line 359
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 361
    const/16 v0, 0xc8

    .line 368
    :goto_6
    return v0

    .line 364
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TTY;->syncTTYState([I)V

    .line 365
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tty_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    const/16 v0, 0x64

    goto :goto_6
.end method

.method private handleQueryTtyResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4a

    .line 252
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 256
    .local v2, ttyMode:I
    iget-object v3, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, settingsTtyMode:I
    if-eqz v2, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 268
    :cond_2c
    if-eq v2, v1, :cond_3e

    .line 274
    move v1, v2

    .line 281
    iget-object v3, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    :cond_3e
    invoke-direct {p0, v2}, Lcom/android/sprintmenu/TTY;->UpdatePreferredTtyModeSummary(I)V

    .line 289
    iget-object v3, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 295
    .end local v1           #settingsTtyMode:I
    .end local v2           #ttyMode:I
    :cond_4a
    :goto_4a
    return-void

    .line 292
    .restart local v1       #settingsTtyMode:I
    .restart local v2       #ttyMode:I
    :cond_4b
    invoke-direct {p0}, Lcom/android/sprintmenu/TTY;->resetTtyModeToDefault()V

    goto :goto_4a
.end method

.method private handleQueryVPModeMessage(Landroid/os/AsyncResult;)I
    .registers 5
    .parameter "ar"

    .prologue
    .line 340
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 344
    const/16 v0, 0xc8

    .line 354
    :goto_6
    return v0

    .line 349
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TTY;->syncVPState([I)V

    .line 350
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhanced_voice_privacy_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    const/16 v0, 0x64

    goto :goto_6
.end method

.method private handleSetVPMessage()V
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/sprintmenu/TTY;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 314
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhanced_voice_privacy_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    return-void
.end method

.method private handleTTYClickRequest(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x320

    .line 168
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    .local v0, buttonTtyMode:I
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_3f

    .line 176
    packed-switch v0, :pswitch_data_74

    .line 194
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 197
    :goto_2d
    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TTY;->UpdatePreferredTtyModeSummary(I)V

    .line 199
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_3f
    return-void

    .line 178
    :pswitch_40
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_2d

    .line 182
    :pswitch_4c
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_2d

    .line 186
    :pswitch_59
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_2d

    .line 190
    :pswitch_66
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_2d

    .line 176
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_40
        :pswitch_4c
        :pswitch_59
        :pswitch_66
    .end packed-switch
.end method

.method private resetTtyModeToDefault()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/sprintmenu/TTY;->mSetTTYComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 308
    return-void
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 402
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, ttyModeChanged:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, settingsTtyMode:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v2, ttyPrefModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    const-string v3, "ttyEnabled"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method private syncTTYState([I)V
    .registers 5
    .parameter "ttyArray"

    .prologue
    const/4 v2, 0x0

    .line 385
    move-object v0, p0

    .line 387
    .local v0, context:Landroid/content/Context;
    aget v1, p1, v2

    if-nez v1, :cond_a

    .line 389
    invoke-static {v0, v2}, Lcom/android/sprintmenu/TTY;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 395
    :goto_9
    return-void

    .line 393
    :cond_a
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/sprintmenu/TTY;->setStatusBarIcon(Landroid/content/Context;Z)V

    goto :goto_9
.end method

.method private syncVPState([I)V
    .registers 2
    .parameter "vpArray"

    .prologue
    .line 377
    return-void
.end method


# virtual methods
.method public Procedefurther()V
    .registers 6

    .prologue
    .line 56
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/TTY;->addPreferencesFromResource(I)V

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 59
    invoke-virtual {p0}, Lcom/android/sprintmenu/TTY;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 60
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->button_Mode_TTY_KeyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    .line 61
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, settingsTtyMode:I
    iget-object v2, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v1}, Lcom/android/sprintmenu/TTY;->UpdatePreferredTtyModeSummary(I)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TTY;->showDialog(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/sprintmenu/TTY;->Procedefurther()V

    .line 53
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_34

    .line 102
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 77
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Enabaling TTY may impair headset use and non-TTY accessory performance."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003d

    new-instance v2, Lcom/android/sprintmenu/TTY$2;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/TTY$2;-><init>(Lcom/android/sprintmenu/TTY;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003e

    new-instance v2, Lcom/android/sprintmenu/TTY$1;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/TTY$1;-><init>(Lcom/android/sprintmenu/TTY;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 75
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/sprintmenu/TTY;->handleTTYClickRequest(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 161
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 113
    invoke-virtual {p0}, Lcom/android/sprintmenu/TTY;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 119
    invoke-direct {p0}, Lcom/android/sprintmenu/TTY;->handleSetVPMessage()V

    .line 120
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/sprintmenu/TTY;->mQueryTTYComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 131
    :goto_2f
    return-void

    .line 126
    :cond_30
    iget-object v0, p0, Lcom/android/sprintmenu/TTY;->mButtonTTY:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2f
.end method
