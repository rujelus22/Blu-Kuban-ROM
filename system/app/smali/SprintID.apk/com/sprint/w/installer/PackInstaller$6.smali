.class Lcom/sprint/w/installer/PackInstaller$6;
.super Ljava/lang/Thread;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;

.field final synthetic val$sp:Lcom/sprint/w/installer/psi/ServicePack;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 667
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    .line 670
    :try_start_8
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadMetadata(Lcom/sprint/w/installer/psi/ServicePack;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_28

    .line 675
    :cond_d
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->prepareForDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1d

    .line 679
    :goto_12
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v2, Lcom/sprint/w/installer/PackInstaller$6$1;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/PackInstaller$6$1;-><init>(Lcom/sprint/w/installer/PackInstaller$6;)V

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 691
    return-void

    .line 676
    :catch_1d
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Error preparing download"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 671
    .end local v0           #e:Ljava/lang/Exception;
    :catch_28
    move-exception v1

    goto :goto_d
.end method
