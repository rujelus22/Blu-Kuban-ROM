.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;
.super Landroid/os/CountDownTimer;
.source "TabletFilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->dismissParticipantMenuDialog()V

    .line 334
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 329
    return-void
.end method
