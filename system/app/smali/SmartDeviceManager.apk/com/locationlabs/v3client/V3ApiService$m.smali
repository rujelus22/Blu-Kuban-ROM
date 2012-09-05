.class final Lcom/locationlabs/v3client/V3ApiService$m;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ljava/lang/String;",
        "Leo;",
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
    .line 345
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$m;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 346
    const-string v0, "com.locationlabs.v3client.action.SEND_ERROR_DATA"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/locationlabs/v3client/V3ApiService$m;->a()Lep;

    move-result-object v0

    check-cast v0, Leo;

    invoke-virtual {v0}, Leo;->e()Lbh;

    move-result-object v0

    invoke-virtual {v0}, Lbh;->getPersistedKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previously persisted exception successfully sent to server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/locationlabs/v3client/V3ApiService$m;->c:Lcom/locationlabs/v3client/V3ApiService;

    iget-object v1, v1, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v1, v0}, Lw;->f(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method
