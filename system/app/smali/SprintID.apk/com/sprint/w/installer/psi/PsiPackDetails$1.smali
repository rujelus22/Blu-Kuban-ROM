.class Lcom/sprint/w/installer/psi/PsiPackDetails$1;
.super Ljava/lang/Thread;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;->loadPackDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v2, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2f

    .line 173
    :try_start_5
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadDetails(Lcom/sprint/w/installer/psi/ServicePack;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2c

    .line 176
    :try_start_c
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadMetadata(Lcom/sprint/w/installer/psi/ServicePack;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_13} :catch_1f

    .line 180
    :goto_13
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_2c

    .line 194
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$1$2;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$1$2;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails$1;)V

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/psi/PsiPackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    :goto_1e
    return-void

    .line 177
    :catch_1f
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_20
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$000(Lcom/sprint/w/installer/psi/PsiPackDetails;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v3, "RIA refuses to work for this pack!"

    invoke-virtual {v1, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 180
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 181
    :catch_2f
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$000(Lcom/sprint/w/installer/psi/PsiPackDetails;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Error loading pack details"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails$1;)V

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/psi/PsiPackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e
.end method
