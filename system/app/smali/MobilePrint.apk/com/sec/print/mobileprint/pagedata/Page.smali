.class public Lcom/sec/print/mobileprint/pagedata/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/Page;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field copies:I

.field listPrintedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/IPageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/Page$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/Page$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/Page;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "copies"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    .line 37
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/Page;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/pagedata/Page$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/pagedata/Page;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/print/mobileprint/pagedata/IPageData;)V
    .registers 3
    .parameter "pageData"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getCopies()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/IPageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    .line 91
    return-void
.end method

.method public setCopies(I)V
    .registers 2
    .parameter "copies"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->listPrintedData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 84
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/Page;->copies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
