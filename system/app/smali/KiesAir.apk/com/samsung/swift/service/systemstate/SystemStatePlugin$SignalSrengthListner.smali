.class Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
.super Landroid/telephony/PhoneStateListener;
.source "SystemStatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignalSrengthListner"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 13
    .parameter "signalStrength"

    .prologue
    const/high16 v10, 0x42dc

    const/high16 v8, 0x4020

    const/4 v9, 0x0

    .line 206
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$200()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onSignalStrengthsChanged called"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_14
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 211
    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$400()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 212
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3c

    .line 214
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$200()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "******** NO SIM Found *****"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_34
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v9}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    .line 277
    :goto_3b
    return-void

    .line 218
    :cond_3c
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$200()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GSM Signal"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4b
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    int-to-float v0, v6

    .line 221
    .local v0, gsmSignalStrength:F
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$200()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GSM Signal Strength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_70
    const/high16 v6, 0x42c6

    cmpl-float v6, v0, v6

    if-nez v6, :cond_7e

    .line 226
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v9}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    goto :goto_3b

    .line 232
    :cond_7e
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    goto :goto_3b

    .line 241
    .end local v0           #gsmSignalStrength:F
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_86
    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$400()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 243
    .restart local v5       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    packed-switch v6, :pswitch_data_160

    .line 271
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default case..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v9}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    goto :goto_3b

    .line 246
    :pswitch_a2
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NETWORK_TYPE_CDMA"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    mul-float v1, v6, v8

    .line 248
    .local v1, levelDbm:F
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    mul-float v2, v6, v8

    .line 250
    .local v2, levelEcio:F
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_TYPE_CDMA: levelDbm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_TYPE_CDMA: levelEcio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    cmpg-float v7, v1, v2

    if-gez v7, :cond_fc

    .end local v1           #levelDbm:F
    :goto_f7
    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    goto/16 :goto_3b

    .restart local v1       #levelDbm:F
    :cond_fc
    move v1, v2

    goto :goto_f7

    .line 259
    .end local v1           #levelDbm:F
    .end local v2           #levelEcio:F
    :pswitch_fe
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NETWORK_TYPE_EVDO_0/A"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v6

    add-int/lit16 v6, v6, 0x4b0

    int-to-float v6, v6

    const/high16 v7, 0x40c0

    div-float v3, v6, v7

    .line 261
    .local v3, levelEvdoEcio:F
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    const/high16 v7, 0x4148

    mul-float v4, v6, v7

    .line 263
    .local v4, levelEvdoSnr:F
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_TYPE_EVDO_0/A levelEvdoEcio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_TYPE_EVDO_0/A levelEvdoSnr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v6

    cmpg-float v7, v3, v4

    if-gez v7, :cond_15e

    .end local v3           #levelEvdoEcio:F
    :goto_159
    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V
    invoke-static {v6, v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V

    goto/16 :goto_3b

    .restart local v3       #levelEvdoEcio:F
    :cond_15e
    move v3, v4

    goto :goto_159

    .line 243
    :pswitch_data_160
    .packed-switch 0x4
        :pswitch_a2
        :pswitch_fe
        :pswitch_fe
    .end packed-switch
.end method
