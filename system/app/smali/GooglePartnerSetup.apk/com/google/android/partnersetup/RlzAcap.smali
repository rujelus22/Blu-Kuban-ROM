.class public Lcom/google/android/partnersetup/RlzAcap;
.super Ljava/lang/Object;
.source "RlzAcap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3
    .parameter "config"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, acap:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzAcap;->getKeyboardType(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzAcap;->getNavigationType(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzAcap;->getScreenInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzAcap;->getTouchscreenType(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/google/android/partnersetup/RlzAcap;->getButtons()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/google/android/partnersetup/RlzAcap;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getButtons()Ljava/lang/String;
    .registers 6

    .prologue
    .line 123
    const-string v4, "Nexus One"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 129
    const-string v4, "YY"

    .line 140
    .local v0, hasKeys:[Z
    .local v1, i:I
    .local v2, keyCodes:[I
    .local v3, retString:Ljava/lang/StringBuilder;
    :goto_c
    return-object v4

    .line 131
    .end local v0           #hasKeys:[Z
    .end local v1           #i:I
    .end local v2           #keyCodes:[I
    .end local v3           #retString:Ljava/lang/StringBuilder;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .restart local v3       #retString:Ljava/lang/StringBuilder;
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    .line 136
    .restart local v2       #keyCodes:[I
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v0

    .line 137
    .restart local v0       #hasKeys:[Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1d
    array-length v4, v0

    if-ge v1, v4, :cond_2f

    .line 138
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_2c

    const-string v4, "Y"

    :goto_26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 138
    :cond_2c
    const-string v4, "N"

    goto :goto_26

    .line 140
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 132
    :array_34
    .array-data 0x4
        0x54t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getKeyboardType(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .parameter "config"

    .prologue
    .line 44
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v0, :pswitch_data_12

    .line 53
    const-string v0, "U"

    :goto_7
    return-object v0

    .line 46
    :pswitch_8
    const-string v0, "T"

    goto :goto_7

    .line 48
    :pswitch_b
    const-string v0, "Q"

    goto :goto_7

    .line 50
    :pswitch_e
    const-string v0, "N"

    goto :goto_7

    .line 44
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static getNavigationType(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .parameter "config"

    .prologue
    .line 58
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v0, :pswitch_data_14

    .line 69
    const-string v0, "U"

    :goto_7
    return-object v0

    .line 60
    :pswitch_8
    const-string v0, "D"

    goto :goto_7

    .line 62
    :pswitch_b
    const-string v0, "T"

    goto :goto_7

    .line 64
    :pswitch_e
    const-string v0, "W"

    goto :goto_7

    .line 66
    :pswitch_11
    const-string v0, "N"

    goto :goto_7

    .line 58
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenInfo(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 5
    .parameter "config"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, retString:Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v3, 0xf

    .line 76
    .local v2, screenSize:I
    packed-switch v2, :pswitch_data_46

    .line 91
    const-string v3, "U"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_11
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v3, 0x30

    .line 94
    .local v1, screenLength:I
    sparse-switch v1, :sswitch_data_52

    .line 103
    const-string v3, "U"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    .end local v1           #screenLength:I
    :pswitch_22
    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 81
    :pswitch_28
    const-string v3, "N"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 84
    :pswitch_2e
    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 87
    :pswitch_34
    const-string v3, "X"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 96
    .restart local v1       #screenLength:I
    :sswitch_3a
    const-string v3, "Y"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 99
    :sswitch_40
    const-string v3, "N"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 76
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
    .end packed-switch

    .line 94
    :sswitch_data_52
    .sparse-switch
        0x10 -> :sswitch_40
        0x20 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static getTouchscreenType(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .parameter "config"

    .prologue
    .line 109
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v0, :pswitch_data_12

    .line 118
    const-string v0, "U"

    :goto_7
    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "S"

    goto :goto_7

    .line 113
    :pswitch_b
    const-string v0, "F"

    goto :goto_7

    .line 115
    :pswitch_e
    const-string v0, "N"

    goto :goto_7

    .line 109
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
