.class final Lcom/sec/print/mobileprint/pagedata/Page$1;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/Page;
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
        "Lcom/sec/print/mobileprint/pagedata/Page;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/Page;
    .registers 4
    .parameter "source"

    .prologue
    .line 97
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/Page;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/print/mobileprint/pagedata/Page;-><init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/pagedata/Page$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/Page$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/Page;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/pagedata/Page;
    .registers 3
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Lcom/sec/print/mobileprint/pagedata/Page;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/Page$1;->newArray(I)[Lcom/sec/print/mobileprint/pagedata/Page;

    move-result-object v0

    return-object v0
.end method