.class public Lcom/google/android/youtube/videos/PinManager$PinState;
.super Ljava/lang/Object;
.source "PinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/PinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinState"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private bytesTotal:J

.field private downloadPath:Ljava/lang/String;

.field private downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field private isPinned:Z

.field private licenseExpirationDate:Ljava/util/Date;

.field private operationInProgress:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "videoId"

    .prologue
    const/4 v0, 0x0

    .line 547
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    .line 545
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    .line 548
    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    .line 549
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/PinManager$PinState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-wide p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/android/youtube/videos/PinManager$PinState;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-wide p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/util/Date;)Ljava/util/Date;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return p1
.end method


# virtual methods
.method public fileExists()Z
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_5
.end method

.method public getBytesDownloaded()J
    .registers 3

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J

    return-wide v0
.end method

.method public getBytesTotal()J
    .registers 3

    .prologue
    .line 564
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J

    return-wide v0
.end method

.method public getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object v0
.end method

.method public getLicenseExpirationDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public isOperationInProgress()Z
    .registers 2

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z

    return v0
.end method

.method public isPinned()Z
    .registers 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z

    return v0
.end method
