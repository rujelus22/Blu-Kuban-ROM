.class public Lsiso/vt/VideoTelephonyData;
.super Ljava/lang/Object;
.source "VideoTelephonyData.java"


# instance fields
.field private mDatalen:I

.field private mObjectmode:I

.field private mProdNum:Ljava/lang/String;

.field private mUserData:Ljava/lang/String;

.field private mVerNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .parameter "prodNum"
    .parameter "verNum"
    .parameter "userData"
    .parameter "datalen"
    .parameter "objectmode"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mProdNum:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lsiso/vt/VideoTelephonyData;->mVerNum:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    .line 20
    iput p4, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    .line 21
    iput p5, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getDataLen()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    return v0
.end method

.method public getObjectMode()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    return v0
.end method

.method public getObjectMode(I)V
    .registers 2
    .parameter "objectMode"

    .prologue
    .line 65
    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    .line 66
    return-void
.end method

.method public getProductNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mProdNum:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mVerNum:Ljava/lang/String;

    return-object v0
.end method

.method public setDataLen(I)V
    .registers 2
    .parameter "dataLen"

    .prologue
    .line 60
    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    .line 61
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .registers 2
    .parameter "userData"

    .prologue
    .line 55
    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    .line 56
    return-void
.end method
