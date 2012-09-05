.class final Lcom/sec/print/mobileprint/printoptionattribute/Resolution$1;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Resolution;
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
        "Lcom/sec/print/mobileprint/printoptionattribute/Resolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/Resolution;
    .registers 3
    .parameter "source"

    .prologue
    .line 48
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;-><init>()V

    .line 49
    .local v0, resolution:Lcom/sec/print/mobileprint/printoptionattribute/Resolution;
    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/Resolution;
    .registers 3
    .parameter "size"

    .prologue
    .line 56
    new-array v0, p1, [Lcom/sec/print/mobileprint/printoptionattribute/Resolution;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution$1;->newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/Resolution;

    move-result-object v0

    return-object v0
.end method
