.class final Lcom/google/ads/internal/a$3;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/ads/ai;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/invalidRequest"

    new-instance v1, Lcom/google/ads/ao;

    invoke-direct {v1}, Lcom/google/ads/ao;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadAdURL"

    new-instance v1, Lcom/google/ads/ap;

    invoke-direct {v1}, Lcom/google/ads/ap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadSdkConstants"

    new-instance v1, Lcom/google/ads/aq;

    invoke-direct {v1}, Lcom/google/ads/aq;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
