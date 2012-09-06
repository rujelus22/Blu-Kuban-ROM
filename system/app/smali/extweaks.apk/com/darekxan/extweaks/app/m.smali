.class public final Lcom/darekxan/extweaks/app/m;
.super Lcom/darekxan/extweaks/f;
.source "ExTweaksSettingsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field d:Lcom/actionbarsherlock/app/ActionBar;

.field e:Landroid/app/Activity;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Landroid/view/animation/Animation;

.field j:Landroid/view/animation/Animation;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/actionbarsherlock/app/ActionBar;Lcom/darekxan/extweaks/widgets/SettingsRoot;Lcom/darekxan/extweaks/i;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p3, p4}, Lcom/darekxan/extweaks/f;-><init>(Lcom/darekxan/extweaks/widgets/SettingsRoot;Lcom/darekxan/extweaks/i;)V

    .line 31
    iput-object p1, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/darekxan/extweaks/app/m;->d:Lcom/actionbarsherlock/app/ActionBar;

    .line 33
    const v0, 0x7f05003d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->g:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->h:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->i:Landroid/view/animation/Animation;

    .line 39
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->j:Landroid/view/animation/Animation;

    .line 40
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    .line 41
    return-void
.end method

.method private f()V
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 84
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/m;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    :cond_2d
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/darekxan/extweaks/f;->c()V

    .line 78
    invoke-direct {p0}, Lcom/darekxan/extweaks/app/m;->f()V

    .line 79
    return-void
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/darekxan/extweaks/f;->d()V

    .line 101
    invoke-direct {p0}, Lcom/darekxan/extweaks/app/m;->f()V

    .line 102
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 60
    const-string v0, ""

    .line 61
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_7b

    .line 65
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-object v1

    .line 61
    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darekxan/extweaks/model/a;

    invoke-interface {v1}, Lcom/darekxan/extweaks/model/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->a()Lcom/darekxan/extweaks/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/darekxan/extweaks/i;->a()Lcom/darekxan/extweaks/g;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_10

    .line 67
    :cond_7b
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    const-string v2, "Something went wrong..."

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_30
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05003e

    if-ne v0, v1, :cond_d

    .line 108
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->c()V

    .line 113
    :cond_c
    :goto_c
    return-void

    .line 109
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05003f

    if-ne v0, v1, :cond_c

    .line 110
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->d()V

    goto :goto_c
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/util/Observable;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 47
    check-cast p2, Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/darekxan/extweaks/widgets/EButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 49
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->e:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->a()Lcom/darekxan/extweaks/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/darekxan/extweaks/i;->a()Lcom/darekxan/extweaks/g;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_2a
    :goto_2a
    return-void

    .line 52
    :cond_2b
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/m;->b()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Lcom/darekxan/extweaks/model/a;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/m;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/darekxan/extweaks/app/m;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/darekxan/extweaks/app/m;->g:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2a
.end method
