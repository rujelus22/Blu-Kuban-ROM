.class public final Lcom/darekxan/extweaks/app/a;
.super Landroid/os/AsyncTask;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/darekxan/extweaks/e;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/actionbarsherlock/app/ActionBar;

.field private d:Lcom/darekxan/extweaks/i;

.field private e:Lcom/darekxan/extweaks/app/ExTweaksActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    check-cast p1, Lcom/darekxan/extweaks/app/ExTweaksActivity;

    iput-object p1, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    .line 30
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 41
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    sget-object v1, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Lcom/darekxan/extweaks/h;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 42
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    sget-object v1, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Lcom/darekxan/extweaks/h;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 43
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    :goto_21
    return-object v0

    .line 47
    :cond_22
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/a;->d:Lcom/darekxan/extweaks/i;

    .line 48
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/a;->c:Lcom/actionbarsherlock/app/ActionBar;

    .line 49
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/darekxan/extweaks/app/a;->b:Landroid/support/v4/view/ViewPager;

    .line 51
    new-instance v0, Lcom/darekxan/extweaks/app/i;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    iget-object v2, p0, Lcom/darekxan/extweaks/app/a;->c:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v3, p0, Lcom/darekxan/extweaks/app/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, v2, v3}, Lcom/darekxan/extweaks/app/i;-><init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    .line 54
    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .line 56
    sget-object v1, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    .line 59
    :try_start_4f
    sget-object v2, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "uci.sh config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/darekxan/extweaks/app/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "settingsRoot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 61
    const-class v3, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    invoke-interface {v0, v3, v2}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    invoke-virtual {v1, v0}, Lcom/darekxan/extweaks/a;->b(Lcom/darekxan/extweaks/widgets/SettingsRoot;)V

    .line 62
    invoke-virtual {v1}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "uci.sh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->setScript(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/darekxan/extweaks/app/m;

    iget-object v2, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    iget-object v3, p0, Lcom/darekxan/extweaks/app/a;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v4

    iget-object v5, p0, Lcom/darekxan/extweaks/app/a;->d:Lcom/darekxan/extweaks/i;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/darekxan/extweaks/app/m;-><init>(Landroid/app/Activity;Lcom/actionbarsherlock/app/ActionBar;Lcom/darekxan/extweaks/widgets/SettingsRoot;Lcom/darekxan/extweaks/i;)V

    invoke-virtual {v1, v0}, Lcom/darekxan/extweaks/a;->b(Lcom/darekxan/extweaks/f;)V

    .line 64
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/e;->a(Lcom/darekxan/extweaks/widgets/SettingsRoot;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_b8} :catch_f6

    .line 75
    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    check-cast v0, Lcom/darekxan/extweaks/app/i;

    invoke-virtual {v0, v6, v6}, Lcom/darekxan/extweaks/app/i;->a(ZZ)V

    .line 76
    sget-object v0, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v0

    if-eqz v0, :cond_d5

    .line 77
    sget-object v0, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v0

    new-instance v1, Lcom/darekxan/extweaks/app/b;

    invoke-direct {v1}, Lcom/darekxan/extweaks/app/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->addFragment(Lcom/darekxan/extweaks/widgets/SettingsTab;)V

    .line 79
    :cond_d5
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_21

    :cond_f0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_21

    .line 67
    :catch_f6
    move-exception v0

    goto :goto_b8
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/darekxan/extweaks/app/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v2, 0x7f050035

    invoke-virtual {v1, v2}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    check-cast v0, Lcom/darekxan/extweaks/app/i;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/i;->b()V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/a;->a:Lcom/darekxan/extweaks/e;

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a(Lcom/darekxan/extweaks/e;)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    new-instance v1, Lcom/darekxan/extweaks/app/h;

    iget-object v2, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-direct {v1, v2}, Lcom/darekxan/extweaks/app/h;-><init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a(Lcom/darekxan/extweaks/app/h;)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->b()V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->invalidateOptionsMenu()V

    :goto_61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_65
    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kernel version:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v2}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v2

    const-string v3, "uname -r"

    invoke-interface {v2, v3}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61
.end method

.method protected final onPreExecute()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/app/a;->e:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    return-void
.end method
