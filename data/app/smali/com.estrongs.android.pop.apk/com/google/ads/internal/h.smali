.class final Lcom/google/ads/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/util/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/util/j",
        "<",
        "Lcom/google/ads/internal/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/internal/g;
    .registers 2

    invoke-static {}, Lcom/google/ads/internal/g;->a()Lcom/google/ads/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/internal/h;->a()Lcom/google/ads/internal/g;

    move-result-object v0

    return-object v0
.end method
