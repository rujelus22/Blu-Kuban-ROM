.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x3

.field public static final TORCH_BRIGHTNESS_MIN:I = 0x1

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static setAmoledACL(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 74
    const-string v6, "SecHardwareInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAmoledACL ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p0, :cond_49

    const-string v5, "true"

    :goto_11
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    .line 79
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    :try_start_25
    new-array v0, v5, [B
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27} :catch_51

    .line 83
    .local v0, buffer:[B
    :try_start_27
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/lcd/panel/power_reduce"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_33} :catch_4c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_33} :catch_51

    .line 92
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p0, :cond_5e

    .line 93
    :try_start_35
    const-string v5, "SecHardwareInterface"

    const-string v6, "ACL is enabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v5, 0x0

    const/16 v6, 0x31

    aput-byte v6, v0, v5

    .line 99
    :goto_41
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 100
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_6b

    move-object v3, v4

    .line 110
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_48
    return-void

    .line 74
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_49
    const-string v5, "false"

    goto :goto_11

    .line 87
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4c
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_48

    .line 101
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_51
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    :goto_52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :try_start_55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_48

    .line 105
    :catch_59
    move-exception v2

    .line 106
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    .line 96
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_5e
    :try_start_5e
    const-string v5, "SecHardwareInterface"

    const-string v6, "ACL is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v5, 0x0

    const/16 v6, 0x30

    aput-byte v6, v0, v5
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6a} :catch_6b

    goto :goto_41

    .line 101
    :catch_6b
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_52
.end method

.method public static setAmoledVideoGamma(Z)V
    .registers 9
    .parameter "videomode"

    .prologue
    .line 40
    const-string v6, "SecHardwareInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAmoledVideoGamma ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p0, :cond_42

    const-string v5, "true"

    :goto_11
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v3, 0x0

    .line 45
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    :try_start_25
    new-array v0, v5, [B
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27} :catch_4e

    .line 48
    .local v0, buffer:[B
    :try_start_27
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/lcd/panel/gamma_mode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_33} :catch_45
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_33} :catch_4e

    .line 55
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p0, :cond_5b

    .line 56
    const/4 v5, 0x0

    const/16 v6, 0x31

    :try_start_38
    aput-byte v6, v0, v5

    .line 60
    :goto_3a
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 61
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_61

    move-object v3, v4

    .line 71
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_41
    return-void

    .line 40
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_42
    const-string v5, "false"

    goto :goto_11

    .line 49
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_45
    move-exception v1

    .line 51
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_46
    const-string v5, "SecHardwareInterface"

    const-string v6, "setAmoledVideoGamma -File not found. Ignore exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_4e

    goto :goto_41

    .line 62
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4e
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/IOException;
    :goto_4f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :try_start_52
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_41

    .line 66
    :catch_56
    move-exception v2

    .line 67
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_5b
    const/4 v5, 0x0

    const/16 v6, 0x30

    :try_start_5e
    aput-byte v6, v0, v5
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_60} :catch_61

    goto :goto_3a

    .line 62
    :catch_61
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_4f
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .registers 11
    .parameter "app"
    .parameter "enable"

    .prologue
    .line 310
    const/4 v5, 0x0

    .line 315
    .local v5, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    const-string v7, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBatteryADC path = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_5e

    const-string v6, "true"

    :goto_2f
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    .line 321
    .local v3, out:Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_43
    new-array v0, v6, [B
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_45} :catch_66

    .line 324
    .local v0, buffer:[B
    :try_start_45
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4f} :catch_61
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_66

    .line 330
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p1, :cond_73

    .line 331
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_54
    aput-byte v7, v0, v6

    .line 335
    :goto_56
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 336
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_79

    move-object v3, v4

    .line 346
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_5d
    return-void

    .line 317
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_5e
    const-string v6, "false"

    goto :goto_2f

    .line 325
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_61
    move-exception v1

    .line 326
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_5d

    .line 337
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_66
    move-exception v1

    .line 338
    .local v1, e:Ljava/io/IOException;
    :goto_67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_5d

    .line 341
    :catch_6e
    move-exception v2

    .line 342
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    .line 333
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_73
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_76
    aput-byte v7, v0, v6
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_78} :catch_79

    goto :goto_56

    .line 337
    :catch_79
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_67
.end method

