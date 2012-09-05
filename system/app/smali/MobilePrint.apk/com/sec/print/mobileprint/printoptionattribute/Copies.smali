.class public Lcom/sec/print/mobileprint/printoptionattribute/Copies;
.super Ljava/lang/Object;
.source "Copies.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Copies;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private noCopies:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Copies$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Copies$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "noCopies"

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-ge p1, v0, :cond_9

    .line 40
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    .line 46
    :goto_8
    return-void

    .line 44
    :cond_9
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    goto :goto_8
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/Copies$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Copies;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getCopies()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    .line 95
    return-void
.end method

.method public setCopies(I)V
    .registers 3
    .parameter "noCopies"

    .prologue
    const/4 v0, 0x1

    .line 60
    if-ge p1, v0, :cond_6

    .line 62
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    .line 68
    :goto_5
    return-void

    .line 66
    :cond_6
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Copies;->noCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
