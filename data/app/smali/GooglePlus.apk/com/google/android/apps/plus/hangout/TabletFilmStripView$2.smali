.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;
.super Landroid/os/CountDownTimer;
.source "TabletFilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

.field final synthetic val$participantVideoView:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;JJLcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;)V
    .registers 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    iput-object p6, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;->val$participantVideoView:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;->val$participantVideoView:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->hideVolumeBar()V

    .line 566
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 561
    return-void
.end method