.method public static setEpenHandType(I)V
    .registers 9
    .parameter "handtype"

    .prologue
    .line 446
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 447
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 449
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_36

    .line 458
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    if-nez p0, :cond_43

    .line 459
    const/16 v5, 0x30

    :try_start_29
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 462
    :cond_2c
    :goto_2c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_4c

    move-object v2, v3

    .line 471
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_30
    return-void

    .line 454
    :catch_31
    move-exception v0

    .line 455
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_30

    .line 463
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_36
    move-exception v0

    .line 464
    .local v0, e:Ljava/io/IOException;
    :goto_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_30

    .line 467
    :catch_3e
    move-exception v1

    .line 468
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 460
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_43
    const/4 v5, 0x1

    if-ne p0, v5, :cond_2c

    .line 461
    const/16 v5, 0x31

    :try_start_48
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_2c

    .line 463
    :catch_4c
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_37
.end method

.method public static setFlashLed(I)V
    .registers 9
    .parameter "brightness"

    .prologue
    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    new-array v0, v5, [B

    .line 397
    .local v0, buffer:[B
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFlashLed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/leds/leds-sec/brightness"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_29} :catch_54
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_59

    .line 410
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    packed-switch p0, :pswitch_data_d0

    .line 429
    :try_start_2c
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not supported value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flash will be set to off "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 434
    :goto_4f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_52} :catch_73

    move-object v3, v4

    .line 443
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_53
    return-void

    .line 406
    :catch_54
    move-exception v1

    .line 407
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_53

    .line 435
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_59
    move-exception v1

    .line 436
    .local v1, e:Ljava/io/IOException;
    :goto_5a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_53

    .line 439
    :catch_61
    move-exception v2

    .line 440
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .line 413
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :pswitch_66
    :try_start_66
    const-string v5, "SecHardwareInterface"

    const-string v6, "flash will be off"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4f

    .line 435
    :catch_73
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_5a

    .line 417
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :pswitch_76
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flash will be on value with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4f

    .line 421
    :pswitch_94
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flash will be on value with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4f

    .line 425
    :pswitch_b2
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flash will be on value with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_cf} :catch_73

    goto :goto_4f

    .line 410
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_66
        :pswitch_76
        :pswitch_94
        :pswitch_b2
    .end packed-switch
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .registers 9
    .parameter "max_freq"

    .prologue
    .line 354
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 355
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 357
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMaxCPUFreq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_36

    .line 367
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_43

    move-object v2, v3

    .line 377
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_30
    return-void

    .line 362
    :catch_31
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_30

    .line 369
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_36
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    :goto_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 372
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_30

    .line 373
    :catch_3e
    move-exception v1

    .line 374
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 369
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_43
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_37
.end method

