.class final Lcom/twitter/android/cg;
.super Lcom/twitter/android/l;


# instance fields
.field public final h:Landroid/view/View;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/l;-><init>(Landroid/view/View;)V

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cg;->h:Landroid/view/View;

    const v0, 0x7f070010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/cg;->i:Landroid/widget/ImageView;

    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/cg;->j:Landroid/widget/TextView;

    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/cg;->k:Landroid/widget/TextView;

    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/cg;->l:Landroid/widget/TextView;

    return-void
.end method
