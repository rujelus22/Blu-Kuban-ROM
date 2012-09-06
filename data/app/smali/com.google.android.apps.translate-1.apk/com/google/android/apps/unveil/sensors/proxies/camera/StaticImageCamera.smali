.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;
.super Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.source "StaticImageCamera.java"


# static fields
.field private static final LOCAL_ROOT_PATH:Ljava/lang/String; = "/sdcard/goggles_data/static_images"

.field public static final STATIC_IMAGE_DIRECTORY:Ljava/lang/String; = "static_images"

.field public static final STATIC_IMAGE_KEY:Ljava/lang/String; = "static_image"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private internalBitmap:Landroid/graphics/Bitmap;

.field private rVal:I

.field private rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

.field private scaledImage:Landroid/graphics/Bitmap;

.field private step:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V
    .registers 5
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->step:I

    .line 56
    return-void
.end method

.method private static createScaledImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "image"
    .parameter "dspW"
    .parameter "dspH"

    .prologue
    const/4 v5, 0x0

    .line 122
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    .local v1, srcRect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 124
    .local v0, dstRect:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v2, transform:Landroid/graphics/Matrix;
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 126
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 127
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private static getStaticImages(Landroid/preference/PreferenceActivity;)[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    .registers 17
    .parameter "preferenceActivity"

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, allImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;>;"
    new-instance v11, Ljava/io/File;

    const-string v12, "/sdcard/goggles_data/static_images"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v11, rootImageDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, imageFiles:[Ljava/lang/String;
    if-eqz v8, :cond_4a

    .line 153
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_15
    if-ge v4, v9, :cond_4a

    aget-object v7, v1, v4

    .line 154
    .local v7, imageFile:Ljava/lang/String;
    new-instance v12, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdcard:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard:/sdcard/goggles_data/static_images/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 162
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #imageFile:Ljava/lang/String;
    .end local v9           #len$:I
    :cond_4a
    :try_start_4a
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 163
    .local v10, manager:Landroid/content/res/AssetManager;
    const-string v12, "static_images"

    invoke-virtual {v10, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, assetsImages:[Ljava/lang/String;
    if-eqz v2, :cond_99

    .line 165
    move-object v1, v2

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v9, v1

    .restart local v9       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_59
    if-ge v4, v9, :cond_99

    aget-object v6, v1, v4

    .line 166
    .local v6, imageAsset:Ljava/lang/String;
    new-instance v12, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "assets:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "assets:static_images/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_8b} :catch_8e

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 171
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #assetsImages:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #imageAsset:Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #manager:Landroid/content/res/AssetManager;
    :catch_8e
    move-exception v3

    .line 172
    .local v3, e:Ljava/io/IOException;
    sget-object v12, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v13, "Couldn\'t list assets directory!"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .end local v3           #e:Ljava/io/IOException;
    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    .line 176
    .local v5, imageArray:[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    return-object v5
.end method

.method public static initializePreferences(Landroid/preference/PreferenceActivity;)V
    .registers 11
    .parameter "preferenceActivity"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getStaticImages(Landroid/preference/PreferenceActivity;)[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    move-result-object v6

    .line 187
    .local v6, options:[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    array-length v9, v6

    if-nez v9, :cond_16

    .line 188
    sget v9, Lcom/google/android/apps/unveil/R$string;->camera_static_image_key:I

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 190
    .local v7, pref:Landroid/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    .end local v7           #pref:Landroid/preference/Preference;
    :goto_15
    return-void

    .line 194
    :cond_16
    sget v9, Lcom/google/android/apps/unveil/R$string;->camera_static_image_key:I

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 197
    .local v4, lp:Landroid/preference/ListPreference;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v8, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2f
    if-ge v2, v3, :cond_40

    aget-object v5, v0, v2

    .line 201
    .local v5, option:Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    iget-object v9, v5, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v9, v5, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 205
    .end local v5           #option:Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public static open(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 4
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    if-nez v0, :cond_b

    .line 138
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    .line 140
    :cond_b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    return-object v0
.end method


# virtual methods
.method protected generateFrame()Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    .registers 15

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getWidth()I

    move-result v9

    .line 61
    .local v9, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getHeight()I

    move-result v4

    .line 63
    .local v4, height:I
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->internalBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_53

    .line 64
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->internalBitmap:Landroid/graphics/Bitmap;

    .line 66
    const/4 v5, 0x0

    .line 68
    .local v5, image:Landroid/graphics/Bitmap;
    const-string v10, "static_image"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getExtraValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 71
    sget-object v10, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Loading default image."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->resources:Landroid/content/res/Resources;

    sget v11, Lcom/google/android/apps/unveil/R$drawable;->android_logo:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 88
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->getHeight()I

    move-result v11

    invoke-static {v5, v10, v11}, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->createScaledImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->scaledImage:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    new-instance v10, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    iget-object v11, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, p0, v11}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 93
    .end local v2           #filePath:Ljava/lang/String;
    .end local v5           #image:Landroid/graphics/Bitmap;
    :cond_53
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v0, canvas:Landroid/graphics/Canvas;
    const/16 v10, 0xff

    iget v11, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    iget v12, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    div-int/lit8 v12, v12, 0x2

    iget v13, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 99
    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    int-to-float v11, v9

    mul-float/2addr v10, v11

    const/high16 v11, 0x40a0

    div-float v7, v10, v11

    .line 100
    .local v7, offsetX:F
    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    const/high16 v11, 0x40a0

    div-float v8, v10, v11

    .line 101
    .local v8, offsetY:F
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->scaledImage:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v7, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    iget-object v11, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->loadRgb(Landroid/graphics/Bitmap;)V

    .line 104
    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    const/16 v11, 0xfe

    if-eq v10, v11, :cond_96

    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    if-nez v10, :cond_9c

    .line 105
    :cond_96
    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->step:I

    mul-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->step:I

    .line 107
    :cond_9c
    iget v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    iget v11, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->step:I

    add-int/2addr v10, v11

    rem-int/lit16 v10, v10, 0xff

    iput v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rVal:I

    .line 109
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    return-object v10

    .line 74
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v7           #offsetX:F
    .end local v8           #offsetY:F
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v5       #image:Landroid/graphics/Bitmap;
    :cond_a8
    sget-object v10, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Loading image %s."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->fromAssets(Ljava/lang/String;)Z

    move-result v3

    .line 76
    .local v3, fromAssets:Z
    if-eqz v3, :cond_cb

    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getPathFromPrefixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, imageName:Ljava/lang/String;
    :goto_bf
    :try_start_bf
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->resources:Landroid/content/res/Resources;

    invoke-static {v10, v3, v6}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c8} :catch_cd

    move-result-object v5

    goto/16 :goto_39

    .end local v6           #imageName:Ljava/lang/String;
    :cond_cb
    move-object v6, v2

    .line 76
    goto :goto_bf

    .line 82
    .restart local v6       #imageName:Ljava/lang/String;
    :catch_cd
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Failed to decode asset %s; switching to default image"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v10, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/StaticImageCamera;->resources:Landroid/content/res/Resources;

    sget v11, Lcom/google/android/apps/unveil/R$drawable;->android_logo:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_39
.end method
