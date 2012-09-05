.class public Lcom/google/googlenav/ui/wizard/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bf;

.field private final b:Ljava/lang/String;

.field private final c:Lai/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bo;->c:Lai/f;

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Lai/f;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bo;->c:Lai/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/wizard/bp;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/bp;-><init>(Lcom/google/googlenav/ui/wizard/bo;)V

    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/bp;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/bp;->b:Landroid/widget/ImageView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 6

    check-cast p2, Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bp;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bo;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/bg;->P:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bo;->c:Lai/f;

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bp;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bo;->c:Lai/f;

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bp;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bp;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03004e

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
