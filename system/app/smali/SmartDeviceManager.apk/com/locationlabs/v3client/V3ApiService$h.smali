.class final Lcom/locationlabs/v3client/V3ApiService$h;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Lbj;",
        "Ldj;",
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
    .line 366
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$h;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService$n;->a(Ljava/lang/String;Ljava/lang/String;)Lep;

    move-result-object v0

    check-cast v0, Ldj;

    iget-object v1, v0, Ldj;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/locationlabs/v3client/V3ApiService$h;->b:Lz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.locationlabs.v3client.action.GET_FEATURE."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz;->a(Ljava/lang/String;)V

    iget-object v2, v0, Ldj;->b:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v3, p0, Lcom/locationlabs/v3client/V3ApiService$h;->c:Lcom/locationlabs/v3client/V3ApiService;

    invoke-static {v3}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v3

    invoke-static {v1}, Ldg;->a(Ljava/lang/String;)Ldg;

    move-result-object v1

    invoke-interface {v3, v1}, Lw;->b(Ldg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v0, 0x0

    :cond_39
    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 363
    check-cast p2, Lbj;

    invoke-static {p1, p2}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Lbj;)V

    return-void
.end method
