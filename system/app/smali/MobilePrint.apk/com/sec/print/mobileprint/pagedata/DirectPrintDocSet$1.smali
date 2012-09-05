.class final Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet$1;
.super Ljava/lang/Object;
.source "DirectPrintDocSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;
    .registers 3
    .parameter "source"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->readClassNameFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    invoke-direct {v0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;
    .registers 3
    .parameter "size"

    .prologue
    .line 88
    new-array v0, p1, [Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet$1;->newArray(I)[Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    move-result-object v0

    return-object v0
.end method
