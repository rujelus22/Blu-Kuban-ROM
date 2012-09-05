.class public Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
.super Ljava/lang/Object;
.source "PDLType.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/PDLType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pdlType:I

.field private pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_AUTO:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;)V
    .registers 3
    .parameter "ePDLType"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V
    .registers 4
    .parameter "ePDLType"
    .parameter "pdlTypeInfo"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    .line 47
    iput-object p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;

    .line 48
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

.method public getPDLType()Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;
    .registers 3

    .prologue
    .line 62
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPDLTypeInfo()Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    .line 85
    return-void
.end method

.method public setPDLType(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;)V
    .registers 3
    .parameter "ePDLType"

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    .line 53
    return-void
.end method

.method public setPDLTypeInfo(Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V
    .registers 2
    .parameter "pdlTypeInfo"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->pdlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
