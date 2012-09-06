.class public Lcom/google/ads/searchads/SearchAdRequest;
.super Lcom/google/ads/AdRequest;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/ads/AdRequest;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xff

    const-class v0, Lcom/google/ads/mediation/a/a;

    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/a/a;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/ads/mediation/a/a;

    invoke-direct {v0}, Lcom/google/ads/mediation/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->a(Lcom/google/ads/mediation/h;)Lcom/google/ads/AdRequest;

    :cond_14
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bgcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_68

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_68

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientfrom"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientto"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_ad

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "acolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:Ljava/lang/String;

    if-eqz v1, :cond_bc

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headersize"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_e2

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    if-eqz v1, :cond_f5

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "btype"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-virtual {v3}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bthick"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->n:Ljava/lang/String;

    if-eqz v1, :cond_113

    invoke-virtual {v0}, Lcom/google/ads/mediation/a/a;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_113
    invoke-super {p0, p1}, Lcom/google/ads/AdRequest;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
