.class public abstract Lcom/infraware/office/evengine/EvClipBoardHelper;
.super Ljava/lang/Object;
.source "EvClipBoardHelper.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvClipBoardHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 21
    iput-object p1, p0, Lcom/infraware/office/evengine/EvClipBoardHelper;->mActivity:Landroid/app/Activity;

    .line 22
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->createClipboardDirectoty()Z

    .line 23
    return-void
.end method

.method public static bitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 9
    .parameter "bm"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 44
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 47
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_1c

    .line 52
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 55
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1e

    .line 57
    const/4 v4, 0x1

    move-object v1, v2

    .line 61
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :goto_1b
    return v4

    .line 48
    :catch_1c
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_1b

    .line 59
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v1, v2

    .line 61
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1b
.end method

.method public static file2Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "path"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v0

    move-object v2, v0

    .line 73
    :goto_6
    return-object v2

    .line 69
    :catch_7
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_6
.end method


# virtual methods
.method public ClipBoardfinalize()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvClipBoardHelper;->mActivity:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method public abstract OnEditCopyCut(ILjava/lang/String;)V
.end method

.method protected createClipboardDirectoty()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/.clipboard"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 103
    :cond_15
    :goto_15
    return v1

    .line 85
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 90
    goto :goto_15

    :cond_24
    move v1, v2

    .line 94
    goto :goto_15

    .line 100
    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 103
    goto :goto_15
.end method

.method public abstract doPaste(Lcom/infraware/office/evengine/EvInterface;)Z
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract hasText()Z
.end method

.method public abstract setData(ILjava/lang/String;)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method
