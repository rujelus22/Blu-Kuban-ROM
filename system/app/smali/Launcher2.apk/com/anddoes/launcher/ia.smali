.class public final Lcom/anddoes/launcher/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(FFF)F
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 539
    sub-float v1, p2, p1

    .line 540
    const/high16 v0, 0x43c8

    div-float v0, p0, v0

    sub-float/2addr v0, v4

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 541
    cmpl-float v2, v1, v3

    if-lez v2, :cond_19

    cmpl-float v2, v0, p2

    if-lez v2, :cond_19

    move v0, p2

    .line 544
    :cond_19
    cmpg-float v1, v1, v3

    if-gez v1, :cond_22

    cmpg-float v1, v0, p2

    if-gez v1, :cond_22

    .line 547
    :goto_21
    return p2

    :cond_22
    move p2, v0

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v3, v2

    .line 382
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 384
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 385
    const/4 v2, 0x1

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 386
    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 387
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 388
    const/4 v2, 0x1

    .line 389
    :goto_25
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-double v5, v5

    .line 390
    const-wide/high16 v7, 0x3ff0

    int-to-double v9, v2

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 389
    mul-double/2addr v5, v7

    .line 390
    mul-int v7, v3, v3

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_62

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 394
    const/4 v3, 0x1

    if-le v2, v3, :cond_65

    .line 397
    add-int/lit8 v2, v2, -0x1

    .line 398
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 399
    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 400
    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    :goto_56
    if-eqz v0, :cond_5c

    .line 406
    invoke-static {v0, p0}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5b} :catch_6a

    move-result-object v0

    .line 412
    :cond_5c
    if-eqz v1, :cond_61

    .line 413
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_7c

    .line 419
    :cond_61
    :goto_61
    return-object v0

    .line 391
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 402
    :cond_65
    :try_start_65
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6a

    move-result-object v0

    goto :goto_56

    .line 408
    :catch_6a
    move-exception v2

    .line 412
    if-eqz v1, :cond_61

    .line 413
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_61

    .line 416
    :catch_71
    move-exception v1

    goto :goto_61

    .line 410
    :catchall_73
    move-exception v0

    .line 412
    if-eqz v1, :cond_79

    .line 413
    :try_start_76
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    .line 418
    :cond_79
    :goto_79
    throw v0

    :catch_7a
    move-exception v1

    goto :goto_79

    :catch_7c
    move-exception v1

    goto :goto_61
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-static {p0, p1}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    move-object v0, v1

    .line 127
    :cond_16
    :goto_16
    return-object v0

    .line 103
    :cond_17
    :try_start_17
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    .line 104
    const-string v4, "getDefaultPaddingForWidget"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 105
    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v5, v6

    .line 103
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_45} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_45} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_45} :catch_91

    move v1, v2

    .line 112
    :goto_46
    if-nez v1, :cond_16

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 117
    :try_start_4c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_95

    move-result-object v1

    .line 123
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_16

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_16

    .line 108
    :catch_89
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_46

    .line 109
    :catch_8d
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_46

    :catch_91
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_46

    .line 120
    :catch_95
    move-exception v1

    goto :goto_16
.end method

