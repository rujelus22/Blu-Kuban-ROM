.class public Lcom/sec/print/mobileprint/printoptionattribute/Resolution;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private resolutionX:I

.field private resolutionY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x258

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionX:I

    .line 16
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionY:I

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "resolutionX"
    .parameter "resolutionY"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionX:I

    .line 22
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionY:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionX:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionY:I

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;->resolutionY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
