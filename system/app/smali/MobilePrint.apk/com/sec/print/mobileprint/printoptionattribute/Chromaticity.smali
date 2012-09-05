.class public Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;
.super Ljava/lang/Object;
.source "Chromaticity.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chromaticityType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;)V
    .registers 3
    .parameter "eChromaticity"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->chromaticityType:I

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getChromaticity()Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;
    .registers 3

    .prologue
    .line 88
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->chromaticityType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->chromaticityType:I

    .line 112
    return-void
.end method

.method public setChromaticity(Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;)V
    .registers 3
    .parameter "eChromaticity"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->chromaticityType:I

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->chromaticityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