.method public static a(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 235
    if-eqz p0, :cond_22

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_21
    return-object v0

    :cond_22
    const-string v0, ""

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-nez v0, :cond_e

    .line 84
    const-string v0, ""

    .line 86
    :cond_e
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 206
    .line 208
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_15

    move-result-object v1

    .line 212
    :goto_6
    if-eqz v1, :cond_14

    .line 213
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    if-nez v0, :cond_14

    .line 215
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 218
    :cond_14
    return-object v0

    :catch_15
    move-exception v1

    move-object v1, v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 242
    const-string v0, ""

    .line 243
    instance-of v1, p0, Landroid/content/ComponentName;

    if-eqz v1, :cond_d

    .line 244
    check-cast p0, Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_c
    :goto_c
    return-object v0

    .line 245
    :cond_d
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_37

    .line 246
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 247
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_c

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 250
    :cond_37
    instance-of v1, p0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_c

    .line 251
    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 252
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_48

    .line 253
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 255
    :cond_48
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://play.google.com/store/apps/details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "google"

    const-string v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_28
    return-object v0
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 76
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 282
    :goto_f
    return v0

    .line 280
    :cond_10
    const/4 v0, 0x0

    .line 282
    goto :goto_f
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_6
    return v0

    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method public static a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 262
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 263
    const/4 v0, 0x1

    .line 275
    :goto_5
    return v0

    .line 265
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 266
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 268
    :cond_c
    const-string v0, ""

    const-string v1, ""

    .line 269
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_18

    .line 270
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 272
    :cond_18
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_20

    .line 273
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 275
    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static a(Lcom/anddoes/launcher/Launcher;J)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 334
    const/4 v2, 0x1

    .line 335
    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->t:Z

    if-eqz v0, :cond_c

    move v0, v1

    .line 354
    :goto_b
    return v0

    .line 338
    :cond_c
    const-wide/16 v3, -0x64

    cmp-long v0, p1, v3

    if-eqz v0, :cond_18

    .line 339
    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-nez v0, :cond_48

    .line 340
    :cond_18
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->e()F

    move-result v3

    .line 341
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    .line 342
    invoke-static {p0}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v4

    .line 344
    if-eqz v0, :cond_40

    const/high16 v0, 0x42b8

    .line 343
    :goto_28
    mul-float/2addr v0, v3

    .line 346
    const/high16 v3, 0x3f00

    .line 343
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 347
    invoke-static {}, Lcom/anddoes/launcher/Launcher;->s()I

    move-result v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->o()V

    .line 349
    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->l()I

    move-result v3

    if-ge v3, v0, :cond_48

    move v0, v1

    .line 350
    goto :goto_b

    .line 345
    :cond_40
    if-eqz v4, :cond_45

    const/high16 v0, 0x428c

    goto :goto_28

    .line 346
    :cond_45
    const/high16 v0, 0x42a0

    goto :goto_28

    :cond_48
    move v0, v2

    goto :goto_b
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 455
    const/4 v6, 0x0

    .line 456
    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 460
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_38

    move-result-object v1

    .line 461
    :try_start_19
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_6a

    move-result-object v0

    .line 462
    const-wide/16 v2, 0x0

    :try_start_24
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_6a

    .line 463
    const/4 v2, 0x1

    .line 468
    if-eqz v1, :cond_31

    .line 469
    :try_start_2e
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 471
    :cond_31
    if-eqz v0, :cond_5a

    .line 472
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_59

    move v0, v2

    .line 479
    :goto_37
    return v0

    :catch_38
    move-exception v1

    move-object v1, v0

    .line 468
    :goto_3a
    if-eqz v1, :cond_3f

    .line 469
    :try_start_3c
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 471
    :cond_3f
    if-eqz v0, :cond_6c

    .line 472
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_44} :catch_46

    move v0, v6

    goto :goto_37

    .line 474
    :catch_46
    move-exception v0

    move v0, v6

    goto :goto_37

    .line 466
    :catchall_49
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 468
    :goto_4e
    if-eqz v2, :cond_53

    .line 469
    :try_start_50
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 471
    :cond_53
    if-eqz v1, :cond_58

    .line 472
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_5c

    .line 477
    :cond_58
    :goto_58
    throw v0

    :catch_59
    move-exception v0

    :cond_5a
    move v0, v2

    goto :goto_37

    :catch_5c
    move-exception v1

    goto :goto_58

    .line 466
    :catchall_5e
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4e

    :catchall_64
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4e

    :catch_6a
    move-exception v2

    goto :goto_3a

    :cond_6c
    move v0, v6

    goto :goto_37
.end method

.method public static b()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/anddoes/launcher/ia;->b()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_1b

    .line 178
    :try_start_f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 187
    :cond_1b
    :goto_1b
    return-object v0

    .line 182
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_28} :catch_2a

    move-result-object v0

    goto :goto_1b

    :catch_2a
    move-exception v1

    goto :goto_1b
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 530
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_35

    new-instance v0, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-direct {v0, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 535
    :goto_34
    return-void

    .line 531
    :cond_35
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 535
    :catch_3b
    move-exception v0

    goto :goto_34

    .line 531
    :cond_3d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_3b

    move-result-object v0

    goto :goto_23
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 317
    if-eqz p1, :cond_1e

    .line 318
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 319
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickSearchBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static c()I
    .registers 2

    .prologue
    .line 330
    const/high16 v0, 0x3f80

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->e()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 5
    .parameter

    .prologue
    .line 302
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 303
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickSearchBar"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 304
    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 305
    const v1, 0x7f020033

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 306
    const v1, 0x7f02007c

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 307
    const v1, 0x7f030033

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 309
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->e()F

    move-result v1

    .line 310
    const/high16 v2, 0x4290

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 311
    const/high16 v2, 0x4393

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 313
    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->e:Z

    .line 359
    return-void
.end method

.method public static d()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 485
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 486
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 487
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    const-string v4, "id\n"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 494
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 495
    if-nez v3, :cond_2c

    .line 510
    :cond_2b
    :goto_2b
    return v0

    .line 498
    :cond_2c
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 500
    const-string v2, "uid=0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 503
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 504
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_49

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2b

    .line 510
    const/4 v0, 0x1

    goto :goto_2b

    .line 508
    :catch_49
    move-exception v1

    goto :goto_2b
.end method

.method public static e(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 447
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "images/folder_bg.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 449
    :cond_1d
    const/4 v0, 0x0

    .line 451
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1e
.end method
