.class final Lcom/locationlabs/v3client/V3ApiService$f;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Lcs;",
        "Ldh;",
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
    .line 396
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$f;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 397
    const-string v0, "com.locationlabs.v3client.action.GET_APPLICATION"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/locationlabs/v3client/V3ApiService$f;->c:Lcom/locationlabs/v3client/V3ApiService;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    new-instance v1, Ldh;

    invoke-direct {v1, p1, p2}, Ldh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Ldh;->a:I

    invoke-interface {v0, v2}, Lw;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 393
    check-cast p2, Lcs;

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0, p2}, Lw;->a(Lcs;)V

    return-void
.end method
