.class Lcom/google/googlenav/ui/view/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/RadioGroup;

.field final synthetic c:I

.field final synthetic d:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;Ljava/lang/String;Landroid/widget/RadioGroup;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Lcom/google/googlenav/ui/view/android/Z;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/RadioGroup;

    iput p4, p0, Lcom/google/googlenav/ui/view/android/ab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/16 v3, 0x6a6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->g(Lcom/google/googlenav/ui/view/android/Z;)Lcom/google/googlenav/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->l(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/Z;->f(Lcom/google/googlenav/ui/view/android/Z;)Z

    move-result v1

    if-nez v1, :cond_2d

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/RadioGroup;

    if-lez v0, :cond_29

    const v0, 0x7f0f0314

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1d

    :cond_29
    const v0, 0x7f0f0313

    goto :goto_25

    :cond_2d
    iget v1, p0, Lcom/google/googlenav/ui/view/android/ab;->c:I

    if-ne v1, v0, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_1d

    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/ab;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_1d
.end method
