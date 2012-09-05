.class public Lcom/google/android/gm/FragmentView;
.super Landroid/widget/FrameLayout;
.source "FragmentView.java"


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/FragmentView;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gm/FragmentView;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gm/FragmentView;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 103
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2
    .parameter "arguments"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gm/FragmentView;->mArguments:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gm/FragmentView;->mFragment:Landroid/app/Fragment;

    .line 45
    return-void
.end method
