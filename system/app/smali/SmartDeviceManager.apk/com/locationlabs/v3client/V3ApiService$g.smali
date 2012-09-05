.class final Lcom/locationlabs/v3client/V3ApiService$g;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Lcz;",
        "Ldi;",
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
    .line 248
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$g;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 249
    const-string v0, "com.locationlabs.v3client.action.GET_CONFIG"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    new-instance v0, Ldi;

    invoke-direct {v0, p1}, Ldi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    check-cast p2, Lcz;

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0, p2}, Lw;->a(Lcz;)V

    iget-object v0, p2, Lcz;->b:Ljava/util/Map;

    invoke-static {v0}, Ln;->a(Ljava/util/Map;)V

    return-void
.end method
