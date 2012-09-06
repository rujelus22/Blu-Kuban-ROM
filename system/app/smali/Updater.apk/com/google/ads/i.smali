.class public final Lcom/google/ads/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_b
    iput-object p1, p0, Lcom/google/ads/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/i;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/ads/i;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/i;->d:Ljava/util/HashMap;

    return-object v0
.end method
