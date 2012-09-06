.class public Lcom/google/android/apps/plus/fragments/EventUpdateDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EventUpdateDialog.java"


# instance fields
.field private mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/google/android/apps/plus/fragments/EventUpdateDialog;
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->setStyle(II)V

    .line 51
    if-eqz p1, :cond_1b

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/views/EventUpdate;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/EventUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    const-string v1, "eventupdate"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/plus/views/EventUpdate;->onCreate(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 55
    :cond_1b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 70
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_47

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 77
    .local v0, context:Landroid/content/Context;
    :goto_c
    new-instance v2, Lcom/google/android/apps/plus/views/FullSizeLinearLayout;

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/views/FullSizeLinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, layout:Lcom/google/android/apps/plus/views/FullSizeLinearLayout;
    new-instance v4, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;

    invoke-direct {v4, v0}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, updateView:Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v4, v8}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->toggleCardBorderStyle(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 87
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    check-cast v1, Lcom/google/android/apps/plus/views/EventActionListener;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v4, v5, v1, v8}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->bind(Lcom/google/android/apps/plus/views/EventUpdate;Lcom/google/android/apps/plus/views/EventActionListener;Z)V

    .line 89
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v3, scrollView:Landroid/widget/ScrollView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/FullSizeLinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const v5, 0x106000b

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/FullSizeLinearLayout;->setBackgroundResource(I)V

    .line 99
    return-object v2

    .line 73
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #layout:Lcom/google/android/apps/plus/views/FullSizeLinearLayout;
    .end local v3           #scrollView:Landroid/widget/ScrollView;
    .end local v4           #updateView:Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;
    :cond_47
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x103000b

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    const-string v1, "eventupdate"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/plus/views/EventUpdate;->onSave(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public setUpdate(Lcom/google/android/apps/plus/views/EventUpdate;)V
    .registers 2
    .parameter "update"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->mEventUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    .line 43
    return-void
.end method
