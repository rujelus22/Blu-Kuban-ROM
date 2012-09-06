.class public Lcom/google/googlenav/ui/wizard/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LT/f;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bF;->a:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bF;->b:LT/f;

    .line 249
    return-void
.end method

.method constructor <init>(Ljava/lang/String;LT/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bF;->a:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bF;->b:LT/f;

    .line 244
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 268
    new-instance v1, Lcom/google/googlenav/ui/wizard/bG;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/bG;-><init>(Lcom/google/googlenav/ui/wizard/bF;)V

    .line 269
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/bG;->a:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/bG;->b:Landroid/widget/ImageView;

    .line 271
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p2, Lcom/google/googlenav/ui/wizard/bG;

    .line 277
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bG;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bF;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/aV;->N:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bF;->b:LT/f;

    if-eqz v0, :cond_21

    .line 279
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bG;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bF;->b:LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bG;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_20
    return-void

    .line 282
    :cond_21
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bG;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 253
    const v0, 0x7f04005a

    return v0
.end method
