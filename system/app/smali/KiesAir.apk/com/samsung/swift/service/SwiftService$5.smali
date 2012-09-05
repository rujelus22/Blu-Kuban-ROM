.class Lcom/samsung/swift/service/SwiftService$5;
.super Ljava/lang/Object;
.source "SwiftService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/SwiftService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/SwiftService;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/SwiftService;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftService$5;->this$0:Lcom/samsung/swift/service/SwiftService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$5;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->doStop()V
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$1100(Lcom/samsung/swift/service/SwiftService;)V

    .line 413
    return-void
.end method
