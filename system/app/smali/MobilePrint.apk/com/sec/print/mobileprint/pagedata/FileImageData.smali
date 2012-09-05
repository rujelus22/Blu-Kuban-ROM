.class public Lcom/sec/print/mobileprint/pagedata/FileImageData;
.super Lcom/sec/print/mobileprint/pagedata/ImageData;
.source "FileImageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/FileImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileFullPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 203
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/FileImageData$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/FileImageData$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/FileImageData;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/pagedata/FileImageData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/pagedata/FileImageData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filePath"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/FileImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "filePath"
    .parameter "areaFrame"

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/FileImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 5
    .parameter "filePath"
    .parameter "areaFrame"
    .parameter "eImageFileFormat"

    .prologue
    .line 103
    invoke-direct {p0, p2, p3}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 7
    .parameter "filePath"
    .parameter "areaFrame"
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    .line 132
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "filePath"
    .parameter "fCropping"

    .prologue
    .line 69
    invoke-direct {p0, p2}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Z)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/FileImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 6
    .parameter "filePath"
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    .line 117
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z
    .registers 7
    .parameter "eImageFileFormat"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    sget-object v3, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    if-eq p1, v3, :cond_d

    .line 140
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v2

    iput v2, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 177
    :goto_c
    return v1

    .line 144
    :cond_d
    iget-object v3, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    if-nez v3, :cond_13

    move v1, v2

    .line 145
    goto :goto_c

    .line 147
    :cond_13
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    iget-object v3, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v3, :cond_25

    move v1, v2

    .line 153
    goto :goto_c

    .line 156
    :cond_25
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_38

    .line 158
    sget-object v2, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_JPG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v2

    iput v2, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    goto :goto_c

    .line 160
    :cond_38
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4b

    .line 162
    sget-object v2, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_PNG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v2

    iput v2, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    goto :goto_c

    .line 164
    :cond_4b
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/bmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5e

    .line 166
    sget-object v2, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_BMP:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v2

    iput v2, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    goto :goto_c

    .line 168
    :cond_5e
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_71

    .line 170
    sget-object v2, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_GIF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v2

    iput v2, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    goto :goto_c

    :cond_71
    move v1, v2

    .line 174
    goto :goto_c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/pagedata/ImageData;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/sec/print/mobileprint/pagedata/ImageData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/FileImageData;->fileFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return-void
.end method
