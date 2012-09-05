.class Lcom/sprint/w/installer/psi/PsiPackDetails$5;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
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
    .line 422
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 425
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v3, v3, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    if-nez v3, :cond_7

    .line 439
    :cond_6
    :goto_6
    return-void

    .line 429
    :cond_7
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v4, v4, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v2

    .line 430
    .local v2, sp:Lcom/sprint/w/installer/psi/ServicePack;
    if-eqz v2, :cond_6

    .line 432
    :try_start_1b
    iget-object v3, v2, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 433
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    const-class v4, Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 434
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-virtual {v3, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_2e} :catch_2f

    goto :goto_6

    .line 435
    .end local v1           #i:Landroid/content/Intent;
    :catch_2f
    move-exception v0

    .line 436
    .local v0, e:Ljava/net/URISyntaxException;
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v3}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$000(Lcom/sprint/w/installer/psi/PsiPackDetails;)Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
