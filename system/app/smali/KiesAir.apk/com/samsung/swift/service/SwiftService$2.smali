.class Lcom/samsung/swift/service/SwiftService$2;
.super Ljava/lang/Object;
.source "SwiftService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/SwiftService;

.field final synthetic val$broadcast:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftService$2;->this$0:Lcom/samsung/swift/service/SwiftService;

    iput-object p2, p0, Lcom/samsung/swift/service/SwiftService$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/samsung/swift/service/SwiftService$2;->val$broadcast:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 361
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$2;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->resetThread()V
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$800(Lcom/samsung/swift/service/SwiftService;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$2;->val$broadcast:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 364
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$2;->this$0:Lcom/samsung/swift/service/SwiftService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/swift/service/SwiftService$2;->val$broadcast:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/SwiftService;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    :cond_1a
    return-void
.end method
