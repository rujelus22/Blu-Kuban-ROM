.class LaQ/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/google/googlenav/ui/bw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bw;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, LaQ/bf;->a:Ljava/util/Map;

    .line 311
    iput-object p1, p0, LaQ/bf;->b:Lcom/google/googlenav/ui/bw;

    .line 312
    return-void
.end method


# virtual methods
.method public P_()V
    .registers 6

    .prologue
    .line 316
    iget-object v0, p0, LaQ/bf;->a:Ljava/util/Map;

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

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, p0, LaQ/bf;->b:Lcom/google/googlenav/ui/bw;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/ag;

    invoke-virtual {v4, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v2

    check-cast v2, LT/f;

    invoke-virtual {v2}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_a

    .line 321
    :cond_3b
    return-void
.end method
