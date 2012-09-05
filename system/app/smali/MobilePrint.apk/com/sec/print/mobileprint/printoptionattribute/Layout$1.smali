.class final Lcom/sec/print/mobileprint/printoptionattribute/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Layout;
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
        "Lcom/sec/print/mobileprint/printoptionattribute/Layout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/Layout;
    .registers 3
    .parameter "source"

    .prologue
    .line 72
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Layout;-><init>()V

    .line 73
    .local v0, layout:Lcom/sec/print/mobileprint/printoptionattribute/Layout;
    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/Layout;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/Layout;
    .registers 3
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/sec/print/mobileprint/printoptionattribute/Layout;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$1;->newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/Layout;

    move-result-object v0

    return-object v0
.end method
