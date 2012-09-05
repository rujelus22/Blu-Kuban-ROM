.class public Lcom/sec/print/mobileprint/pagedata/K2MImageData;
.super Lcom/sec/print/mobileprint/pagedata/ImageData;
.source "K2MImageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/K2MImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handleK2Mobile:I

.field private pageNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/K2MImageData$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/K2MImageData$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "handleK2Mobile"
    .parameter "pageNum"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 56
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 57
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 59
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 60
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Rect;)V
    .registers 5
    .parameter "handleK2Mobile"
    .parameter "pageNum"
    .parameter "areaFrame"

    .prologue
    .line 89
    invoke-direct {p0, p3}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 90
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 91
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 93
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 94
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Rect;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 6
    .parameter "handleK2Mobile"
    .parameter "pageNum"
    .parameter "areaFrame"
    .parameter "eImageFileFormat"

    .prologue
    .line 107
    invoke-direct {p0, p3, p4}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 108
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 109
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 110
    return-void
.end method

.method private constructor <init>(IILandroid/graphics/Rect;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 8
    .parameter "handleK2Mobile"
    .parameter "pageNum"
    .parameter "areaFrame"
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    .line 138
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Landroid/graphics/Rect;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 139
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 140
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 141
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5
    .parameter "handleK2Mobile"
    .parameter "pageNum"
    .parameter "fCropping"

    .prologue
    .line 71
    invoke-direct {p0, p3}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(Z)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 72
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 73
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 75
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 76
    return-void
.end method

.method private constructor <init>(IIZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 7
    .parameter "handleK2Mobile"
    .parameter "pageNum"
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    .line 122
    invoke-direct {p0, p3, p4, p5}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>(ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 123
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 124
    iput p2, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 125
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/ImageData;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/pagedata/K2MImageData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/pagedata/K2MImageData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z
    .registers 4
    .parameter "eImageFileFormat"

    .prologue
    const/4 v1, 0x1

    .line 145
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    if-eq p1, v0, :cond_c

    .line 147
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 153
    :goto_b
    return v1

    .line 151
    :cond_c
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_PNG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    goto :goto_b
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getHandleK2Mobile()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    return v0
.end method

.method public getPageNum()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/pagedata/ImageData;->readFromParcel(Landroid/os/Parcel;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    .line 183
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/sec/print/mobileprint/pagedata/ImageData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->handleK2Mobile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/K2MImageData;->pageNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void
.end method
