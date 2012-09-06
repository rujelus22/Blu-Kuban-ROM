.class final Landroid/support/v4/view/ax;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2
    .parameter

    .prologue
    .line 2472
    iput-object p1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2482
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 2483
    const-class v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/a;->a(Ljava/lang/CharSequence;)V

    .line 2484
    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/v;->a()I

    move-result v1

    if-le v1, v0, :cond_75

    :goto_21
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Z)V

    .line 2485
    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-ltz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/v;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4d

    .line 2486
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    .line 2488
    :cond_4d
    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/v;->a()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 2489
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    .line 2491
    :cond_74
    return-void

    .line 2484
    :cond_75
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2495
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2512
    :goto_8
    return v0

    .line 2498
    :cond_9
    sparse-switch p2, :sswitch_data_74

    move v0, v1

    .line 2512
    goto :goto_8

    .line 2500
    :sswitch_e
    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    if-ltz v2, :cond_40

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/v;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_40

    .line 2501
    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_40
    move v0, v1

    .line 2504
    goto :goto_8

    .line 2506
    :sswitch_42
    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    if-lez v2, :cond_72

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/v;->a()I

    move-result v3

    if-ge v2, v3, :cond_72

    .line 2507
    iget-object v1, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ax;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_72
    move v0, v1

    .line 2510
    goto :goto_8

    .line 2498
    :sswitch_data_74
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_42
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2476
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2477
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2478
    return-void
.end method
