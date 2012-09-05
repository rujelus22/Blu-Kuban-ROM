.class final Lcom/sprint/w/installer/delivery/CatalogCard$1;
.super Ljava/lang/Object;
.source "CatalogCard.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogCard;
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
        "Lcom/sprint/w/installer/delivery/CatalogCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/w/installer/delivery/CatalogCard;
    .registers 3
    .parameter "in"

    .prologue
    .line 67
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-direct {v0, p1}, Lcom/sprint/w/installer/delivery/CatalogCard;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/CatalogCard$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/w/installer/delivery/CatalogCard;
    .registers 3
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Lcom/sprint/w/installer/delivery/CatalogCard;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/CatalogCard$1;->newArray(I)[Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v0

    return-object v0
.end method
