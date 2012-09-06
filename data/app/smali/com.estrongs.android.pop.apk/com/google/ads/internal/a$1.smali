.class final Lcom/google/ads/internal/a$1;
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

    const-string v0, "/open"

    new-instance v1, Lcom/google/ads/as;

    invoke-direct {v1}, Lcom/google/ads/as;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/canOpenURLs"

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1}, Lcom/google/ads/aj;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/close"

    new-instance v1, Lcom/google/ads/al;

    invoke-direct {v1}, Lcom/google/ads/al;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/evalInOpener"

    new-instance v1, Lcom/google/ads/am;

    invoke-direct {v1}, Lcom/google/ads/am;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/ar;

    invoke-direct {v1}, Lcom/google/ads/ar;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/click"

    new-instance v1, Lcom/google/ads/ak;

    invoke-direct {v1}, Lcom/google/ads/ak;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/httpTrack"

    new-instance v1, Lcom/google/ads/an;

    invoke-direct {v1}, Lcom/google/ads/an;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/touch"

    new-instance v1, Lcom/google/ads/at;

    invoke-direct {v1}, Lcom/google/ads/at;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/video"

    new-instance v1, Lcom/google/ads/au;

    invoke-direct {v1}, Lcom/google/ads/au;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/plusOne"

    new-instance v1, Lcom/google/ads/ag;

    invoke-direct {v1}, Lcom/google/ads/ag;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
