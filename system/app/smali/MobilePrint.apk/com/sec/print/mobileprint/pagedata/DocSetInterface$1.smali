.class final Lcom/sec/print/mobileprint/pagedata/DocSetInterface$1;
.super Ljava/lang/Object;
.source "DocSetInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
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
        "Lcom/sec/print/mobileprint/pagedata/DocSetInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    .registers 5
    .parameter "source"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, docInterface:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    invoke-static {p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->readClassNameFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, simpleName:Ljava/lang/String;
    const-class v2, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 61
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    .end local v0           #docInterface:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    invoke-direct {v0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;-><init>(Landroid/os/Parcel;)V

    .line 68
    .restart local v0       #docInterface:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    :goto_16
    return-object v0

    .line 62
    :cond_17
    const-class v2, Lcom/sec/print/mobileprint/pagedata/PageSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 63
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/PageSet;

    .end local v0           #docInterface:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    invoke-direct {v0, p1}, Lcom/sec/print/mobileprint/pagedata/PageSet;-><init>(Landroid/os/Parcel;)V

    .restart local v0       #docInterface:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    goto :goto_16

    .line 65
    :cond_29
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/print/mobileprint/pagedata/DocSetInterface;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    .registers 3
    .parameter "size"

    .prologue
    .line 74
    new-array v0, p1, [Lcom/sec/print/mobileprint/pagedata/DocSetInterface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface$1;->newArray(I)[Lcom/sec/print/mobileprint/pagedata/DocSetInterface;

    move-result-object v0

    return-object v0
.end method
