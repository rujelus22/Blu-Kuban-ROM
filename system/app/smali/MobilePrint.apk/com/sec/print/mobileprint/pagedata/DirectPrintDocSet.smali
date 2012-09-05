.class public Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;
.super Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
.source "DirectPrintDocSet.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;)V
    .registers 3
    .parameter "doc"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 69
    return-void
.end method
