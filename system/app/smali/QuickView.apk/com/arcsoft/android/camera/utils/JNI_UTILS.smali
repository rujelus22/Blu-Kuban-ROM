.class public Lcom/arcsoft/android/camera/utils/JNI_UTILS;
.super Ljava/lang/Object;
.source "JNI_UTILS.java"


# static fields
.field public static final JNI_UTILS_PICTURE_PROCESS:I = 0x1000000

.field public static final JNI_UTILS_PICTURE_PROCESS_PHOTOFIX:I = 0x1000001


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddGeoTag(ILjava/lang/String;Lcom/arcsoft/android/camera/utils/MLocationInfo;)I
.end method

.method public static native CreateAMCM()I
.end method

.method public static native DestroyAMCM(I)I
.end method

.method public static native GetFrameDecodeBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)I
.end method

.method public static native GetHistogram(II[BII[I)I
.end method

.method public static native GetImageSize(ILjava/lang/String;Lcom/arcsoft/android/camera/utils/MSize;)I
.end method

.method public static native GetVideoThumbnail(Ljava/lang/String;Lcom/arcsoft/android/camera/utils/MSize;Landroid/graphics/Bitmap;)I
.end method

.method public static native MdBitmapLoad(ILjava/lang/String;IIIILjava/lang/Object;)I
.end method

.method public static native PictureProcess(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public static native SaveStreamToFile(ILjava/lang/Object;Ljava/lang/String;)I
.end method
