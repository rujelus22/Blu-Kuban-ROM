.class Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;
.super Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicySplitMode"
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .registers 4
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SplitMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->TAG:Ljava/lang/String;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    return-void
.end method
