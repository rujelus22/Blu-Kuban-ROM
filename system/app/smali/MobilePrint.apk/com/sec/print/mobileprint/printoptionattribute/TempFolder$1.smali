.class final Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;
.super Ljava/lang/Object;
.source "TempFolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;
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
        "Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;
    .registers 4
    .parameter "source"

    .prologue
    .line 65
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;)V

    .line 66
    .local v0, imageData:Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;
    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->readToParcel(Landroid/os/Parcel;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;
    .registers 3
    .parameter "size"

    .prologue
    .line 73
    new-array v0, p1, [Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;->newArray(I)[Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;

    move-result-object v0

    return-object v0
.end method
