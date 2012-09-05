.class Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
.super Ljava/lang/Object;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WmDrmNextAct"
.end annotation


# instance fields
.field public mCompleteAction:I

.field public mFielPath:Ljava/lang/String;

.field public mPlay:Z

.field public mSeekTime:J

.field public mUriString:Ljava/lang/String;

.field public mWmDrmAcquistionCnt:I

.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3550
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3551
    iput v2, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    .line 3554
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mUriString:Ljava/lang/String;

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mFielPath:Ljava/lang/String;

    .line 3558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mPlay:Z

    .line 3560
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mSeekTime:J

    .line 3562
    iput v2, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3550
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    return-void
.end method


# virtual methods
.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "filePath"

    .prologue
    .line 3573
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mFielPath:Ljava/lang/String;

    .line 3574
    return-void
.end method

.method public setWmDrmNextAct(ILjava/lang/String;ZJ)V
    .registers 6
    .parameter "completeAction"
    .parameter "uriString"
    .parameter "play"
    .parameter "seekTime"

    .prologue
    .line 3566
    iput p1, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    .line 3567
    iput-object p2, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mUriString:Ljava/lang/String;

    .line 3568
    iput-boolean p3, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mPlay:Z

    .line 3569
    iput-wide p4, p0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mSeekTime:J

    .line 3570
    return-void
.end method
