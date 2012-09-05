.class Lcom/samsung/app/playreadyui/PRUIActivity$5;
.super Ljava/lang/Object;
.source "PRUIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

.field final synthetic val$redirectionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/app/playreadyui/PRUIActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iput-object p2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 513
    const-string v3, "PRUIActivity "

    const-string v4, "Notification dialog clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_89

    .line 517
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    const-string v4, ".pya"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    const-string v4, ".pyv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 519
    :cond_27
    const/4 v2, 0x0

    .line 521
    .local v2, mimetype:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    const-string v4, ".pya"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 523
    new-instance v2, Ljava/lang/String;

    .end local v2           #mimetype:Ljava/lang/String;
    const-string v3, "audio/vnd.ms-playready.media.pya"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 530
    .restart local v2       #mimetype:Ljava/lang/String;
    :cond_39
    :goto_39
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, fileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iget-object v4, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->startRegularDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v3, v4, v2, v5, v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$400(Lcom/samsung/app/playreadyui/PRUIActivity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->finish()V

    .line 547
    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #mimetype:Ljava/lang/String;
    :goto_5b
    return-void

    .line 525
    .restart local v2       #mimetype:Ljava/lang/String;
    :cond_5c
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    const-string v4, ".pyv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 527
    new-instance v2, Ljava/lang/String;

    .end local v2           #mimetype:Ljava/lang/String;
    const-string v3, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2       #mimetype:Ljava/lang/String;
    goto :goto_39

    .line 538
    .end local v2           #mimetype:Ljava/lang/String;
    :cond_6e
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->val$redirectionUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 540
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v3, v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->startActivity(Landroid/content/Intent;)V

    .line 541
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->finish()V

    goto :goto_5b

    .line 546
    .end local v1           #intent:Landroid/content/Intent;
    :cond_89
    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$5;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->finish()V

    goto :goto_5b
.end method
