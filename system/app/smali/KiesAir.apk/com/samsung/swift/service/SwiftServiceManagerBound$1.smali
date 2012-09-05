.class Lcom/samsung/swift/service/SwiftServiceManagerBound$1;
.super Ljava/lang/Object;
.source "SwiftServiceManagerBound.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/SwiftServiceManagerBound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/SwiftServiceManagerBound;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    invoke-static {p2}, Lcom/samsung/swift/service/ISwiftService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/swift/service/ISwiftService;

    move-result-object v1

    #calls: Lcom/samsung/swift/service/SwiftServiceManagerBound;->setSwiftService(Lcom/samsung/swift/service/ISwiftService;)V
    invoke-static {v0, v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$000(Lcom/samsung/swift/service/SwiftServiceManagerBound;Lcom/samsung/swift/service/ISwiftService;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    #setter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->binder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$102(Lcom/samsung/swift/service/SwiftServiceManagerBound;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 115
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    #getter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->applicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$300(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    #getter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->onReadyIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$200(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->onReadyIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$202(Lcom/samsung/swift/service/SwiftServiceManagerBound;Landroid/content/Intent;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    #getter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$400(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Lcom/samsung/swift/service/ISwiftService;

    move-result-object v1

    #calls: Lcom/samsung/swift/service/SwiftServiceManagerBound;->setSwiftService(Lcom/samsung/swift/service/ISwiftService;)V
    invoke-static {v0, v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$000(Lcom/samsung/swift/service/SwiftServiceManagerBound;Lcom/samsung/swift/service/ISwiftService;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;->this$0:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/swift/service/SwiftServiceManagerBound;->binder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->access$102(Lcom/samsung/swift/service/SwiftServiceManagerBound;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 122
    return-void
.end method
