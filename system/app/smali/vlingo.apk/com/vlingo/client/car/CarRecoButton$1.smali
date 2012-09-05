.class Lcom/vlingo/client/car/CarRecoButton$1;
.super Ljava/lang/Object;
.source "CarRecoButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarRecoButton;->setWakeUpEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarRecoButton;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarRecoButton;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vlingo/client/car/CarRecoButton$1;->this$0:Lcom/vlingo/client/car/CarRecoButton;

    iput-boolean p2, p0, Lcom/vlingo/client/car/CarRecoButton$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton$1;->this$0:Lcom/vlingo/client/car/CarRecoButton;

    iget-boolean v1, p0, Lcom/vlingo/client/car/CarRecoButton$1;->val$enabled:Z

    #setter for: Lcom/vlingo/client/car/CarRecoButton;->wakeUpWordEnabled:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/CarRecoButton;->access$002(Lcom/vlingo/client/car/CarRecoButton;Z)Z

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/car/CarRecoButton$1;->this$0:Lcom/vlingo/client/car/CarRecoButton;

    #calls: Lcom/vlingo/client/car/CarRecoButton;->syncWakeUpVisibility()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarRecoButton;->access$100(Lcom/vlingo/client/car/CarRecoButton;)V

    .line 73
    return-void
.end method
