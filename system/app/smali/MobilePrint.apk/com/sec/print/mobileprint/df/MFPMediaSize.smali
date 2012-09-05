.class public Lcom/sec/print/mobileprint/df/MFPMediaSize;
.super Ljava/lang/Object;
.source "MFPMediaSize.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPMediaSize;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottoMargin:I

.field private height:I

.field private leftMargin:I

.field private mediaName:Ljava/lang/String;

.field private rightMargin:I

.field private topMargin:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/sec/print/mobileprint/df/MFPMediaSize$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/df/MFPMediaSize$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/df/MFPMediaSize;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/df/MFPMediaSize$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 8
    .parameter "mediaName"
    .parameter "leftMargin"
    .parameter "topMargin"
    .parameter "rightMargin"
    .parameter "bottoMargin"
    .parameter "length"
    .parameter "width"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->mediaName:Ljava/lang/String;

    .line 34
    iput p7, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->width:I

    .line 35
    iput p6, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->height:I

    .line 36
    iput p3, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->topMargin:I

    .line 37
    iput p5, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->bottoMargin:I

    .line 38
    iput p2, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->leftMargin:I

    .line 39
    iput p4, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->rightMargin:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getBottoMargin()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->bottoMargin:I

    return v0
.end method

.method public getLeftMargin()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->leftMargin:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->height:I

    return v0
.end method

.method public getMediaName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->mediaName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightMargin()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->rightMargin:I

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->topMargin:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->width:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->mediaName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->width:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->height:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->topMargin:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->bottoMargin:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->leftMargin:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->rightMargin:I

    .line 116
    return-void
.end method

.method public setBottoMargin(I)V
    .registers 2
    .parameter "bottoMargin"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->bottoMargin:I

    .line 80
    return-void
.end method

.method public setLeftMargin(I)V
    .registers 2
    .parameter "leftMargin"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->leftMargin:I

    .line 88
    return-void
.end method

.method public setLength(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->height:I

    .line 64
    return-void
.end method

.method public setMediaName(Ljava/lang/String;)V
    .registers 2
    .parameter "mediaName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->mediaName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRightMargin(I)V
    .registers 2
    .parameter "rightMargin"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->rightMargin:I

    .line 96
    return-void
.end method

.method public setTopMargin(I)V
    .registers 2
    .parameter "topMargin"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->topMargin:I

    .line 72
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->width:I

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->mediaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->bottoMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->leftMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPMediaSize;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/df/MFPMediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method
