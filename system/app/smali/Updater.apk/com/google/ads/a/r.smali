.class public final Lcom/google/ads/a/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/r;->a:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/util/HashMap;

    :goto_17
    iput-object v0, p0, Lcom/google/ads/a/r;->b:Ljava/util/HashMap;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/ads/a/r;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    iget-object v2, p0, Lcom/google/ads/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/ads/a/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Ljava/util/HashMap;

    return-object v0
.end method
