.class Lcom/sprint/smps/TimeOutThread$1;
.super Ljava/lang/Object;
.source "TimeOutThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/TimeOutThread;->doCallback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/TimeOutThread;

.field private final synthetic val$rt:J


# direct methods
.method constructor <init>(Lcom/sprint/smps/TimeOutThread;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/TimeOutThread$1;->this$0:Lcom/sprint/smps/TimeOutThread;

    iput-wide p2, p0, Lcom/sprint/smps/TimeOutThread$1;->val$rt:J

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sprint/smps/TimeOutThread$1;->this$0:Lcom/sprint/smps/TimeOutThread;

    #getter for: Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;
    invoke-static {v0}, Lcom/sprint/smps/TimeOutThread;->access$0(Lcom/sprint/smps/TimeOutThread;)Lcom/sprint/smps/TimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 126
    :try_start_8
    iget-wide v0, p0, Lcom/sprint/smps/TimeOutThread$1;->val$rt:J

    const-wide/16 v2, 0x3e7f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    .line 127
    iget-object v0, p0, Lcom/sprint/smps/TimeOutThread$1;->this$0:Lcom/sprint/smps/TimeOutThread;

    #getter for: Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;
    invoke-static {v0}, Lcom/sprint/smps/TimeOutThread;->access$0(Lcom/sprint/smps/TimeOutThread;)Lcom/sprint/smps/TimeoutListener;

    move-result-object v0

    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->access$1()[Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sprint/smps/TimeOutThread$1;->val$rt:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/sprint/smps/TimeoutListener;->onTimingOut(Ljava/lang/String;)V

    .line 135
    :cond_25
    :goto_25
    return-void

    .line 130
    :cond_26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sprint/smps/TimeOutThread;->access$2(Z)V

    .line 131
    iget-object v0, p0, Lcom/sprint/smps/TimeOutThread$1;->this$0:Lcom/sprint/smps/TimeOutThread;

    #getter for: Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;
    invoke-static {v0}, Lcom/sprint/smps/TimeOutThread;->access$0(Lcom/sprint/smps/TimeOutThread;)Lcom/sprint/smps/TimeoutListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/sprint/smps/TimeoutListener;->onTimingOut(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_25

    .line 133
    :catch_36
    move-exception v0

    goto :goto_25
.end method
