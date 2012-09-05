.class public Lcom/google/googlenav/ui/view/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:LaY/aG;

.field final b:I

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/CharSequence;

.field private final g:Ljava/lang/CharSequence;

.field private final h:Ljava/lang/CharSequence;

.field private final i:Lai/f;

.field private final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/f;ILaY/aG;I)V
    .registers 14

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_2a

    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->c:Ljava/lang/CharSequence;

    if-nez p2, :cond_31

    move-object v0, v1

    :goto_c
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/CharSequence;

    if-nez p3, :cond_38

    move-object v0, v1

    :goto_11
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->e:Ljava/lang/CharSequence;

    if-nez p4, :cond_43

    move-object v0, v1

    :goto_16
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->f:Ljava/lang/CharSequence;

    if-nez p5, :cond_4a

    move-object v0, v1

    :goto_1b
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->g:Ljava/lang/CharSequence;

    if-nez p6, :cond_51

    :goto_1f
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->h:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/c;->i:Lai/f;

    iput p8, p0, Lcom/google/googlenav/ui/view/android/c;->j:I

    iput-object p9, p0, Lcom/google/googlenav/ui/view/android/c;->a:LaY/aG;

    iput p10, p0, Lcom/google/googlenav/ui/view/android/c;->b:I

    return-void

    :cond_2a
    sget-object v0, Lcom/google/googlenav/ui/bg;->ae:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_7

    :cond_31
    sget-object v0, Lcom/google/googlenav/ui/bg;->C:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_c

    :cond_38
    invoke-static {p3}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->bX:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_11

    :cond_43
    sget-object v0, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {p4, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_16

    :cond_4a
    sget-object v0, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {p5, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1b

    :cond_51
    sget-object v0, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {p6, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_1f
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/lang/String;ILaY/aG;I)Lcom/google/googlenav/ui/view/android/c;
    .registers 16

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aI()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aJ()Lab/e;

    move-result-object v1

    invoke-virtual {v1}, Lab/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lab/e;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x32a

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_41
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v6

    :goto_57
    invoke-virtual {p3, p0, v7}, LaY/aG;->b(Lcom/google/googlenav/ah;Z)Lah/f;

    move-result-object v7

    check-cast v7, Lai/f;

    new-instance v0, Lcom/google/googlenav/ui/view/android/c;

    move-object v1, p1

    move v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/ui/view/android/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/f;ILaY/aG;I)V

    goto :goto_8

    :cond_67
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_6c
    move-object v6, v0

    goto :goto_57

    :cond_6e
    move-object v3, v0

    goto :goto_41
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/view/android/d;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/d;-><init>()V

    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/d;->a:Landroid/view/View;

    const v0, 0x7f0f036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->c:Landroid/widget/TextView;

    const v0, 0x7f0f029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->d:Landroid/widget/TextView;

    const v0, 0x7f0f036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->e:Landroid/widget/TextView;

    const v0, 0x7f0f036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->f:Landroid/widget/TextView;

    const v0, 0x7f0f0370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->g:Landroid/widget/TextView;

    const v0, 0x7f0f002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->h:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lcom/google/googlenav/ui/view/android/c;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/d;->i:Lcom/google/googlenav/ui/view/android/e;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lcom/google/googlenav/ui/view/android/d;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->e:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->g:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->i:Lai/f;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->i:Lcom/google/googlenav/ui/view/android/e;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/c;->j:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/e;->a:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/d;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/d;->i:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03013d

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/c;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_28
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_34
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
