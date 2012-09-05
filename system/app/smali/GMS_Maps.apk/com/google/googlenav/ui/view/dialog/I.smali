.class public Lcom/google/googlenav/ui/view/dialog/I;
.super Lcom/google/googlenav/ui/view/dialog/a;


# static fields
.field private static l:I


# instance fields
.field d:Landroid/view/animation/Animation;

.field k:Landroid/view/animation/Animation;

.field private final m:Lcom/google/googlenav/android/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xbb8

    sput v0, Lcom/google/googlenav/ui/view/dialog/I;->l:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/I;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/I;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .registers 4

    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/I;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 3

    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/I;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected d()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/I;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/I;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/J;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/I;->m:Lcom/google/googlenav/android/ac;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/ui/view/dialog/J;-><init>(Lcom/google/googlenav/ui/view/dialog/I;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    sget v0, Lcom/google/googlenav/ui/view/dialog/I;->l:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lbf/g;->a(J)V

    invoke-virtual {v1}, Lbf/g;->g()V

    return-void
.end method
