.class Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;
.super Ljava/lang/Object;
.source "SkyjamPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

.field final synthetic val$musicUrl:Ljava/lang/String;

.field final synthetic val$playing:Z

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$musicUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$playing:Z

    iput-object p4, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 415
    invoke-static {}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;

    .line 416
    .local v1, listener:Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;
    iget-object v2, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$musicUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$playing:Z

    iget-object v4, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;->val$status:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;->onPlaybackStatusUpdate(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_8

    .line 418
    .end local v1           #listener:Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;
    :cond_1e
    return-void
.end method
