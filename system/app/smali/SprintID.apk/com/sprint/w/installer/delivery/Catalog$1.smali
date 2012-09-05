.class final Lcom/sprint/w/installer/delivery/Catalog$1;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/Catalog;
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
        "Lcom/sprint/w/installer/delivery/Catalog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/w/installer/delivery/Catalog;
    .registers 3
    .parameter "in"

    .prologue
    .line 50
    new-instance v0, Lcom/sprint/w/installer/delivery/Catalog;

    invoke-direct {v0, p1}, Lcom/sprint/w/installer/delivery/Catalog;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/Catalog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/w/installer/delivery/Catalog;
    .registers 3
    .parameter "size"

    .prologue
    .line 55
    new-array v0, p1, [Lcom/sprint/w/installer/delivery/Catalog;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/Catalog$1;->newArray(I)[Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    return-object v0
.end method
