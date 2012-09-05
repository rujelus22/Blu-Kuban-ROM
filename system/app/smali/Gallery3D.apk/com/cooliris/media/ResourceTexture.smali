.class public final Lcom/cooliris/media/ResourceTexture;
.super Lcom/cooliris/media/Texture;
.source "ResourceTexture.java"


# instance fields
.field private final mResourceId:I

.field private final mScaled:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .parameter "resourceId"
    .parameter "scaled"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 36
    iput p1, p0, Lcom/cooliris/media/ResourceTexture;->mResourceId:I

    .line 37
    iput-boolean p2, p0, Lcom/cooliris/media/ResourceTexture;->mScaled:Z

    .line 38
    return-void
.end method


# virtual methods
.method public isCached()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "view"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/cooliris/media/ResourceTexture;->mScaled:Z

    if-eqz v4, :cond_19

    .line 45
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/cooliris/media/ResourceTexture;->mResourceId:I

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_18
    :goto_18
    return-object v0

    .line 49
    :cond_19
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/cooliris/media/ResourceTexture;->mResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 50
    .local v2, inputStream:Ljava/io/InputStream;
    if-eqz v2, :cond_18

    .line 52
    :try_start_25
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 54
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_3c

    move-result-object v0

    .line 59
    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_18

    .line 60
    :catch_37
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 55
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3c
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_49

    .line 59
    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_18

    .line 60
    :catch_44
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    :catchall_49
    move-exception v4

    .line 59
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 62
    :goto_4d
    throw v4

    .line 60
    :catch_4e
    move-exception v1

    .line 61
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d
.end method
