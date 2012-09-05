.class final Lcom/locationlabs/v3client/V3ApiService$b;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ljava/lang/String;",
        "Lcw;",
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
    .line 268
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$b;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 269
    const-string v0, "com.locationlabs.v3client.action.CHANGE_PHONE_NUMBER"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/locationlabs/v3client/V3ApiService$b;->c:Lcom/locationlabs/v3client/V3ApiService;

    iget-object v0, v0, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-static {p1}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw;->a(Ljava/lang/String;)V

    return-void
.end method
