.class final Lcom/locationlabs/v3client/V3ApiService$l;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ljava/lang/String;",
        "Len;",
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
    .line 305
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$l;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 306
    const-string v0, "com.locationlabs.v3client.action.SEND_DEBUG_DATA"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 301
    new-instance v0, Len;

    invoke-direct {v0, p1, p2}, Len;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    return-void
.end method
