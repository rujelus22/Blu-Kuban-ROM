.class public Lcom/sec/print/mobileprint/printoptionattribute/Duplex;
.super Ljava/lang/Object;
.source "Duplex.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Duplex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duplexValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/Duplex$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;)V
    .registers 3
    .parameter "eDuplex"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->duplexValue:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;
    .registers 3

    .prologue
    .line 67
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->duplexValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->duplexValue:I

    .line 85
    return-void
.end method

.method public setOrientation(Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;)V
    .registers 3
    .parameter "eDuplex"

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->duplexValue:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;->duplexValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
