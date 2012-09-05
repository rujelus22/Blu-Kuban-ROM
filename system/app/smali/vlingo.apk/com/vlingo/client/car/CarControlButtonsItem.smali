.class public Lcom/vlingo/client/car/CarControlButtonsItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CarControlButtonsItem.java"


# static fields
.field private static final BRIGHTNESS_HIGH:F = 1.0f

.field private static final BRIGHTNESS_MED:F = 0.4f

.field private static final SCREEN_HIGH:I = 0x2

.field private static final SCREEN_LOW:I = 0x0

.field private static final SCREEN_MED:I = 0x1


# instance fields
.field private brightnessBtn:Landroid/widget/Button;

.field private btBtn:Landroid/widget/Button;

.field private screenMode:I

.field private settingsBtn:Landroid/widget/Button;

.field private wakeupBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->screenMode:I

    .line 55
    return-void
.end method

.method private readSystemBrightness()V
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getScreenBrightness()F

    move-result v0

    .line 127
    .local v0, br:F
    const v1, 0x3ecccccd

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->screenMode:I

    .line 133
    :goto_e
    return-void

    .line 129
    :cond_f
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_19

    .line 130
    const/4 v1, 0x1

    iput v1, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->screenMode:I

    goto :goto_e

    .line 132
    :cond_19
    const/4 v1, 0x2

    iput v1, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->screenMode:I

    goto :goto_e
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public displayTryAgain()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 265
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_generic"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getScreenBrightness()F
    .registers 5

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 245
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 246
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 247
    .local v0, b:F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_19

    const/high16 v0, 0x3f80

    .line 248
    :cond_19
    return v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3

    .prologue
    .line 273
    const-string v0, "car_first_run"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 274
    const-string v0, "car_first_run"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 275
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 277
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    goto :goto_11
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public onDelegateAttached()V
    .registers 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 60
    invoke-direct {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->readSystemBrightness()V

    .line 61
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateButtonStates()V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 103
    return-void
.end method

.method public onShown()V
    .registers 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 67
    invoke-direct {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->readSystemBrightness()V

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateButtonStates()V

    .line 69
    return-void
.end method

.method protected setScreenBrightness(F)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 238
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 239
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 240
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    return-void
.end method

.method protected toggleWakeupWordSpotting()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 211
    const-string v2, "car_word_spotter_enabled"

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 212
    .local v0, wasOn:Z
    const-string v2, "car_word_spotter_enabled"

    if-nez v0, :cond_27

    :goto_b
    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 213
    if-eqz v0, :cond_29

    .line 214
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_OFF_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 218
    :goto_19
    new-instance v1, Lcom/vlingo/client/car/CarControlButtonsItem$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarControlButtonsItem$1;-><init>(Lcom/vlingo/client/car/CarControlButtonsItem;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 223
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateWakeupButton()V

    .line 224
    return-void

    .line 212
    :cond_27
    const/4 v1, 0x0

    goto :goto_b

    .line 216
    :cond_29
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_19
.end method

.method protected updateBluetoothButton()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 188
    const v2, 0x7f02004b

    .line 189
    .local v2, res:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 190
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_11

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_38

    .line 206
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->btBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-void

    .line 193
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :pswitch_27
    const v2, 0x7f02004b

    .line 194
    goto :goto_11

    .line 196
    :pswitch_2b
    const v2, 0x7f02004c

    .line 197
    goto :goto_11

    .line 199
    :pswitch_2f
    const v2, 0x7f02004a

    .line 200
    goto :goto_11

    .line 202
    :pswitch_33
    const v2, 0x7f02004a

    goto :goto_11

    .line 191
    nop

    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_27
        :pswitch_33
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method public updateButtonStates()V
    .registers 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateBluetoothButton()V

    .line 184
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateWakeupButton()V

    .line 185
    return-void
.end method

.method protected updateWakeupButton()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 227
    const v1, 0x7f020053

    .line 228
    .local v1, res:I
    const-string v3, "car_word_spotter_enabled"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 229
    .local v2, spottingOn:Z
    if-eqz v2, :cond_10

    .line 230
    const v1, 0x7f020054

    .line 232
    :cond_10
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/vlingo/client/car/CarControlButtonsItem;->wakeupBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5, v0, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void
.end method
