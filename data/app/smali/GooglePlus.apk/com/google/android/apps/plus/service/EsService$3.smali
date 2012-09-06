.class Lcom/google/android/apps/plus/service/EsService$3;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;)V
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$3;->this$0:Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 587
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$700()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 588
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 589
    const-string v0, "EsService"

    const-string v1, "Stop runnable: Stopping service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$3;->this$0:Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsService;->stopSelf()V

    .line 593
    :cond_1f
    return-void
.end method
