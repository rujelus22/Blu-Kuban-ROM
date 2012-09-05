.class public Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;
.super Ljava/lang/Object;
.source "FileOutputInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field filefullpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "filefullpath"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->filefullpath:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getFilefullpath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->filefullpath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->filefullpath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFilefullpath(Ljava/lang/String;)V
    .registers 2
    .parameter "filefullpath"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->filefullpath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->filefullpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
