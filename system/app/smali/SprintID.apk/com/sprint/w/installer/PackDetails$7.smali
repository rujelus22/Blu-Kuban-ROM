.class Lcom/sprint/w/installer/PackDetails$7;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 503
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    :goto_14
    invoke-static {v3, v2}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    .line 505
    .local v1, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_18
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v3, v1, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/PackDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_2b

    .line 509
    :goto_23
    return-void

    .line 503
    .end local v1           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_24
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$7;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    goto :goto_14

    .line 506
    .restart local v1       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catch_2b
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackDetails;->access$400()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error launching intent"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
