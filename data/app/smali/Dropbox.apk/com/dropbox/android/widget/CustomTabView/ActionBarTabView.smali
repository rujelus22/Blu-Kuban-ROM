.class public Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;
.super Landroid/widget/LinearLayout;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/CustomTabView/e;


# instance fields
.field protected a:Lcom/dropbox/android/widget/CustomTabView/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 5
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 50
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    instance-of v2, v0, Lcom/dropbox/android/widget/CustomTabView/c;

    if-eqz v2, :cond_23

    .line 52
    check-cast v0, Lcom/dropbox/android/widget/CustomTabView/c;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/c;->a()Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_23

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 55
    return-object v0

    .line 49
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 59
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab of given tabTag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_44

    const-string v0, "null"

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method public final a(Lcom/dropbox/android/widget/CustomTabView/a;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 24
    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 26
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    const/high16 v1, 0x4140

    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 29
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 31
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 32
    const/16 v1, 0x10

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->addView(Landroid/view/View;)V

    .line 38
    :cond_3d
    new-instance v0, Lcom/dropbox/android/widget/CustomTabView/c;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/dropbox/android/widget/CustomTabView/c;-><init>(Landroid/content/Context;Lcom/dropbox/android/widget/CustomTabView/e;Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 39
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/CustomTabView/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->addView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public final b(Lcom/dropbox/android/widget/CustomTabView/a;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->setSelected(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 46
    return-void
.end method

.method final c(Lcom/dropbox/android/widget/CustomTabView/a;)Lcom/dropbox/android/widget/CustomTabView/c;
    .registers 5
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 89
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 90
    instance-of v2, v0, Lcom/dropbox/android/widget/CustomTabView/c;

    if-eqz v2, :cond_1d

    .line 91
    check-cast v0, Lcom/dropbox/android/widget/CustomTabView/c;

    .line 92
    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/c;->a()Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 93
    return-object v0

    .line 88
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 97
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab of the passed in type not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3e

    const-string v0, "null"

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method public setSelected(Lcom/dropbox/android/widget/CustomTabView/a;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->c(Lcom/dropbox/android/widget/CustomTabView/a;)Lcom/dropbox/android/widget/CustomTabView/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/CustomTabView/c;->setSelected(Z)V

    .line 66
    :cond_f
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 67
    :cond_1b
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 68
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/widget/CustomTabView/b;->c(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V

    .line 70
    :cond_32
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    .line 71
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 72
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/dropbox/android/widget/CustomTabView/b;->a(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V

    .line 79
    :cond_41
    :goto_41
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a:Lcom/dropbox/android/widget/CustomTabView/a;

    .line 80
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->c(Lcom/dropbox/android/widget/CustomTabView/a;)Lcom/dropbox/android/widget/CustomTabView/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/CustomTabView/c;->setSelected(Z)V

    .line 81
    return-void

    .line 75
    :cond_4c
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 76
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->c()Lcom/dropbox/android/widget/CustomTabView/b;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/dropbox/android/widget/CustomTabView/b;->b(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V

    goto :goto_41
.end method
