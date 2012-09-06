.class public final Lcom/google/ads/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/an;


# instance fields
.field private a:Lcom/google/ads/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0}, Lcom/google/ads/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/ax;-><init>(Lcom/google/ads/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 6

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/a/r;

    const-string v1, "webapp"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    goto :goto_f

    :cond_25
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/a/r;

    const-string v1, "expand"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    goto :goto_f

    :cond_3a
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/a/r;

    const-string v1, "intent"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    goto :goto_f
.end method
