.class Lcom/google/android/youtube/core/BaseApplication$1;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/BaseApplication;->createUiExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/BaseApplication;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/BaseApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/youtube/core/BaseApplication$1;->this$0:Lcom/google/android/youtube/core/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication$1;->this$0:Lcom/google/android/youtube/core/BaseApplication;

    #getter for: Lcom/google/android/youtube/core/BaseApplication;->uiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/youtube/core/BaseApplication;->access$000(Lcom/google/android/youtube/core/BaseApplication;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method
