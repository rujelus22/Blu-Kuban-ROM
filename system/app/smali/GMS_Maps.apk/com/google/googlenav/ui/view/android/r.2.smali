.class public Lcom/google/googlenav/ui/view/android/r;
.super Lcom/google/googlenav/ui/view/android/ay;


# instance fields
.field private final b:Lbb/k;

.field private c:Lcom/google/googlenav/suggest/android/SuggestView;

.field private d:Lcom/google/googlenav/suggest/android/SuggestView;

.field private k:Landroid/widget/RadioGroup;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/googlenav/j;

.field private s:Z

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/k;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0d001a

    :goto_d
    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/s;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/s;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->t:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    return-void

    :cond_1a
    const v0, 0x7f0d001f

    goto :goto_d
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/B;

    return-object v0
.end method

.method private a(Lau/x;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0f013b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x4fa

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x4d0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x57

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/bg;->aC:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->n()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/r;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->f(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/r;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->d(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->h()Lau/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(ZLau/x;Lcom/google/googlenav/suggest/android/SuggestView;)V

    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/googlenav/ui/view/android/r;->a(ZLau/x;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    if-nez v0, :cond_58

    const/4 v0, 0x0

    move-object v3, v0

    :goto_21
    if-eqz v3, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->l:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v0

    if-eqz v0, :cond_64

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->o:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->m:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v1

    :goto_44
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->p:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->n:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    :goto_52
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->q:Z

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/r;->d(Landroid/view/View;)V

    :cond_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    move-result-object v0

    move-object v3, v0

    goto :goto_21

    :cond_64
    move v0, v2

    goto :goto_35

    :cond_66
    move v0, v2

    goto :goto_44

    :cond_68
    move v1, v2

    goto :goto_52
.end method

.method private a(ZLau/x;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->s:Z

    if-nez p2, :cond_1a

    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/B;->a(Z)V

    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_39

    :cond_17
    :goto_17
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->s:Z

    return-void

    :cond_1a
    :try_start_1a
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/r;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lau/x;->o()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    invoke-virtual {p2}, Lau/x;->o()Z

    move-result v1

    if-eqz v1, :cond_59

    if-eqz p1, :cond_3d

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/B;->a(Z)V

    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_39

    goto :goto_17

    :catchall_39
    move-exception v0

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->s:Z

    throw v0

    :cond_3d
    :try_start_3d
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/B;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/B;->a(Z)V

    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aC:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/text/Editable;Lcom/google/googlenav/ui/bg;)V

    goto :goto_17

    :cond_59
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/B;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/B;->a(Z)V

    sget-object v1, Lcom/google/googlenav/ui/bg;->aD:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V
    :try_end_76
    .catchall {:try_start_3d .. :try_end_76} :catchall_39

    goto :goto_17
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/r;)Lcom/google/googlenav/suggest/android/SuggestView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    const v2, 0x7f0f0139

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Z)V

    invoke-direct {p0, v1, p1}, Lcom/google/googlenav/ui/view/android/r;->a(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget v0, v0, Lbb/k;->i:I

    packed-switch v0, :pswitch_data_b6

    :goto_11
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_65

    const v0, 0x7f0f0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->d(Landroid/view/View;)V

    :goto_2d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->c(Landroid/view/View;)V

    return-void

    :pswitch_31
    const v0, 0x7f0f013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    :pswitch_3e
    const v0, 0x7f0f013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    :pswitch_4b
    const v0, 0x7f0f013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    :pswitch_58
    const v0, 0x7f0f013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    :cond_65
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/x;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/x;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1b3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/y;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/y;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9c
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->d(Landroid/view/View;)V

    goto :goto_2d

    :cond_a0
    const/16 v0, 0x1c0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/z;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-static {v2, v0, v1, p1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    goto :goto_9c

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_31
        :pswitch_3e
        :pswitch_4b
        :pswitch_58
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/r;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/r;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 5

    const v2, 0x7f0f013f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget v0, v0, Lbb/k;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->o:Z

    if-nez v0, :cond_2e

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget v0, v0, Lbb/k;->i:I

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->p:Z

    if-nez v0, :cond_2e

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget v0, v0, Lbb/k;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->q:Z

    if-eqz v0, :cond_4d

    :cond_2e
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->a()[Laq/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->a([Laq/a;)V

    goto :goto_d

    :cond_42
    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_4d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->z()[Laq/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->a([Laq/a;)V

    goto :goto_d

    :cond_5f
    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->y()V

    return-void
.end method

.method private e(I)Lcom/google/googlenav/ui/android/M;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/A;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/A;-><init>(Lcom/google/googlenav/ui/view/android/r;I)V

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/r;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->x()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/r;)Lbb/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    return-object v0
.end method

.method private f(I)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0f0136

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    goto :goto_11
.end method

.method private m()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-nez v2, :cond_67

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->l:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->m:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->n:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->o:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->p:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/r;->q:Z

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v2

    invoke-virtual {v2}, LaE/h;->r()LaJ/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    if-eqz v3, :cond_67

    if-eqz v2, :cond_67

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v1}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->l:Z

    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->l:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->o:Z

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->m:Z

    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->m:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/r;->p:Z

    invoke-static {}, Lu/O;->a()Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->r:Lcom/google/googlenav/j;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v2

    if-eqz v2, :cond_68

    :goto_61
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->n:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->q:Z

    :cond_67
    return-void

    :cond_68
    move v0, v1

    goto :goto_61
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    goto :goto_11
.end method

.method private w()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->i()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    :cond_1b
    return-void
.end method

.method private x()Z
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->y()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v1}, Lbb/k;->g()Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/google/googlenav/ui/view/android/r;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v2, 0x305

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v1, 0x7f0f0136

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :goto_22
    return v0

    :cond_23
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v1}, Lbb/k;->h()Lau/x;

    move-result-object v1

    invoke-virtual {v1}, Lau/x;->c()Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/google/googlenav/ui/view/android/r;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v2}, Lbb/k;->h()Lau/x;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/r;->a(Lau/x;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/maps/MapsActivity;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    :cond_50
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v1}, Lbb/k;->i()Z

    move-result v1

    if-nez v1, :cond_6e

    sget-object v1, Lcom/google/googlenav/ui/view/android/r;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v2, 0x304

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v1, 0x7f0f0092

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    :cond_6e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/google/googlenav/ui/view/android/r;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v1}, Lbb/k;->j()Lau/x;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Lau/x;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/maps/MapsActivity;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    :cond_9b
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private y()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/r;->s:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->h()Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v2, v5, v5, v4}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget-object v2, v2, Lbb/k;->h:Lau/j;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    move-object v0, v1

    :goto_31
    invoke-virtual {v2, v0}, Lau/j;->a(Lau/x;)V

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/r;->a(Z)V

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2, v5, v5, v4}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    iget-object v2, v2, Lbb/k;->h:Lau/j;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    :goto_5f
    invoke-virtual {v2, v1}, Lau/j;->b(Lau/x;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->h:Landroid/view/View;

    invoke-direct {p0, v4, v0}, Lcom/google/googlenav/ui/view/android/r;->a(ZLandroid/view/View;)V

    goto :goto_7

    :cond_68
    invoke-static {v0}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    goto :goto_31

    :cond_6d
    invoke-static {v0}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v1

    goto :goto_5f
.end method

.method private z()[Laq/a;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    invoke-virtual {v1}, Lbb/k;->a()[Laq/a;

    move-result-object v3

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    new-array v4, v1, [Laq/a;

    move v1, v0

    :goto_d
    array-length v2, v3

    if-ge v0, v2, :cond_24

    aget-object v2, v3, v0

    sget-object v5, Lcom/google/googlenav/ui/n;->D:Laq/a;

    invoke-virtual {v2, v5}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    move v1, v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_24
    return-object v4
.end method


# virtual methods
.method protected H_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->b(Landroid/view/View;)V

    return-void
.end method

.method public K_()Lbb/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->b:Lbb/k;

    return-object v0
.end method

.method protected N_()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_26
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/r;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method public a(I)V
    .registers 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_40

    :goto_4
    :pswitch_4
    return-void

    :pswitch_5
    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_4

    :pswitch_1f
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_4

    :pswitch_39
    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->c(I)V

    goto :goto_4

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1f
        :pswitch_4
        :pswitch_39
    .end packed-switch
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/16 v0, 0xe7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .registers 4

    packed-switch p1, :pswitch_data_20

    :goto_3
    return-void

    :pswitch_4
    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_12
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/r;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method

.method protected c()Landroid/view/View;
    .registers 9

    const v7, 0x7f0f013b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v6, 0x7f0f013d

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->j()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->m()V

    const v0, 0x7f0f0136

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0x494

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/ui/view/android/B;-><init>(Lcom/google/googlenav/ui/view/android/r;Lcom/google/googlenav/ui/view/android/s;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/t;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/t;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f0092

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0x100

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/ui/view/android/B;-><init>(Lcom/google/googlenav/ui/view/android/r;Lcom/google/googlenav/ui/view/android/s;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/u;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/v;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/v;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f0093

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->k:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->k:Landroid/widget/RadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/google/googlenav/M;->E()Z

    move-result v1

    if-eqz v1, :cond_17a

    move v1, v2

    :goto_ac
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v0, 0x7f0f0137

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->g:Lcom/google/googlenav/ui/view/android/aB;

    const/16 v4, 0xd4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/aB;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f013a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->g:Lcom/google/googlenav/ui/view/android/aB;

    const/16 v4, 0xd5

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/aB;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/r;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/r;->w()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_145

    const v0, 0x7f0f0142

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x4ad

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/r;->g:Lcom/google/googlenav/ui/view/android/aB;

    const/16 v4, 0xe4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/aB;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0144

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/googlenav/ui/view/android/w;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/w;-><init>(Lcom/google/googlenav/ui/view/android/r;)V

    invoke-static {v0, v1, v4, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    const/16 v0, 0xf4

    invoke-direct {p0, v3, v7, v0}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;II)V

    const v0, 0x7f0f013c

    const/16 v1, 0x4d6

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;II)V

    const v0, 0x7f0f013e

    const/16 v1, 0x4da

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;II)V

    const/16 v0, 0x20c

    invoke-direct {p0, v3, v6, v0}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;II)V

    const v0, 0x7f0f0006

    const/16 v1, 0xe7

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Landroid/view/View;II)V

    :cond_145
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/r;->e(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f013c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/view/android/r;->e(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->e(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f013e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/r;->e(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_17a
    const/16 v1, 0x8

    goto/16 :goto_ac
.end method

.method public c(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f0f0136

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const v0, 0x7f0f0092

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    goto :goto_12
.end method

.method protected g()V
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_17
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-nez v1, :cond_27

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_27
    return-void
.end method

.method protected j()I
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f030051

    :goto_d
    return v0

    :cond_e
    const v0, 0x7f030050

    goto :goto_d
.end method

.method protected k()V
    .registers 4

    sget-object v0, Lcom/google/googlenav/ui/view/android/r;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/r;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1e
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ay;->onStop()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/r;->d:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a()V

    return-void
.end method
