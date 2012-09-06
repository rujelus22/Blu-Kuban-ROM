.class final Lcom/google/android/music/utils/AlbumArtUtils$3;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtPipe(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$bm:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$bm:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1167
    const-string v1, "AlbumArtUtils"

    const-string v2, "Could not compress bitmap."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_24

    .line 1171
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 1176
    :goto_1a
    return-void

    .line 1172
    :catch_1b
    move-exception v0

    .line 1173
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "AlbumArtUtils"

    const-string v2, "couldn\'t close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 1170
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_24
    move-exception v1

    .line 1171
    :try_start_25
    iget-object v2, p0, Lcom/google/android/music/utils/AlbumArtUtils$3;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 1174
    :goto_2a
    throw v1

    .line 1172
    :catch_2b
    move-exception v0

    .line 1173
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v2, "AlbumArtUtils"

    const-string v3, "couldn\'t close"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method
