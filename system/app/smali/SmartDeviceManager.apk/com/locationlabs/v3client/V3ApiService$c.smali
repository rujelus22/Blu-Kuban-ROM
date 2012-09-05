.class final Lcom/locationlabs/v3client/V3ApiService$c;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ljava/lang/String;",
        "Lcx;",
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
    .line 122
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$c;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 123
    const-string v0, "com.locationlabs.v3client.action.CHANGE_PUSH_ID"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService$n;->a(Ljava/lang/String;Ljava/lang/String;)Lep;

    move-result-object v0

    check-cast v0, Lcx;

    iget-object v1, v0, Lcx;->a:Lcn;

    invoke-virtual {v1}, Lcn;->getPush()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/locationlabs/v3client/V3ApiService$c;->c:Lcom/locationlabs/v3client/V3ApiService;

    invoke-static {v2}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    invoke-interface {v2}, Lw;->u()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Lw;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    :cond_23
    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/locationlabs/v3client/V3ApiService$c;->a()Lep;

    move-result-object p0

    check-cast p0, Lcx;

    iget-object v0, p0, Lcx;->a:Lcn;

    invoke-virtual {v0}, Lcn;->getPush()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v0}, Lw;->d(Ljava/lang/String;)V

    return-void
.end method
