.class public Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final NOT_SUPPORT_COLOR:I = 0x2

.field static final SUPPORT_COLOR:I = 0x1


# instance fields
.field private modelName:Ljava/lang/String;

.field private outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

.field private supportedColor:I

.field private supportedPDLTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    new-instance v0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/print/mobileprint/printerinfo/IOutputInfo;)V
    .registers 6
    .parameter "modelName"
    .parameter "pdlType"
    .parameter "supportedColor"
    .parameter "outputInfo"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    .line 47
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iput-object p4, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    .line 51
    invoke-virtual {p0, p3}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->setSupportedColor(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/print/mobileprint/printerinfo/IOutputInfo;)V
    .registers 6
    .parameter "modelName"
    .parameter
    .parameter "supportedColor"
    .parameter "outputInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, supportedPDLTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    .line 64
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    .line 67
    iput-object p4, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    .line 68
    invoke-virtual {p0, p3}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->setSupportedColor(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputInfo()Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    return-object v0
.end method

.method public getSupportedPDLTypeList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSupportedColor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    if-ne v1, v0, :cond_6

    .line 113
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 136
    const-class v0, Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    .line 138
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .registers 2
    .parameter "modelName"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setOutputInfo(Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;)V
    .registers 2
    .parameter "outputInfo"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    .line 85
    return-void
.end method

.method public setSupportedColor(Z)V
    .registers 3
    .parameter "supportedColor"

    .prologue
    const/4 v0, 0x1

    .line 96
    if-ne p1, v0, :cond_6

    .line 98
    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    .line 104
    :goto_5
    return-void

    .line 102
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    goto :goto_5
.end method

.method public setSupportedPDLTypeList(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, supportedPDLTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->modelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedPDLTypeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget v0, p0, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->supportedColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
