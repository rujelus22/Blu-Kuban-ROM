.class public Lcom/sec/print/mobileprint/printoptionattribute/SourceType;
.super Ljava/lang/Object;
.source "SourceType.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/SourceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sourceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/SourceType$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;)V
    .registers 3
    .parameter "eSourceType"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->sourceType:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getSourceType()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->sourceType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->sourceType:I

    .line 105
    return-void
.end method

.method public setSourceType(Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;)V
    .registers 3
    .parameter "eSourceType"

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->sourceType:I

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->sourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
