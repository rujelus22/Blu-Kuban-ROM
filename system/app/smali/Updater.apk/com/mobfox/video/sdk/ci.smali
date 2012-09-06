.class public final Lcom/mobfox/video/sdk/ci;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Ljava/util/HashMap;


# instance fields
.field private d:Ljava/util/HashMap;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/video/sdk/ci;->a:Z

    sput-boolean v0, Lcom/mobfox/video/sdk/ci;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ci;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/mobfox/video/sdk/ci;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobfox/video/sdk/ci;->f:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "defaultresources/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_9f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_79

    move-result-object v7

    :try_start_1c
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_bb

    if-eqz v7, :cond_40

    :try_start_3d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_af

    :cond_40
    :goto_40
    return-object v0

    :cond_41
    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    int-to-float v5, v1

    invoke-static {v4, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    int-to-float v8, v3

    invoke-static {v5, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-ne v4, v1, :cond_63

    if-eq v0, v3, :cond_68

    :cond_63
    const/4 v1, 0x0

    invoke-static {v2, v4, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_68
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_71} :catch_bb

    if-eqz v7, :cond_40

    :try_start_73
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_40

    :catch_77
    move-exception v1

    goto :goto_40

    :catch_79
    move-exception v0

    move-object v0, v6

    :goto_7b
    :try_start_7b
    const-string v1, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobFox ResourceManager cannot find resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7b .. :try_end_98} :catchall_b7

    :cond_98
    if-eqz v0, :cond_9d

    :try_start_9a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_b1

    :cond_9d
    :goto_9d
    move-object v0, v6

    goto :goto_40

    :catchall_9f
    move-exception v0

    move-object v7, v6

    :goto_a1
    if-eqz v7, :cond_a6

    :try_start_a3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_b3

    :cond_a6
    :goto_a6
    throw v0

    :cond_a7
    if-eqz v7, :cond_9d

    :try_start_a9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_9d

    :catch_ad
    move-exception v0

    goto :goto_9d

    :catch_af
    move-exception v1

    goto :goto_40

    :catch_b1
    move-exception v0

    goto :goto_9d

    :catch_b3
    move-exception v1

    goto :goto_a6

    :catchall_b5
    move-exception v0

    goto :goto_a1

    :catchall_b7
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_a1

    :catch_bb
    move-exception v0

    move-object v0, v7

    goto :goto_7b
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/ci;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ci;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    const/4 v3, 0x0

    const-string v0, "mofix"

    const-string v1, "loading_res"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_21

    const-string v0, "MOBFOX"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "MOBFOX"

    const-string v1, "MobFox ResourceManager default resources already intialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/16 v0, -0xb

    const-string v1, "mobfox_video_play.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0xc

    const-string v1, "mobfox_video_pause.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0xd

    const-string v1, "mobfox_video_replay.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0xe

    const-string v1, "mobfox_browser_back.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0xf

    const-string v1, "mobfox_browser_forward.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0x10

    const-string v1, "mobfox_video_replay.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0x11

    const-string v1, "mobfox_browser_external.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, -0x12

    const-string v1, "mobfox_skip.png"

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v1, -0x1

    const-string v2, "mobfox_bar.png"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    const-string v2, "mobfox_bar.png"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x3

    const-string v2, "mobfox_videobutton_bg.9.png"

    const-string v3, "mobfox_videobutton_bg_pressed.9.png"

    const-string v4, "mobfox_videobutton_bg_selected.9.png"

    const-string v5, "mobfox_videobutton_bg_disabled.9.png"

    const-string v6, "mobfox_videobutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x4

    const-string v2, "mobfox_videobutton_bg.9.png"

    const-string v3, "mobfox_videobutton_bg_pressed.9.png"

    const-string v4, "mobfox_videobutton_bg_selected.9.png"

    const-string v5, "mobfox_videobutton_bg_disabled.9.png"

    const-string v6, "mobfox_videobutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x5

    const-string v2, "mobfox_videobutton_bg.9.png"

    const-string v3, "mobfox_videobutton_bg_pressed.9.png"

    const-string v4, "mobfox_videobutton_bg_selected.9.png"

    const-string v5, "mobfox_videobutton_bg_disabled.9.png"

    const-string v6, "mobfox_videobutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x9

    const-string v2, "mobfox_browserbutton_bg.9.png"

    const-string v3, "mobfox_browserbutton_bg_pressed.9.png"

    const-string v4, "mobfox_browserbutton_bg_selected.9.png"

    const-string v5, "mobfox_browserbutton_bg_disabled.9.png"

    const-string v6, "mobfox_browserbutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x6

    const-string v2, "mobfox_browserbutton_bg.9.png"

    const-string v3, "mobfox_browserbutton_bg_pressed.9.png"

    const-string v4, "mobfox_browserbutton_bg_selected.9.png"

    const-string v5, "mobfox_browserbutton_bg_disabled.9.png"

    const-string v6, "mobfox_browserbutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    const-string v2, "mobfox_browserbutton_bg.9.png"

    const-string v3, "mobfox_browserbutton_bg_pressed.9.png"

    const-string v4, "mobfox_browserbutton_bg_selected.9.png"

    const-string v5, "mobfox_browserbutton_bg_disabled.9.png"

    const-string v6, "mobfox_browserbutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x8

    const-string v2, "mobfox_browserbutton_bg.9.png"

    const-string v3, "mobfox_browserbutton_bg_pressed.9.png"

    const-string v4, "mobfox_browserbutton_bg_selected.9.png"

    const-string v5, "mobfox_browserbutton_bg_disabled.9.png"

    const-string v6, "mobfox_browserbutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0xa

    const-string v2, "mobfox_skipbutton_bg.9.png"

    const-string v3, "mobfox_skipbutton_bg_pressed.9.png"

    const-string v4, "mobfox_skipbutton_bg_selected.9.png"

    const-string v5, "mobfox_skipbutton_bg_disabled.9.png"

    const-string v6, "mobfox_skipbutton_bg_disabled_selected.9.png"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-static {p0, p2}, Lcom/mobfox/video/sdk/ci;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-void

    :cond_10
    const-string v0, "registerImageResource"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawable was null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-static {p0, p3}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_63

    new-array v4, v1, [I

    const v5, 0x10100a7

    aput v5, v4, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    :goto_18
    invoke-static {p0, p6}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_28

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    :cond_28
    invoke-static {p0, p5}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_39

    new-array v0, v1, [I

    const v5, -0x101009e

    aput v5, v0, v2

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    :cond_39
    invoke-static {p0, p4}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4a

    new-array v0, v1, [I

    const v5, 0x10100a1

    aput v5, v0, v2

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    :cond_4a
    invoke-static {p0, p2}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_61

    new-array v0, v2, [I

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_55
    if-eqz v1, :cond_60

    sget-object v0, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return-void

    :cond_61
    move v1, v0

    goto :goto_55

    :cond_63
    move v0, v2

    goto :goto_18

    nop

    :array_66
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/mobfox/video/sdk/ci;->a:Z

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "defaultresources/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_59

    move-result-object v2

    :try_start_1c
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    int-to-float v7, v4

    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    int-to-float v8, v5

    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-ne v6, v4, :cond_44

    if-eq v3, v5, :cond_9e

    :cond_44
    const/4 v4, 0x0

    invoke-static {v0, v6, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    :goto_4a
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_53} :catch_9b

    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_8f

    :cond_58
    :goto_58
    return-object v0

    :catch_59
    move-exception v0

    move-object v0, v1

    :goto_5b
    :try_start_5b
    const-string v2, "MOBFOX"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string v2, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MobFox ResourceManager cannot find resource "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_97

    :cond_78
    if-eqz v0, :cond_7d

    :try_start_7a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_91

    :cond_7d
    :goto_7d
    move-object v0, v1

    goto :goto_58

    :catchall_7f
    move-exception v0

    move-object v2, v1

    :goto_81
    if-eqz v2, :cond_86

    :try_start_83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_93

    :cond_86
    :goto_86
    throw v0

    :cond_87
    if-eqz v2, :cond_7d

    :try_start_89
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_7d

    :catch_8d
    move-exception v0

    goto :goto_7d

    :catch_8f
    move-exception v1

    goto :goto_58

    :catch_91
    move-exception v0

    goto :goto_7d

    :catch_93
    move-exception v1

    goto :goto_86

    :catchall_95
    move-exception v0

    goto :goto_81

    :catchall_97
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_81

    :catch_9b
    move-exception v0

    move-object v0, v2

    goto :goto_5b

    :cond_9e
    move-object v3, v0

    goto :goto_4a
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/ci;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ci;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/mobfox/video/sdk/ci;->d:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/mobfox/video/sdk/cj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ci;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mobfox/video/sdk/cj;-><init>(Lcom/mobfox/video/sdk/ci;Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_19
    return-void
.end method

.method public final a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/mobfox/video/sdk/ci;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Lcom/mobfox/video/sdk/ci;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/mobfox/video/sdk/ci;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_1a
    return-object v0
.end method
