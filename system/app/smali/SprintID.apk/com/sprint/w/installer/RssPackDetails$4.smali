.class Lcom/sprint/w/installer/RssPackDetails$4;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$4;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 274
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails$4;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-virtual {v2}, Lcom/sprint/w/installer/RssPackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails$4;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v3, v3, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    .line 276
    .local v1, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_e
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails$4;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v3, v1, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/RssPackDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 280
    :goto_1a
    return-void

    .line 277
    :catch_1b
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails$4;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    #getter for: Lcom/sprint/w/installer/RssPackDetails;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackDetails;->access$200(Lcom/sprint/w/installer/RssPackDetails;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error launching intent"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
