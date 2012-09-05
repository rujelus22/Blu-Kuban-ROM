.class Lcom/android/phone/CallTime$PeriodicTimerCallback;
.super Ljava/lang/Object;
.source "CallTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTime;


# direct methods
.method constructor <init>(Lcom/android/phone/CallTime;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->isTraceRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->stopTrace()V

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallTime;->mTimerRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallTime;->access$002(Lcom/android/phone/CallTime;Z)Z

    .line 183
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 184
    return-void
.end method
