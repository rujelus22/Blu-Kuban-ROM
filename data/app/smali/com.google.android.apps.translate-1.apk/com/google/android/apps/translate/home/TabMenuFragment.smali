.class public Lcom/google/android/apps/translate/home/TabMenuFragment;
.super Landroid/app/ListFragment;
.source "TabMenuFragment.java"


# static fields
.field public static final TAB_MENU_FRAGMENT_TAG:Ljava/lang/String; = "tagmenu"

.field private static final TAG:Ljava/lang/String; = "TabMenuFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

.field private mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static declared-synchronized setTabMenuFragment(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V
    .registers 9
    .parameter "activity"
    .parameter "adapter"

    .prologue
    .line 102
    const-class v5, Lcom/google/android/apps/translate/home/TabMenuFragment;

    monitor-enter v5

    :try_start_3
    const-string v4, "TabMenuFragment"

    const-string v6, "setTabMenuFragment"

    invoke-static {v4, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v6, Lcom/google/android/apps/translate/R$id;->tab_menu_fragment_container:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .local v0, containerView:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    new-instance v1, Lcom/google/android/apps/translate/home/TabMenuFragment;

    invoke-direct {v1}, Lcom/google/android/apps/translate/home/TabMenuFragment;-><init>()V

    .line 108
    .local v1, frag:Lcom/google/android/apps/translate/home/TabMenuFragment;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/home/TabMenuFragment;->setAdapter(Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 111
    .local v2, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 112
    .local v3, transaction:Landroid/app/FragmentTransaction;
    sget v4, Lcom/google/android/apps/translate/R$id;->tab_menu_fragment_container:I

    const-string v6, "tagmenu"

    invoke-virtual {v3, v4, v1, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 113
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    .line 114
    monitor-exit v5

    return-void

    .line 102
    .end local v0           #containerView:Landroid/widget/LinearLayout;
    .end local v1           #frag:Lcom/google/android/apps/translate/home/TabMenuFragment;
    .end local v2           #fragmentManager:Landroid/app/FragmentManager;
    .end local v3           #transaction:Landroid/app/FragmentTransaction;
    :catchall_3a
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized setTabMenuFragmentVisibility(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "visible"

    .prologue
    .line 121
    const-class v2, Lcom/google/android/apps/translate/home/TabMenuFragment;

    monitor-enter v2

    :try_start_3
    const-string v1, "TabMenuFragment"

    const-string v3, "setTabMenuFragmentVisibility"

    invoke-static {v1, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/google/android/apps/translate/R$id;->tab_menu_fragment_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    .local v0, containerView:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_22

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    .line 125
    monitor-exit v2

    return-void

    .line 124
    :cond_22
    const/16 v1, 0x8

    goto :goto_1d

    .line 121
    .end local v0           #containerView:Landroid/widget/LinearLayout;
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const-string v0, "TabMenuFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/translate/home/TabMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mActivity:Landroid/app/Activity;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const-string v0, "TabMenuFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 37
    const-string v0, "TabMenuFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 39
    sget v0, Lcom/google/android/apps/translate/R$layout;->tab_menu_panel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "TabMenuFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 70
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    const-string v0, "TabMenuFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v0, :cond_2c

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, p3, p4, p5}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onNavigationItemSelected(IJ)Z

    .line 84
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 86
    :cond_2c
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 87
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 62
    const-string v0, "TabMenuFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 56
    const-string v0, "TabMenuFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 58
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "TabMenuFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 52
    return-void
.end method

.method public setAdapter(Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TabMenuFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/home/TabMenuFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method
