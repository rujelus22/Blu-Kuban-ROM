.class Lcom/samsung/swift/service/SwiftService$3;
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
    .line 373
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftService$3;->this$0:Lcom/samsung/swift/service/SwiftService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/samsung/swift/service/SwiftService$3;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->doStart()V
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftService;->access$900(Lcom/samsung/swift/service/SwiftService;)V
    :try_end_5
    .catch Lcom/samsung/swift/exception/InstallationCorruptException; {:try_start_0 .. :try_end_5} :catch_6

    .line 386
    return-void

    .line 382
    :catch_6
    move-exception v0

    .line 384
    .local v0, e:Lcom/samsung/swift/exception/InstallationCorruptException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
