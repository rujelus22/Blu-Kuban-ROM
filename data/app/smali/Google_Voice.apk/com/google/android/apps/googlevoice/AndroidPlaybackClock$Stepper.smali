.class Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;
.super Ljava/lang/Object;
.source "AndroidPlaybackClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stepper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;-><init>(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 243
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->paused:Z
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$100(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$200(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$300(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_19

    .line 250
    :cond_18
    :goto_18
    return-void

    .line 247
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 248
    .local v0, time:J
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->playbackBeginningTime:J
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$400(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const/4 v5, 0x1

    #calls: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->setPosition(JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$500(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;JZ)V

    .line 249
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;->this$0:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    #calls: Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->schedule()V
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->access$600(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)V

    goto :goto_18
.end method
