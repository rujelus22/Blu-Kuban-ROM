.class public Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;
.super Ljava/lang/Object;
.source "IPPOutputInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 4

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 54
    :goto_7
    return-object v1

    .line 49
    :catch_8
    move-exception v0

    .line 51
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getURLString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setURLString(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
