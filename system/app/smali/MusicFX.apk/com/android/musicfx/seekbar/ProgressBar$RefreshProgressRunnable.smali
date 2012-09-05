.class Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/seekbar/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/android/musicfx/seekbar/ProgressBar;


# direct methods
.method constructor <init>(Lcom/android/musicfx/seekbar/ProgressBar;IIZ)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/musicfx/seekbar/ProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p2, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 573
    iput p3, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 574
    iput-boolean p4, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 575
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/musicfx/seekbar/ProgressBar;

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    const/4 v4, 0x1

    #calls: Lcom/android/musicfx/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/musicfx/seekbar/ProgressBar;->access$000(Lcom/android/musicfx/seekbar/ProgressBar;IIZZ)V

    .line 580
    iget-object v0, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/musicfx/seekbar/ProgressBar;

    #setter for: Lcom/android/musicfx/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/android/musicfx/seekbar/ProgressBar;->access$102(Lcom/android/musicfx/seekbar/ProgressBar;Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;)Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;

    .line 581
    return-void
.end method

.method public setup(IIZ)V
    .registers 4
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 584
    iput p1, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 585
    iput p2, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 586
    iput-boolean p3, p0, Lcom/android/musicfx/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 587
    return-void
.end method
