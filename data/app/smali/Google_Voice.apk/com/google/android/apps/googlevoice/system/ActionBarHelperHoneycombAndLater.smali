.class public Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;
.super Ljava/lang/Object;
.source "ActionBarHelperHoneycombAndLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ActionBarHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayUnread(Landroid/app/Activity;I)V
    .registers 7
    .parameter "activity"
    .parameter "unread"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, view:Landroid/view/View;
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->unread_count:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, unreadView:Landroid/widget/TextView;
    if-lez p2, :cond_1e

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1d
    return-void

    .line 83
    :cond_1e
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d
.end method

.method public enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V
    .registers 9
    .parameter "activity"
    .parameter "adapter"
    .parameter "onNavigationListener"

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 49
    new-instance v3, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;

    invoke-direct {v3, p0, p3}, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;-><init>(Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V

    invoke-virtual {v0, p2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 58
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/google/android/apps/googlevoice/R$layout;->unread_display:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, view:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public enableProgressBarIndeterminate(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 90
    return-void
.end method

.method public isListNavigationMode(Landroid/app/Activity;)Z
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v2

    if-ne v2, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public requestLeftIcon(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 36
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V
    .registers 4
    .parameter "activity"
    .parameter "showHome"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 28
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    :cond_9
    return-void
.end method

.method public setLeftIconDrawableResource(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 41
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V
    .registers 5
    .parameter "activity"
    .parameter "menuItem"
    .parameter "visible"

    .prologue
    .line 95
    if-eqz p2, :cond_c

    .line 96
    if-eqz p3, :cond_d

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    :goto_9
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 98
    :cond_c
    return-void

    .line 96
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setSelectedNavigationItem(Landroid/app/Activity;I)V
    .registers 4
    .parameter "activity"
    .parameter "position"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 72
    return-void
.end method
