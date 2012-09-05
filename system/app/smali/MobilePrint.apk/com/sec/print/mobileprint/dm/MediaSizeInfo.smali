.class public Lcom/sec/print/mobileprint/dm/MediaSizeInfo;
.super Lcom/sec/print/mobileprint/df/MFPMediaSize;
.source "MediaSizeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/dm/MediaSizeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>()V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/dm/MediaSizeInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;-><init>(Landroid/os/Parcel;)V

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
    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/sec/print/mobileprint/df/MFPMediaSize;-><init>(Ljava/lang/String;IIIIII)V

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/df/MFPMediaSize;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/df/MFPMediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method
