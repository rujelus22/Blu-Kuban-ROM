.class public Lcom/quramsoft/xiv/XIVCoder;
.super Ljava/lang/Object;
.source "XIVCoder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 10
    :try_start_0
    const-string v1, "XIVCoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    return-void

    .line 12
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 14
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "XIVCoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DecodeImageFromFile(Ljava/lang/String;Landroid/graphics/Bitmap;)I
.end method

.method public static native DecodeImageFromFileLite(Ljava/lang/String;Landroid/graphics/Bitmap;)I
.end method

.method public static native DecodeJPEGFromFile(Ljava/lang/String;Landroid/graphics/Bitmap;III)I
.end method

.method public static native EncodeImage(Landroid/graphics/Bitmap;[B)I
.end method

.method public static native EncodeImageLite(Landroid/graphics/Bitmap;[B)I
.end method

.method public static native ParseImageFromFile(Ljava/lang/String;[II)I
.end method

.method public static native ParseVCodecFromFile(Ljava/lang/String;[I)I
.end method
