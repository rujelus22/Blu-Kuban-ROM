.class Lcom/cooliris/picasa/PicasaService$2;
.super Ljava/lang/Object;
.source "PicasaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/picasa/PicasaService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/picasa/PicasaService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/cooliris/picasa/PicasaService;Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaService$2;->this$0:Lcom/cooliris/picasa/PicasaService;

    iput-object p2, p0, Lcom/cooliris/picasa/PicasaService$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/cooliris/picasa/PicasaService$2;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService$2;->this$0:Lcom/cooliris/picasa/PicasaService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cooliris/picasa/PicasaService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/content/SyncResult;

    invoke-direct {v3}, Landroid/content/SyncResult;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/cooliris/picasa/PicasaService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)Z

    .line 102
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService$2;->this$0:Lcom/cooliris/picasa/PicasaService;

    iget v1, p0, Lcom/cooliris/picasa/PicasaService$2;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/cooliris/picasa/PicasaService;->stopSelf(I)V

    .line 103
    return-void
.end method
