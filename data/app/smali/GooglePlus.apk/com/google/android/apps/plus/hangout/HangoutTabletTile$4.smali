.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$4;
.super Landroid/os/CountDownTimer;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->pauseFilmStrip()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 717
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 712
    return-void
.end method
