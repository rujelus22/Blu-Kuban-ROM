.class public Lcom/google/googlenav/ui/view/android/bg;
.super Lcom/google/ads/AdSenseSpec;


# instance fields
.field private a:LaJ/B;

.field private b:LaJ/B;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bg;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:LaJ/B;

    return-object p0
.end method

.method public b(LaJ/B;)Lcom/google/googlenav/ui/view/android/bg;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bg;->b:LaJ/B;

    return-object p0
.end method

.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .registers 6

    invoke-super {p0, p1}, Lcom/google/ads/AdSenseSpec;->generateParameters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->a:LaJ/B;

    if-eqz v1, :cond_2c

    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "ll"

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bg;->a:LaJ/B;

    invoke-virtual {v3}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->b:LaJ/B;

    if-eqz v1, :cond_2c

    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "spn"

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bg;->b:LaJ/B;

    invoke-virtual {v3}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object v0
.end method
