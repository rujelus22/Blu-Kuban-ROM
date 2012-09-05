.class Lcom/samsung/swift/controller/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/controller/Controller;->postPoll(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/controller/Controller;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/swift/controller/Controller;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/samsung/swift/controller/Controller$2;->this$0:Lcom/samsung/swift/controller/Controller;

    iput-object p2, p0, Lcom/samsung/swift/controller/Controller$2;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/samsung/swift/controller/Controller$2;->this$0:Lcom/samsung/swift/controller/Controller;

    iget-object v2, p0, Lcom/samsung/swift/controller/Controller$2;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v2}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/controller/Controller$2;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v3}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/controller/Controller$2;->val$token:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/samsung/swift/controller/State;->onTimer(Ljava/lang/Object;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/swift/controller/State;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v2

    #setter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v1, v2}, Lcom/samsung/swift/controller/Controller;->access$002(Lcom/samsung/swift/controller/Controller;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 371
    return-void

    .line 367
    :catch_1c
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
