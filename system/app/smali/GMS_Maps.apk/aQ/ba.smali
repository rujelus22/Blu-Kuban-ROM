.class LaQ/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const v0, 0x7f04014b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaQ/ba;->a:Landroid/view/ViewGroup;

    .line 343
    iget-object v0, p0, LaQ/ba;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    iget-object v1, p0, LaQ/ba;->a:Landroid/view/ViewGroup;

    .line 347
    const v0, 0x7f10036e

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaQ/ba;->b:Landroid/view/ViewGroup;

    .line 348
    const v0, 0x7f10036d

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/ba;->c:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f10036f

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/ba;->d:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f100370

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/ba;->e:Landroid/widget/TextView;

    .line 351
    return-void
.end method
