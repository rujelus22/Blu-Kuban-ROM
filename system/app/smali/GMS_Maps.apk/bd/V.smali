.class Lbd/V;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/google/googlenav/ui/bF;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bF;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbd/V;->a:Ljava/util/Map;

    iput-object p1, p0, Lbd/V;->b:Lcom/google/googlenav/ui/bF;

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 6

    iget-object v0, p0, Lbd/V;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lbd/V;->b:Lcom/google/googlenav/ui/bF;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/aj;

    invoke-virtual {v4, v2}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v2

    check-cast v2, Lai/f;

    invoke-virtual {v2}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_a

    :cond_3b
    return-void
.end method
