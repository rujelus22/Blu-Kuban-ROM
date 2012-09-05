.class final Lcom/sdgtl/mediahub/spr/screen/od;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const v8, 0x7f0a01c8

    const/16 v5, 0x34

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v7, 0x1

    if-eqz p2, :cond_b0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a87

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_207

    const-string v1, "retry_carrire_billing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException carrireMessageId == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRequestIdInitDirectBillingRetryCount == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRequestIdInitDirectBillingRetryCount == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRequestIdInitDirectBillingRetryCount == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_b1

    if-eq v1, v5, :cond_b1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_b1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_b1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_b1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b1

    :cond_b0
    :goto_b0
    return-void

    :cond_b1
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_121

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_121

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "purchaseRequest_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1f

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    :goto_ec
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->G(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->H(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ListView;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/view/View;Landroid/view/View;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v7, :cond_11b

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->J(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11b
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_b0

    :cond_121
    if-ne v1, v5, :cond_15b

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_15b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directBilling_auth_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto :goto_ec

    :cond_15b
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1a7

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "directBilling_init_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x20

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_1a7
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->i(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v2

    if-eqz v2, :cond_205

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v2

    if-eqz v2, :cond_205

    move v2, v6

    :goto_1e2
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(I)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_205
    move v2, v7

    goto :goto_1e2

    :cond_207
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_307

    :try_start_218
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dm;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dm;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    if-eqz v0, :cond_2c5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    if-nez v0, :cond_25d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_25d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_2ab

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2a0
    .catch Ljava/lang/ClassCastException; {:try_start_218 .. :try_end_2a0} :catch_2d4

    move-result-object v0

    :try_start_2a1
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_2a6
    .catch Ljava/lang/ClassCastException; {:try_start_2a1 .. :try_end_2a6} :catch_c8b

    move-object v1, v0

    move v2, v10

    move-object v0, v8

    goto/16 :goto_ec

    :cond_2ab
    :try_start_2ab
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2be
    .catch Ljava/lang/ClassCastException; {:try_start_2ab .. :try_end_2be} :catch_c8f

    move-result-object v1

    :try_start_2bf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e:Landroid/os/Handler;
    :try_end_2c3
    .catch Ljava/lang/ClassCastException; {:try_start_2bf .. :try_end_2c3} :catch_c94

    goto/16 :goto_ec

    :cond_2c5
    :try_start_2c5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_2cd
    .catch Ljava/lang/ClassCastException; {:try_start_2c5 .. :try_end_2cd} :catch_c8f

    move-result-object v1

    :try_start_2ce
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_2d2
    .catch Ljava/lang/ClassCastException; {:try_start_2ce .. :try_end_2d2} :catch_c99

    goto/16 :goto_ec

    :catch_2d4
    move-exception v0

    move-object v0, v9

    move v1, v10

    :goto_2d7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "price_type_code"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x1c

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_ec

    :cond_307
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_510

    :try_start_318
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    if-eqz v0, :cond_4ff

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    if-nez v1, :cond_4c6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "products_purchase_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v3, 0x3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    if-lez v1, :cond_45f

    const-string v1, "02"

    :goto_34d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49c

    move v2, v6

    :goto_360
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_463

    :goto_370
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->u(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    if-nez v1, :cond_3c4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/c/a;)V

    :cond_3c4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    if-eqz v0, :cond_41b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->f()Z

    move-result v1

    if-eqz v1, :cond_41b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;J)V

    :cond_41b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_cab

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)V
    :try_end_42e
    .catch Ljava/lang/ClassCastException; {:try_start_318 .. :try_end_42e} :catch_4c0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    :goto_431
    :try_start_431
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_43a
    .catch Ljava/lang/ClassCastException; {:try_start_431 .. :try_end_43a} :catch_43c

    goto/16 :goto_ec

    :catch_43c
    move-exception v3

    :goto_43d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "purchaseRequest_info"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x1d

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto/16 :goto_ec

    :cond_45f
    :try_start_45f
    const-string v1, "01"

    goto/16 :goto_34d

    :cond_463
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/di;-><init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_360

    :cond_49c
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/di;-><init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    goto/16 :goto_370

    :catch_4c0
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_43d

    :cond_4c6
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I
    :try_end_4c8
    .catch Ljava/lang/ClassCastException; {:try_start_45f .. :try_end_4c8} :catch_4c0

    const/16 v3, 0x138f

    if-ne v1, v3, :cond_4dc

    :try_start_4cc
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4d3
    .catch Ljava/lang/ClassCastException; {:try_start_4cc .. :try_end_4d3} :catch_c76

    move-result-object v9

    :try_start_4d4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e:Landroid/os/Handler;
    :try_end_4d8
    .catch Ljava/lang/ClassCastException; {:try_start_4d4 .. :try_end_4d8} :catch_c7b

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_431

    :cond_4dc
    :try_start_4dc
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    const/16 v2, 0xfae

    if-ne v1, v2, :cond_4ed

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ZLandroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_431

    :cond_4ed
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4f4
    .catch Ljava/lang/ClassCastException; {:try_start_4dc .. :try_end_4f4} :catch_4c0

    move-result-object v9

    :try_start_4f5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_4fa
    .catch Ljava/lang/ClassCastException; {:try_start_4f5 .. :try_end_4fa} :catch_c80

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_431

    :cond_4ff
    :try_start_4ff
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_507
    .catch Ljava/lang/ClassCastException; {:try_start_4ff .. :try_end_507} :catch_c76

    move-result-object v9

    :try_start_508
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_50c
    .catch Ljava/lang/ClassCastException; {:try_start_508 .. :try_end_50c} :catch_c86

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_431

    :cond_510
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_5db

    :try_start_521
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/de;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/de;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    if-eqz v0, :cond_5a4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/de;->a:I

    if-nez v0, :cond_57d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-nez v0, :cond_ca1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directBilling_auth_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x34

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_57d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/de;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/de;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_599
    .catch Ljava/lang/ClassCastException; {:try_start_521 .. :try_end_599} :catch_5b3

    move-result-object v0

    :try_start_59a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_59f
    .catch Ljava/lang/ClassCastException; {:try_start_59a .. :try_end_59f} :catch_c68

    move-object v1, v0

    move v2, v10

    move-object v0, v8

    goto/16 :goto_ec

    :cond_5a4
    :try_start_5a4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_5ac
    .catch Ljava/lang/ClassCastException; {:try_start_5a4 .. :try_end_5ac} :catch_c6c

    move-result-object v1

    :try_start_5ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_5b1
    .catch Ljava/lang/ClassCastException; {:try_start_5ad .. :try_end_5b1} :catch_c71

    goto/16 :goto_ec

    :catch_5b3
    move-exception v0

    move-object v0, v9

    move v1, v10

    :goto_5b6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "purchaseRequest_info"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x1f

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_ec

    :cond_5db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_73b

    :try_start_5ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v1

    if-eqz v1, :cond_6fa

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    if-nez v1, :cond_647

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->e:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z

    move-result v0

    if-nez v0, :cond_630

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_630
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_647
    if-nez v0, :cond_67c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directBilling_auth_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x34

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_67c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6c7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->c:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z

    move-result v0

    if-nez v0, :cond_ca1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "directBilling_init_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x20

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_6c7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->h:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directBilling_auth_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x34

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_6fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->d:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z
    :try_end_701
    .catch Ljava/lang/ClassCastException; {:try_start_5ec .. :try_end_701} :catch_713

    move-result v0

    if-nez v0, :cond_ca1

    :try_start_704
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_70c
    .catch Ljava/lang/ClassCastException; {:try_start_704 .. :try_end_70c} :catch_c5e

    move-result-object v1

    :try_start_70d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_711
    .catch Ljava/lang/ClassCastException; {:try_start_70d .. :try_end_711} :catch_c63

    goto/16 :goto_ec

    :catch_713
    move-exception v0

    move-object v0, v9

    move v1, v10

    :goto_716
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "directBilling_auth_url"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_ec

    :cond_73b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_91a

    :try_start_74c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    if-eqz v0, :cond_909

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    if-nez v1, :cond_8e1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "products_purchase_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v3, 0x3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    if-lez v1, :cond_87a

    const-string v1, "02"

    :goto_78c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b7

    move v2, v6

    :goto_79f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_87e

    :goto_7af
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->u(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    if-nez v1, :cond_803

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/c/a;)V

    :cond_803
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    if-eqz v0, :cond_ca6

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->f()Z

    move-result v1

    if-eqz v1, :cond_ca6

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;J)V
    :try_end_83a
    .catch Ljava/lang/ClassCastException; {:try_start_74c .. :try_end_83a} :catch_8db

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    :goto_83d
    :try_start_83d
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_846
    .catch Ljava/lang/ClassCastException; {:try_start_83d .. :try_end_846} :catch_848

    goto/16 :goto_ec

    :catch_848
    move-exception v3

    :goto_849
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "order_id"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v5

    iget-wide v8, v5, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "directBilling_init_token"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x20

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto/16 :goto_ec

    :cond_87a
    :try_start_87a
    const-string v1, "01"

    goto/16 :goto_78c

    :cond_87e
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/di;-><init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_79f

    :cond_8b7
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/di;-><init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    goto/16 :goto_7af

    :catch_8db
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_849

    :cond_8e1
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I
    :try_end_8e3
    .catch Ljava/lang/ClassCastException; {:try_start_87a .. :try_end_8e3} :catch_8db

    const/16 v3, 0x138f

    if-ne v1, v3, :cond_8f7

    :try_start_8e7
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_8ee
    .catch Ljava/lang/ClassCastException; {:try_start_8e7 .. :try_end_8ee} :catch_c49

    move-result-object v9

    :try_start_8ef
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e:Landroid/os/Handler;
    :try_end_8f3
    .catch Ljava/lang/ClassCastException; {:try_start_8ef .. :try_end_8f3} :catch_c4e

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_83d

    :cond_8f7
    :try_start_8f7
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_8fe
    .catch Ljava/lang/ClassCastException; {:try_start_8f7 .. :try_end_8fe} :catch_8db

    move-result-object v9

    :try_start_8ff
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_904
    .catch Ljava/lang/ClassCastException; {:try_start_8ff .. :try_end_904} :catch_c53

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_83d

    :cond_909
    :try_start_909
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_911
    .catch Ljava/lang/ClassCastException; {:try_start_909 .. :try_end_911} :catch_c49

    move-result-object v9

    :try_start_912
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_916
    .catch Ljava/lang/ClassCastException; {:try_start_912 .. :try_end_916} :catch_c59

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_83d

    :cond_91a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->C(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_998

    :try_start_92b
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dh;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dh;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->D(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v0

    if-eqz v0, :cond_966

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->D(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->a:I

    if-nez v0, :cond_956

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V
    :try_end_951
    .catch Ljava/lang/ClassCastException; {:try_start_92b .. :try_end_951} :catch_975

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_956
    :try_start_956
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_95e
    .catch Ljava/lang/ClassCastException; {:try_start_956 .. :try_end_95e} :catch_c35

    move-result-object v1

    :try_start_95f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e:Landroid/os/Handler;
    :try_end_963
    .catch Ljava/lang/ClassCastException; {:try_start_95f .. :try_end_963} :catch_c3a

    move v2, v6

    goto/16 :goto_ec

    :cond_966
    :try_start_966
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;
    :try_end_96e
    .catch Ljava/lang/ClassCastException; {:try_start_966 .. :try_end_96e} :catch_c3f

    move-result-object v1

    :try_start_96f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;
    :try_end_973
    .catch Ljava/lang/ClassCastException; {:try_start_96f .. :try_end_973} :catch_c44

    goto/16 :goto_ec

    :catch_975
    move-exception v0

    move-object v0, v9

    move v1, v10

    :goto_978
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "eula_typeCode"

    const-string v4, "03"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x3

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_ec

    :cond_998
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->E(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_ca1

    :try_start_9a9
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_a18

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "price_type_code"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v3, 0x1c

    invoke-static {v3, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_9fb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a019a

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_9f0
    .catch Ljava/lang/ClassCastException; {:try_start_9a9 .. :try_end_9f0} :catch_a2c

    move-object v0, v9

    :goto_9f1
    :try_start_9f1
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->F(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    :try_end_9f6
    .catch Ljava/lang/ClassCastException; {:try_start_9f1 .. :try_end_9f6} :catch_c31

    move-object v1, v0

    move v2, v10

    move-object v0, v8

    goto/16 :goto_ec

    :cond_9fb
    :try_start_9fb
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_a02
    .catch Ljava/lang/ClassCastException; {:try_start_9fb .. :try_end_a02} :catch_a2c

    move-result-object v9

    :try_start_a03
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {v1, v0, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ILjava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c9e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    :try_end_a16
    .catch Ljava/lang/ClassCastException; {:try_start_a03 .. :try_end_a16} :catch_c2d

    move-object v0, v9

    goto :goto_9f1

    :cond_a18
    :try_start_a18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_a2a
    .catch Ljava/lang/ClassCastException; {:try_start_a18 .. :try_end_a2a} :catch_a2c

    move-object v0, v9

    goto :goto_9f1

    :catch_a2c
    move-exception v0

    move-object v1, v9

    :goto_a2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0d00e5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "redeem_id"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "product_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "price_type_code"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    move-object v0, v8

    move v2, v10

    goto/16 :goto_ec

    :cond_a87
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->notifyDataSetChanged()V

    goto/16 :goto_b0

    :cond_ab6
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_acd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->G(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto/16 :goto_b0

    :cond_acd
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "MediaHubAPP"

    const-string v1, "CONNECTIVITY_ACTION "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-eq v0, v1, :cond_b0

    const-string v0, "MediaHubAPP"

    const-string v1, "CONNECTIVITY_ACTION 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_b43

    const-string v1, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activeNetInfo.getType() == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activeNetInfo.isConnected() == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activeNetInfo.getDetailedState() == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b43
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v1

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/oe;->b:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v1, v3, :cond_b7d

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v7, :cond_b0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directBilling_auth_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto/16 :goto_b0

    :cond_b7d
    const-string v1, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "if(mNetWorkState != NetWorkState.Not_Change_NetWork){ else mNetWorkState == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b9f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_bb2

    :cond_b9f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->c:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v0, v1, :cond_bb2

    const-string v0, "MediaHubAPP"

    const-string v1, "return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b0

    :cond_bb2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->d:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v0, v1, :cond_bd4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v1, v8}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;

    invoke-static {v0, v2, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_bcb
    :goto_bcb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)V

    goto/16 :goto_b0

    :cond_bd4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->e:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v0, v1, :cond_bf3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V

    goto :goto_bcb

    :cond_bf3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->c:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v0, v1, :cond_bcb

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "directBilling_init_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/od;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x20

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto :goto_bcb

    :catch_c2d
    move-exception v0

    move-object v1, v9

    goto/16 :goto_a2e

    :catch_c31
    move-exception v1

    move-object v1, v0

    goto/16 :goto_a2e

    :catch_c35
    move-exception v0

    move-object v0, v9

    move v1, v6

    goto/16 :goto_978

    :catch_c3a
    move-exception v0

    move-object v0, v1

    move v1, v6

    goto/16 :goto_978

    :catch_c3f
    move-exception v0

    move-object v0, v9

    move v1, v2

    goto/16 :goto_978

    :catch_c44
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_978

    :catch_c49
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_849

    :catch_c4e
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_849

    :catch_c53
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_849

    :catch_c59
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_849

    :catch_c5e
    move-exception v0

    move-object v0, v9

    move v1, v2

    goto/16 :goto_716

    :catch_c63
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_716

    :catch_c68
    move-exception v1

    move v1, v10

    goto/16 :goto_5b6

    :catch_c6c
    move-exception v0

    move-object v0, v9

    move v1, v2

    goto/16 :goto_5b6

    :catch_c71
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_5b6

    :catch_c76
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_43d

    :catch_c7b
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_43d

    :catch_c80
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_43d

    :catch_c86
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_43d

    :catch_c8b
    move-exception v1

    move v1, v10

    goto/16 :goto_2d7

    :catch_c8f
    move-exception v0

    move-object v0, v9

    move v1, v2

    goto/16 :goto_2d7

    :catch_c94
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_2d7

    :catch_c99
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_2d7

    :cond_c9e
    move-object v0, v9

    goto/16 :goto_9f1

    :cond_ca1
    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_ec

    :cond_ca6
    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_83d

    :cond_cab
    move-object v0, v8

    move-object v1, v9

    move v2, v10

    goto/16 :goto_431
.end method
