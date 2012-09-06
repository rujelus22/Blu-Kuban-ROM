.class public final Lcom/darekxan/extweaks/app/i;
.super Lcom/darekxan/extweaks/e;
.source "ExTweaksSettingsAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field private b:Lcom/actionbarsherlock/app/ActionBar;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/darekxan/extweaks/app/ExTweaksActivity;


# direct methods
.method public constructor <init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/darekxan/extweaks/e;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 31
    iput-object p1, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    .line 32
    iput-object p3, p0, Lcom/darekxan/extweaks/app/i;->c:Landroid/support/v4/view/ViewPager;

    .line 33
    iput-object p2, p0, Lcom/darekxan/extweaks/app/i;->b:Lcom/actionbarsherlock/app/ActionBar;

    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->c:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/darekxan/extweaks/app/i;)Lcom/darekxan/extweaks/app/ExTweaksActivity;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    return-object v0
.end method


# virtual methods
.method public final a(ZZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_1b

    .line 40
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 42
    const-string v1, "Loading profile"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 46
    :cond_1b
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/darekxan/extweaks/app/j;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/darekxan/extweaks/app/j;-><init>(Lcom/darekxan/extweaks/app/i;ZZLandroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 85
    if-nez p2, :cond_2d

    .line 87
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 93
    :cond_2d
    :goto_2d
    return-void

    .line 88
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2d
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->removeAllTabs()V

    .line 97
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    .line 105
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/i;->notifyDataSetChanged()V

    .line 106
    return-void

    .line 97
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 98
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsTab;

    .line 99
    iget-object v3, p0, Lcom/darekxan/extweaks/app/i;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 101
    invoke-virtual {v3, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 102
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_25
.end method

.method public final onPageScrollStateChanged(I)V
    .registers 2
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    return-void
.end method

.method public final onPageSelected(I)V
    .registers 8
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 123
    :try_start_5
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/darekxan/extweaks/app/i;->d:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v1, v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTabScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 125
    :cond_3a
    :goto_3a
    return-void

    .line 123
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTabSpinner"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setSelection"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_7f} :catch_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_7f} :catch_85
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_7f} :catch_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_7f} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_7f} :catch_94

    goto :goto_3a

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3a

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3a

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3a
.end method

.method public final onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public final onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/darekxan/extweaks/app/i;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 136
    return-void
.end method

.method public final onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    return-void
.end method
