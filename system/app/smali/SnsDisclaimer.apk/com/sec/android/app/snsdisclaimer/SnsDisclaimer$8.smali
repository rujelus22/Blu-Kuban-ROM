.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;
.super Ljava/util/TimerTask;
.source "SnsDisclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->countTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$500(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    const/4 v2, 0x3

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->newDeliverResponseRunnable(ILjava/lang/String;)Ljava/lang/Runnable;
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$400(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method
