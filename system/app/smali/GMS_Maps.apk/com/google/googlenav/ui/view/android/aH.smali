.class public Lcom/google/googlenav/ui/view/android/aH;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/dialog/b;

.field private b:[Lcom/google/googlenav/ui/view/android/aL;

.field private final c:Landroid/view/View;

.field private final d:Landroid/content/Context;

.field private final e:Lbb/j;

.field private final f:Lcom/google/googlenav/ui/p;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/googlenav/ui/p;Lbb/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aH;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aH;->f:Lcom/google/googlenav/ui/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aH;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    iget-boolean v0, v0, Lbb/j;->c:Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aH;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    iget-boolean v0, v0, Lbb/j;->e:Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aH;->a(Z)V

    :cond_2d
    return-void
.end method

.method private static a(II)Lcom/google/googlenav/ui/view/android/aL;
    .registers 8

    invoke-static {p0, p1}, Lau/b;->b(II)Z

    move-result v5

    packed-switch p0, :pswitch_data_68

    new-instance v0, Lcom/google/googlenav/ui/view/android/aL;

    if-eqz v5, :cond_63

    const v1, 0x7f02024c

    :goto_e
    const/16 v2, 0xf4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe8

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aL;-><init>(ILjava/lang/String;IIZ)V

    :goto_1a
    return-object v0

    :pswitch_1b
    new-instance v0, Lcom/google/googlenav/ui/view/android/aL;

    if-eqz v5, :cond_2f

    const v1, 0x7f020254

    :goto_22
    const/16 v2, 0x4d6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe9

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aL;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_2f
    const v1, 0x7f020255

    goto :goto_22

    :pswitch_33
    new-instance v0, Lcom/google/googlenav/ui/view/android/aL;

    if-eqz v5, :cond_47

    const v1, 0x7f02025c

    :goto_3a
    const/16 v2, 0x4da

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xea

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aL;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_47
    const v1, 0x7f02025d

    goto :goto_3a

    :pswitch_4b
    new-instance v0, Lcom/google/googlenav/ui/view/android/aL;

    if-eqz v5, :cond_5f

    const v1, 0x7f02024a

    :goto_52
    const/16 v2, 0x20c

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xeb

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aL;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_5f
    const v1, 0x7f02024b

    goto :goto_52

    :cond_63
    const v1, 0x7f02024d

    goto :goto_e

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_33
        :pswitch_4b
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aH;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aH;->b(I)V

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->c:Landroid/view/View;

    const v1, 0x7f0f01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_30

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/aH;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0f0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x420

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f
    return-void

    :cond_30
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f
.end method

.method private a(Lbb/j;)[Lcom/google/googlenav/ui/view/android/aL;
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/aL;

    iget v1, p1, Lbb/j;->b:I

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(II)Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p1, Lbb/j;->b:I

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(II)Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p1, Lbb/j;->b:I

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(II)Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v1

    aput-object v1, v0, v4

    iget v1, p1, Lbb/j;->b:I

    invoke-static {v5, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(II)Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->f:Lcom/google/googlenav/ui/p;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method private b(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->c:Landroid/view/View;

    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const/16 v1, 0xec

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_32

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f0f01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x27c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    return-void

    :cond_32
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->c:Landroid/view/View;

    const v1, 0x7f0f0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/16 v1, 0xed

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    iget v1, v1, Lbb/j;->d:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    iget v2, v2, Lbb/j;->b:I

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/aH;->a(II)Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/aL;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->e:Lbb/j;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aH;->a(Lbb/j;)[Lcom/google/googlenav/ui/view/android/aL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->b:[Lcom/google/googlenav/ui/view/android/aL;

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/google/googlenav/ui/android/M;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/aI;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/aI;-><init>(Lcom/google/googlenav/ui/view/android/aH;I)V

    return-object v0
.end method

.method public a()V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aH;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aH;->c:Landroid/view/View;

    const v4, 0x7f0f0202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/aK;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/aH;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/aH;->b:[Lcom/google/googlenav/ui/view/android/aL;

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/view/android/aK;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/aL;)V

    new-instance v5, Lcom/google/googlenav/ui/view/android/aJ;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/view/android/aJ;-><init>(Lcom/google/googlenav/ui/view/android/aH;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/dialog/b;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/dialog/b;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/b;->show()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/b;->dismiss()V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aH;->a:Lcom/google/googlenav/ui/view/dialog/b;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aH;->b()V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aH;->a()V

    goto :goto_f
.end method