.method public static setPowerSaveFPS(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 348
    const-string v1, "SecHardwareInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveFPS ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_2c

    const-string v0, "true"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v1, "dev.powersave_fps"

    if-eqz p0, :cond_2f

    const-string v0, "1"

    :goto_28
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 348
    :cond_2c
    const-string v0, "false"

    goto :goto_11

    .line 350
    :cond_2f
    const-string v0, "0"

    goto :goto_28
.end method

.method public static setmDNIeOutDoor(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 274
    const-string v6, "SecHardwareInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setmDNIeOutDoor ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p0, :cond_42

    const-string v5, "true"

    :goto_11
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x0

    .line 279
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    :try_start_25
    new-array v0, v5, [B
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27} :catch_4a

    .line 283
    .local v0, buffer:[B
    :try_start_27
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/mdnie/mdnie/outdoor"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_33} :catch_45
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_33} :catch_4a

    .line 289
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p0, :cond_57

    .line 290
    const/4 v5, 0x0

    const/16 v6, 0x31

    :try_start_38
    aput-byte v6, v0, v5

    .line 294
    :goto_3a
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 295
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_5d

    move-object v3, v4

    .line 305
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_41
    return-void

    .line 274
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_42
    const-string v5, "false"

    goto :goto_11

    .line 284
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_45
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_41

    .line 296
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4a
    move-exception v1

    .line 297
    .local v1, e:Ljava/io/IOException;
    :goto_4b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_41

    .line 300
    :catch_52
    move-exception v2

    .line 301
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_57
    const/4 v5, 0x0

    const/16 v6, 0x30

    :try_start_5a
    aput-byte v6, v0, v5
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5c} :catch_5d

    goto :goto_3a

    .line 296
    :catch_5d
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_4b
.end method

.method public static setmDNIeUIMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 130
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    :try_start_3
    new-array v0, v5, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_26

    .line 134
    .local v0, buffer:[B
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/mdnie/mdnie/scenario"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_26

    .line 140
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    sparse-switch p0, :sswitch_data_a4

    .line 144
    const/4 v5, 0x0

    const/16 v6, 0x30

    :try_start_17
    aput-byte v6, v0, v5

    .line 205
    :goto_19
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_39

    move-object v3, v4

    .line 216
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_20
    return-void

    .line 135
    .restart local v0       #buffer:[B
    :catch_21
    move-exception v1

    .line 136
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_20

    .line 207
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/IOException;
    :goto_27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_20

    .line 211
    :catch_2e
    move-exception v2

    .line 212
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 148
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :sswitch_33
    const/4 v5, 0x0

    const/16 v6, 0x31

    :try_start_36
    aput-byte v6, v0, v5

    goto :goto_19

    .line 207
    :catch_39
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_27

    .line 152
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :sswitch_3c
    const/4 v5, 0x0

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    goto :goto_19

    .line 156
    :sswitch_42
    const/4 v5, 0x0

    const/16 v6, 0x33

    aput-byte v6, v0, v5

    goto :goto_19

    .line 160
    :sswitch_48
    const/4 v5, 0x0

    const/16 v6, 0x34

    aput-byte v6, v0, v5

    goto :goto_19

    .line 164
    :sswitch_4e
    const/4 v5, 0x0

    const/16 v6, 0x35

    aput-byte v6, v0, v5

    goto :goto_19

    .line 168
    :sswitch_54
    const/4 v5, 0x0

    const/16 v6, 0x36

    aput-byte v6, v0, v5

    goto :goto_19

    .line 172
    :sswitch_5a
    const/4 v5, 0x0

    const/16 v6, 0x37

    aput-byte v6, v0, v5

    goto :goto_19

    .line 176
    :sswitch_60
    const/4 v5, 0x0

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    .line 177
    const/4 v5, 0x1

    const/16 v6, 0x30

    aput-byte v6, v0, v5

    goto :goto_19

    .line 181
    :sswitch_6b
    const/4 v5, 0x0

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    .line 182
    const/4 v5, 0x1

    const/16 v6, 0x31

    aput-byte v6, v0, v5

    goto :goto_19

    .line 186
    :sswitch_76
    const/4 v5, 0x0

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    .line 187
    const/4 v5, 0x1

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    goto :goto_19

    .line 191
    :sswitch_81
    const/4 v5, 0x0

    const/16 v6, 0x34

    aput-byte v6, v0, v5

    .line 192
    const/4 v5, 0x1

    const/16 v6, 0x30

    aput-byte v6, v0, v5

    goto :goto_19

    .line 196
    :sswitch_8c
    const/4 v5, 0x0

    const/16 v6, 0x34

    aput-byte v6, v0, v5

    .line 197
    const/4 v5, 0x1

    const/16 v6, 0x31

    aput-byte v6, v0, v5

    goto :goto_19

    .line 201
    :sswitch_97
    const/4 v5, 0x0

    const/16 v6, 0x34

    aput-byte v6, v0, v5

    .line 202
    const/4 v5, 0x1

    const/16 v6, 0x32

    aput-byte v6, v0, v5
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_a1} :catch_39

    goto/16 :goto_19

    .line 140
    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_33
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_42
        0x4 -> :sswitch_48
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_54
        0x7 -> :sswitch_5a
        0x14 -> :sswitch_60
        0x15 -> :sswitch_6b
        0x16 -> :sswitch_76
        0x28 -> :sswitch_81
        0x29 -> :sswitch_8c
        0x2a -> :sswitch_97
    .end sparse-switch
.end method

.method public static setmDNIeUserMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 229
    const/4 v3, 0x0

    .line 232
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x64

    :try_start_3
    new-array v0, v5, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_26

    .line 236
    .local v0, buffer:[B
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/mdnie/mdnie/mode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_26

    .line 241
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    packed-switch p0, :pswitch_data_48

    .line 245
    const/4 v5, 0x0

    const/16 v6, 0x30

    :try_start_17
    aput-byte v6, v0, v5

    .line 260
    :goto_19
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_39

    move-object v3, v4

    .line 271
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_20
    return-void

    .line 237
    .restart local v0       #buffer:[B
    :catch_21
    move-exception v1

    .line 238
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_20

    .line 262
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    :goto_27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_20

    .line 266
    :catch_2e
    move-exception v2

    .line 267
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :pswitch_33
    const/4 v5, 0x0

    const/16 v6, 0x31

    :try_start_36
    aput-byte v6, v0, v5

    goto :goto_19

    .line 262
    :catch_39
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_27

    .line 253
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :pswitch_3c
    const/4 v5, 0x0

    const/16 v6, 0x32

    aput-byte v6, v0, v5

    goto :goto_19

    .line 257
    :pswitch_42
    const/4 v5, 0x0

    const/16 v6, 0x33

    aput-byte v6, v0, v5
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_47} :catch_39

    goto :goto_19

    .line 241
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method
