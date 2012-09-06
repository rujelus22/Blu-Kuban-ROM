.class Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$2;
.super Ljava/lang/Object;
.source "GvVvmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$2;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$2;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$700(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;->reset()V

    .line 131
    return-void
.end method
