.class Lcom/vlingo/client/car/iux/CarIUXActivity$7;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingFinished(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    iput-boolean p2, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->val$success:Z

    iput-object p3, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->val$success:Z

    if-eqz v0, :cond_a

    .line 300
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    #calls: Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingComplete()V
    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->access$100(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    .line 308
    :cond_9
    :goto_9
    return-void

    .line 303
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->val$error:Ljava/lang/String;

    #setter for: Lcom/vlingo/client/car/iux/CarIUXActivity;->err:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->access$202(Lcom/vlingo/client/car/iux/CarIUXActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->showDialog(I)V

    goto :goto_9
.end method
