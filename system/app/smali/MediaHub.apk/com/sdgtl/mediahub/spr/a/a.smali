.class public final Lcom/sdgtl/mediahub/spr/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/a/a;->b:Z

    sput v1, Lcom/sdgtl/mediahub/spr/a/a;->c:I

    sput v1, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    sput v1, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    sput v1, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/a/a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "available_network"

    invoke-static {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->d()Z

    move-result v0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/a/a;->b:Z

    sput-object p0, Lcom/sdgtl/mediahub/spr/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a/a;->b:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->c:I

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->c:I

    sparse-switch v0, :sswitch_data_9e

    move v0, v2

    :goto_23
    return v0

    :sswitch_24
    move v0, v1

    goto :goto_23

    :sswitch_26
    const-string v0, "02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_36
    move v0, v1

    goto :goto_23

    :sswitch_38
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_40
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->d:I
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_46} :catch_7c

    :goto_46
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    packed-switch v0, :pswitch_data_ac

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "TMK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "TMB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_61
    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_71
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    if-eq v0, v1, :cond_9c

    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9c

    move v0, v1

    goto :goto_23

    :catch_7c
    move-exception v0

    sput v2, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    goto :goto_46

    :pswitch_80
    const-string v0, "02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_90
    move v0, v1

    goto :goto_23

    :cond_92
    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v1

    goto :goto_23

    :cond_9c
    move v0, v2

    goto :goto_23

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_38
        0x1 -> :sswitch_24
        0x6 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0xd
        :pswitch_80
    .end packed-switch
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->c:I

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x2

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "TMK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "TMB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    :goto_21
    return v1

    :cond_22
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sdgtl/mediahub/spr/a/a;->c:I

    sparse-switch v5, :sswitch_data_98

    :cond_2b
    move v0, v1

    :cond_2c
    :goto_2c
    move v1, v0

    goto :goto_21

    :sswitch_2e
    const/4 v0, 0x0

    goto :goto_2c

    :sswitch_30
    const-string v2, "02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2c

    :sswitch_39
    const-string v5, "TMK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "TMB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    :cond_49
    const-string v3, "02"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "01"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_59
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const-string v3, "SAMSUNG-SGH-T849"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "SGH-T849"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "SAMSUNG-SGH-T959"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "SGH-T959"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_7d
    move v0, v2

    goto :goto_2c

    :cond_7f
    sget v3, Lcom/sdgtl/mediahub/spr/a/a;->d:I

    packed-switch v3, :pswitch_data_a6

    const-string v0, "01"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :pswitch_8e
    const-string v2, "02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2c

    nop

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_39
        0x1 -> :sswitch_2e
        0x6 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0xd
        :pswitch_8e
    .end packed-switch
.end method

.method public static c()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/a/a;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->a:Z

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->b()Z

    move-result v0

    :goto_d
    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSimChecked == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_26

    :goto_23
    return v1

    :cond_24
    move v0, v1

    goto :goto_d

    :cond_26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_3e

    const-string v3, "SCH-I800"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "SAMSUNG-SCH-I800"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3a
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J

    goto :goto_23

    :cond_3e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY)  == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY_CDMA)  == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "android.hardware.telephony.cdma"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY_GSM)  == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "android.hardware.telephony.gsm"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d7

    const-string v3, "android.hardware.telephony.gsm"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_a8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v1, :cond_b4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_bb

    :cond_b4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J

    move v1, v2

    goto/16 :goto_23

    :cond_bb
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J
    :try_end_bf
    .catch Ljava/lang/SecurityException; {:try_start_a8 .. :try_end_bf} :catch_c1

    goto/16 :goto_23

    :catch_c1
    move-exception v0

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J

    goto/16 :goto_23

    :cond_c7
    const-string v3, "android.hardware.telephony.cdma"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J

    goto/16 :goto_23

    :cond_d4
    move v1, v2

    goto/16 :goto_23

    :cond_d7
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Z)J

    goto/16 :goto_23
.end method

.method public static d(Landroid/content/Context;)I
    .registers 9

    const/16 v7, 0xa0

    const/16 v6, 0x78

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    if-nez p0, :cond_11

    :cond_e
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v3, :cond_3d

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v6, :cond_3d

    const/4 v0, 0x0

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    :goto_3a
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_10

    :cond_3d
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v3, :cond_4a

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v7, :cond_4a

    sput v3, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_4a
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v3, :cond_5a

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_5a

    const/4 v0, 0x2

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_5a
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_68

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v6, :cond_68

    const/4 v0, 0x7

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_68
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_77

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v7, :cond_77

    const/16 v0, 0x8

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_77
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_88

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_88

    const/16 v0, 0x9

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_88
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_99

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v0, v3, :cond_99

    const/16 v0, 0xa

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_99
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_a8

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v6, :cond_a8

    const/16 v0, 0xb

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_a8
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_b7

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v7, :cond_b7

    const/16 v0, 0xc

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto :goto_3a

    :cond_b7
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_c9

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_c9

    const/16 v0, 0xd

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto/16 :goto_3a

    :cond_c9
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_db

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v0, v3, :cond_db

    const/16 v0, 0xe

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto/16 :goto_3a

    :cond_db
    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_ed

    const/4 v0, 0x6

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto/16 :goto_3a

    :cond_ed
    const/4 v0, 0x5

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->e:I

    goto/16 :goto_3a
.end method

.method private static d()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.server.TvOutService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_c

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9

    :catch_c
    move-exception v1

    const-string v1, "MediaHubAPP"

    const-string v2, "com.android.server.TvOutService Class Not Found "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static e(Landroid/content/Context;)I
    .registers 5

    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    if-nez p0, :cond_a

    :cond_7
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3a

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_40

    :cond_3a
    const/4 v0, 0x1

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    :goto_3d
    sget v0, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    goto :goto_9

    :cond_40
    const/4 v0, 0x0

    sput v0, Lcom/sdgtl/mediahub/spr/a/a;->f:I

    goto :goto_3d
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v1, :cond_16

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_1a

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v2

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17

    :catch_1a
    move-exception v0

    move v0, v2

    goto :goto_17
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "hd_available_device"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "available_network"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "NotAvailableNetwork"

    :cond_a
    return-object v0
.end method
