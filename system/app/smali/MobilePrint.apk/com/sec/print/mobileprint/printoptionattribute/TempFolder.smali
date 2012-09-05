.class public Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;
.super Ljava/lang/Object;
.source "TempFolder.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folderPath:Ljava/lang/String;

.field private prefixString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->folderPath:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->prefixString:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/TempFolder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "folderPath"
    .parameter "prefixString"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->folderPath:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->prefixString:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->folderPath:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->prefixString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public readToParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->folderPath:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->prefixString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->folderPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/TempFolder;->prefixString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method
