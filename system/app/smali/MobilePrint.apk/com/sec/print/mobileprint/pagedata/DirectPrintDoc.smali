.class public Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;
.super Ljava/lang/Object;
.source "DirectPrintDoc.java"

# interfaces
.implements Lcom/sec/print/mobileprint/pagedata/IPageData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private directPrintType:I

.field private endRangePageNo:I

.field private fileFullPath:Ljava/lang/String;

.field private startRangePageNo:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 44
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 45
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 44
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 45
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 60
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 62
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 63
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;II)V
    .registers 7
    .parameter "filePath"
    .parameter "eDirectPrintType"
    .parameter "startRangePageNo"
    .parameter "endRangePageNo"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 44
    iput v1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 45
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 77
    iput-object p1, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 79
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 80
    iput p4, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->directPrintType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->startRangePageNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->endRangePageNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;->fileFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method
