.class public Lcom/sec/print/mobileprint/printoptionattribute/Layout;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Layout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private layoutType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_1UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;)V
    .registers 3
    .parameter "eLayout"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getLayout()Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;
    .registers 3

    .prologue
    .line 48
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    .line 66
    return-void
.end method

.method public setLayout(Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;)V
    .registers 3
    .parameter "eLayout"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;->layoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
