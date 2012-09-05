.class public final enum Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;
.super Ljava/lang/Enum;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumImageFileFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

.field public static final enum IMAGE_FILE_FORMAT_BMP:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

.field public static final enum IMAGE_FILE_FORMAT_GIF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

.field public static final enum IMAGE_FILE_FORMAT_JPG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

.field public static final enum IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

.field public static final enum IMAGE_FILE_FORMAT_PNG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    const-string v1, "IMAGE_FILE_FORMAT_NEED_CHECK"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    .line 67
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    const-string v1, "IMAGE_FILE_FORMAT_JPG"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_JPG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    .line 68
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    const-string v1, "IMAGE_FILE_FORMAT_PNG"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_PNG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    .line 69
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    const-string v1, "IMAGE_FILE_FORMAT_BMP"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_BMP:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    .line 70
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    const-string v1, "IMAGE_FILE_FORMAT_GIF"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_GIF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_NEED_CHECK:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_JPG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_PNG:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_BMP:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->IMAGE_FILE_FORMAT_GIF:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->mValue:I

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumImageFileFormat;->mValue:I

    return v0
.end method
