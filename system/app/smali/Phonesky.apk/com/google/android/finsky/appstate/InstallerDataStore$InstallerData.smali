.class public Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
.super Ljava/lang/Object;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/InstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallerData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field private continueUrl:Ljava/lang/String;

.field private deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private deliveryDataTimestampMs:J

.field private desiredVersion:I

.field private downloadUri:Ljava/lang/String;

.field private firstDownloadMs:J

.field private flags:I

.field private installerState:I

.field private packageName:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/appstate/InstallerDataStore$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .parameter "packageName"
    .parameter "autoUpdate"
    .parameter "desiredVersion"
    .parameter "deliveryData"
    .parameter "deliveryDataTimestampMs"
    .parameter "installerState"
    .parameter "downloadUri"
    .parameter "firstDownloadMs"
    .parameter "referrer"
    .parameter "continueUrl"
    .parameter "accountName"
    .parameter "title"
    .parameter "flags"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 93
    iput p3, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 94
    iput-object p4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 95
    iput-wide p5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    .line 96
    iput p7, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    .line 97
    iput-object p8, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    .line 98
    iput-wide p9, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    .line 99
    iput-object p11, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    .line 100
    iput-object p12, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    .line 101
    iput-object p13, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    .line 103
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    .line 104
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getDeliveryDataTimestampMs()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide v0
.end method

.method public getDesiredVersion()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return v0
.end method

.method public getDownloadUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDownloadMs()J
    .registers 3

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return v0
.end method

.method public getInstallerState()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    const-string v2, "(packageName=%s,autoUpdate=%s,desiredVersion=%d,hasDeliveryData=%b,installerState=%d,downloadUri=%s,firstDownloadMs=%d,referrer=%s,continueUrl=%s,account=%s)"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v5, :cond_55

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_55
    move v0, v1

    goto :goto_1e
.end method
