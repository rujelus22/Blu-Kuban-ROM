.class final Lcom/locationlabs/v3client/V3ApiService$i;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Lef",
        "<*>;",
        "Ldk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$i;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private a(Ljava/lang/String;)Ldk;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 433
    :try_start_1
    invoke-static {p1}, Lk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldk;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_2e

    .line 452
    iget-object v1, p0, Lcom/locationlabs/v3client/V3ApiService$i;->b:Lz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.locationlabs.v3client.action.GET_RESOURCE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ldk;->a:Lbk;

    invoke-virtual {v3}, Lbk;->getIntentActionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz;->a(Ljava/lang/String;)V

    .line 453
    :goto_25
    return-object v0

    .line 444
    :catch_26
    move-exception v0

    .line 445
    const-string v1, "base64 decoding error: "

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 446
    goto :goto_25

    .line 447
    :catch_2e
    move-exception v0

    .line 448
    const-string v1, "base64 decoding error: "

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 449
    goto :goto_25
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-direct {p0, p2}, Lcom/locationlabs/v3client/V3ApiService$i;->a(Ljava/lang/String;)Ldk;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 423
    check-cast p2, Lef;

    invoke-virtual {p0}, Lcom/locationlabs/v3client/V3ApiService$i;->a()Lep;

    move-result-object p0

    check-cast p0, Ldk;

    iget-object v0, p0, Ldk;->a:Lbk;

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lw;->a(Landroid/content/Context;Lbk;Lef;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.locationlabs.v3client.action.RESOURCE_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.locationlabs.v3client.extra.RESOURCE_FULL_NAME"

    invoke-virtual {v0}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_30

    const-string v2, "com.locationlabs.v3client.extra.APPLICATION_ID"

    invoke-virtual {v0}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v1}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
