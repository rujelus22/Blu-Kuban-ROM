.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/bt;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/android/youtube/app/prefetch/f;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:[Ljava/lang/String;

.field private e:Lcom/google/android/youtube/core/ui/PagedListView;

.field private f:Lcom/google/android/youtube/core/ui/PagedListView;

.field private g:Lcom/google/android/youtube/core/a/a;

.field private h:Lcom/google/android/youtube/core/a/a;

.field private i:Lcom/google/android/youtube/app/prefetch/d;

.field private j:Landroid/app/ActionBar;

.field private k:Landroid/widget/Spinner;

.field private l:Landroid/widget/ArrayAdapter;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->c:Landroid/view/LayoutInflater;

    .line 55
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->c:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_3b

    const v0, 0x7f040075

    move v1, v0

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->n()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->b:Landroid/view/View;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0b015b

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b015a

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->d:[Ljava/lang/String;

    .line 61
    return-void

    .line 55
    :cond_3b
    const v0, 0x7f04006d

    move v1, v0

    goto :goto_15
.end method

.method private a()V
    .registers 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->m:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->n:Z

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->j:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->j:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->k:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 119
    :goto_15
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->invalidateOptionsMenu()V

    .line 120
    return-void

    .line 117
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->j:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_15
.end method

.method private p()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->g:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->g:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 173
    :cond_19
    :goto_19
    return-void

    .line 168
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->h:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->h:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    goto :goto_19
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;
.end method

.method protected abstract b(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;
.end method

.method public b()V
    .registers 5

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->b()V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->j:Landroid/app/ActionBar;

    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f040004

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->d:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->l:Landroid/widget/ArrayAdapter;

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->k:Landroid/widget/Spinner;

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->k:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->l:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->k:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_5a

    const-string v1, "com.google.android.youtube.action.search"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onSearchRequested()Z

    .line 81
    :cond_5a
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->a(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->m:Z

    .line 87
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a()V

    .line 88
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->p()V

    .line 89
    return-void
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->b(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->m:Z

    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a()V

    .line 96
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->j()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->n:Z

    .line 102
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a()V

    .line 103
    return-void
.end method

.method public final k()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->k()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->n:Z

    .line 109
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a()V

    .line 110
    return-void
.end method

.method protected l()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    if-nez v0, :cond_19

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->b:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->g:Lcom/google/android/youtube/core/a/a;

    .line 142
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    if-eqz v0, :cond_2a

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 146
    :cond_2a
    return-void
.end method

.method protected m()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    if-nez v0, :cond_19

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->b:Landroid/view/View;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->b(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->h:Lcom/google/android/youtube/core/a/a;

    .line 153
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->f:Lcom/google/android/youtube/core/ui/PagedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    if-eqz v0, :cond_2a

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bt;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 157
    :cond_2a
    return-void
.end method

.method public final o()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->p()V

    .line 161
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    packed-switch p3, :pswitch_data_c

    .line 131
    :goto_3
    return-void

    .line 125
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->l()V

    goto :goto_3

    .line 128
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->m()V

    goto :goto_3

    .line 123
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    return-void
.end method
