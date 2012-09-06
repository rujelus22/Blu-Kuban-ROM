.class final Lcom/google/ads/c$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/ads/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "banner"

    sget-object v1, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/c$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mrec"

    sget-object v1, Lcom/google/ads/d;->c:Lcom/google/ads/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/c$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullbanner"

    sget-object v1, Lcom/google/ads/d;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/c$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "leaderboard"

    sget-object v1, Lcom/google/ads/d;->e:Lcom/google/ads/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/c$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "skyscraper"

    sget-object v1, Lcom/google/ads/d;->f:Lcom/google/ads/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/c$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
