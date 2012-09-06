.class public final Lcom/dropbox/android/util/aW;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Ldbxyzptlk/l/o;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 5
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010030

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 70
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 59
    const-string v0, ""

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_37

    .line 61
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/dropbox/android/util/aW;->b(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_15

    .line 29
    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_13

    .line 33
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 29
    goto :goto_12

    .line 30
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_23

    .line 31
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_12

    move v0, v1

    goto :goto_12

    :cond_23
    move v0, v1

    .line 33
    goto :goto_12
.end method

.method private static b(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 37
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_26

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_22

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_22

    .line 48
    const-string v0, "x-large"

    .line 50
    :goto_15
    return-object v0

    .line 39
    :pswitch_16
    const-string v0, "small"

    goto :goto_15

    .line 41
    :pswitch_19
    const-string v0, "normal"

    goto :goto_15

    .line 43
    :pswitch_1c
    const-string v0, "large"

    goto :goto_15

    .line 45
    :pswitch_1f
    const-string v0, "undefined"

    goto :goto_15

    .line 50
    :cond_22
    const-string v0, ""

    goto :goto_15

    .line 37
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 81
    const-string v1, "BNRV200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "BNTV250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "NOOKcolor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static c()I
    .registers 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    .line 86
    const v0, 0x1030128

    .line 90
    :goto_9
    return v0

    .line 87
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_14

    .line 88
    const v0, 0x103006b

    goto :goto_9

    .line 90
    :cond_14
    const v0, 0x1030005

    goto :goto_9
.end method

.method public static d()Ldbxyzptlk/l/o;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Ldbxyzptlk/l/o;->d:Ldbxyzptlk/l/o;

    return-object v0
.end method

.method public static e()Ldbxyzptlk/l/o;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Ldbxyzptlk/l/o;->c:Ldbxyzptlk/l/o;

    return-object v0
.end method

.method public static f()Ldbxyzptlk/l/o;
    .registers 5

    .prologue
    const/16 v3, 0x280

    .line 103
    sget-object v0, Lcom/dropbox/android/util/aW;->a:Ldbxyzptlk/l/o;

    if-nez v0, :cond_2e

    .line 104
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    if-le v1, v0, :cond_41

    .line 120
    :goto_24
    if-gt v1, v3, :cond_31

    const/16 v2, 0x1e0

    if-gt v0, v2, :cond_31

    .line 121
    sget-object v0, Ldbxyzptlk/l/o;->g:Ldbxyzptlk/l/o;

    sput-object v0, Lcom/dropbox/android/util/aW;->a:Ldbxyzptlk/l/o;

    .line 129
    :cond_2e
    :goto_2e
    sget-object v0, Lcom/dropbox/android/util/aW;->a:Ldbxyzptlk/l/o;

    return-object v0

    .line 122
    :cond_31
    const/16 v2, 0x3c0

    if-gt v1, v2, :cond_3c

    if-gt v0, v3, :cond_3c

    .line 123
    sget-object v0, Ldbxyzptlk/l/o;->h:Ldbxyzptlk/l/o;

    sput-object v0, Lcom/dropbox/android/util/aW;->a:Ldbxyzptlk/l/o;

    goto :goto_2e

    .line 125
    :cond_3c
    sget-object v0, Ldbxyzptlk/l/o;->i:Ldbxyzptlk/l/o;

    sput-object v0, Lcom/dropbox/android/util/aW;->a:Ldbxyzptlk/l/o;

    goto :goto_2e

    :cond_41
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_24
.end method
