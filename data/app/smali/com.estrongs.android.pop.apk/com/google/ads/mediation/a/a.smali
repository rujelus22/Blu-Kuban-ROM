.class public Lcom/google/ads/mediation/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/h;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/ads/mediation/a/a;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/a/a;->b:Z

    invoke-virtual {p0}, Lcom/google/ads/mediation/a/a;->c()Lcom/google/ads/mediation/a/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/mediation/a/a;->a:Z

    return v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/mediation/a/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/google/ads/mediation/a/a;
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/a/a;->c:Ljava/util/Map;

    return-object p0
.end method
