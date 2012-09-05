.class public Lcom/sec/print/mobileprint/pagedata/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"

# interfaces
.implements Lcom/sec/print/mobileprint/pagedata/IPageData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;,
        Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;,
        Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;,
        Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/ImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areaFrameHeight:I

.field private areaFramePosX:I

.field private areaFramePosY:I

.field private areaFrameWidth:I

.field private cropping:I

.field protected imageFileFormat:I

.field private outputMode:I

.field private rotate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 321
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 147
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 149
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 151
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "areaFrame"

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 192
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 194
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 195
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 199
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 200
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 5
    .parameter "areaFrame"
    .parameter "eImageFileFormat"

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 215
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 217
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 218
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 222
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 223
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 225
    invoke-direct {p0, p2}, Lcom/sec/print/mobileprint/pagedata/ImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 226
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Rect;ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 7
    .parameter "areaFrame"
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 263
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 265
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 266
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 270
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5d

    .line 272
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 278
    :goto_53
    invoke-virtual {p3}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 280
    invoke-direct {p0, p4}, Lcom/sec/print/mobileprint/pagedata/ImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 281
    return-void

    .line 275
    :cond_5d
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    goto :goto_53
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 136
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/ImageData;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "fCropping"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 163
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 165
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 166
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 167
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 168
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_50

    .line 172
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 178
    :goto_47
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 179
    return-void

    .line 175
    :cond_50
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    goto :goto_47
.end method

.method protected constructor <init>(ZLcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)V
    .registers 6
    .parameter "fCropping"
    .parameter "eRotate"
    .parameter "eImageFileFormat"

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 110
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 111
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 112
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 114
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 115
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 116
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 117
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 238
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_49

    .line 242
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_ON:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 248
    :goto_3f
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 249
    invoke-direct {p0, p3}, Lcom/sec/print/mobileprint/pagedata/ImageData;->setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z

    .line 250
    return-void

    .line 245
    :cond_49
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->CROPPING_OFF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumCroppingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    goto :goto_3f
.end method

.method private setImageFileFomat(Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;)Z
    .registers 3
    .parameter "eImageFileFormat"

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    .line 319
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 297
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->outputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->cropping:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->rotate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->imageFileFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFramePosY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData;->areaFrameHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    return-void
.end method
