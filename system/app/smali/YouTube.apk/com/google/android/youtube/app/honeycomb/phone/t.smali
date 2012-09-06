.class public final Lcom/google/android/youtube/app/honeycomb/phone/t;
.super Lcom/google/android/youtube/app/honeycomb/phone/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Lcom/google/android/youtube/app/ui/TutorialView;

.field private K:Z

.field private L:Z

.field private M:Landroid/view/View;

.field private N:Lcom/google/android/youtube/core/model/UserAuth;

.field private final b:Landroid/util/SparseArray;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/view/View;

.field private final e:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final f:Landroid/widget/ListView;

.field private final g:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final i:Lcom/google/android/youtube/core/b/ae;

.field private final j:Lcom/google/android/youtube/core/b/ag;

.field private final k:Lcom/google/android/youtube/core/d;

.field private final l:Lcom/google/android/youtube/core/j;

.field private final m:Lcom/google/android/youtube/core/Analytics;

.field private final n:Lcom/google/android/youtube/app/remote/RemoteControl;

.field private final o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

.field private final p:Z

.field private final q:Lcom/google/android/youtube/app/honeycomb/phone/ak;

.field private final r:Lcom/google/android/youtube/core/async/l;

.field private final s:Landroid/content/SharedPreferences;

.field private t:Ljava/util/Set;

.field private u:Lcom/google/android/youtube/app/adapter/ba;

.field private v:Lcom/google/android/youtube/core/ui/j;

.field private w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

.field private final x:Landroid/os/Handler;

.field private final y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/honeycomb/phone/ah;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/e;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 120
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->z:I

    .line 121
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->A:I

    .line 122
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->B:I

    .line 123
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->C:I

    .line 124
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->D:I

    .line 125
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->E:I

    .line 126
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->F:I

    .line 129
    iput-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->K:Z

    .line 133
    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->L:Z

    .line 140
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Landroid/view/LayoutInflater;

    .line 142
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/u;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/u;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->x:Landroid/os/Handler;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->i:Lcom/google/android/youtube/core/b/ae;

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->j:Lcom/google/android/youtube/core/b/ag;

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->k:Lcom/google/android/youtube/core/d;

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->l:Lcom/google/android/youtube/core/j;

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->m:Lcom/google/android/youtube/core/Analytics;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->p:Z

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->d:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->d:Landroid/view/View;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->f:Landroid/widget/ListView;

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->s:Landroid/content/SharedPreferences;

    .line 171
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ai;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    .line 173
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ak;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ak;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->q:Lcom/google/android/youtube/app/honeycomb/phone/ak;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->b:Landroid/util/SparseArray;

    .line 175
    invoke-static {p1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->r:Lcom/google/android/youtube/core/async/l;

    .line 176
    return-void
.end method

.method static synthetic A(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/j;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->l:Lcom/google/android/youtube/core/j;

    return-object v0
.end method

.method static synthetic B(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->M:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/honeycomb/phone/ah;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v0, 0x7f020011

    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v1, :cond_1a

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_16
    const v0, 0x7f020010

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->l:Lcom/google/android/youtube/core/j;

    invoke-interface {v0}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->L:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->q()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->r()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->m:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/YouTubeApplication;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->L:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->K:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->M:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    const v2, 0x7f0b01a1

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/YouTubeApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->M:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/TutorialView;->setTargetView(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/ui/TutorialView;->setVisibility(I)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    const v2, 0x7f0b01a0

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/YouTubeApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

    iget-object v2, v2, Lcom/google/android/youtube/app/honeycomb/phone/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/TutorialView;->setTargetView(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/ui/TutorialView;->setVisibility(I)V

    goto :goto_31
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/util/SparseArray;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->C:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->z:I

    return v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->A:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->B:I

    return v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->D:I

    return v0
.end method

.method static synthetic o(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->E:I

    return v0
.end method

.method static synthetic p(Lcom/google/android/youtube/app/honeycomb/phone/t;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->F:I

    return v0
.end method

.method static synthetic q(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private q()V
    .registers 6

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->G:Z

    if-eqz v0, :cond_5

    .line 417
    :goto_4
    return-void

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ag;

    const v2, 0x7f0b0161

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ag;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->N:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_6a

    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/z;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->N:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/z;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/content/Context;Lcom/google/android/youtube/core/model/UserAuth;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->z:I

    .line 406
    :goto_27
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v1, "CHANNEL_STORE"

    const v2, 0x7f0b015e

    const v3, 0x7f020077

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->w:Lcom/google/android/youtube/app/honeycomb/phone/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->B:I

    .line 411
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->N:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_66

    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ag;

    const v2, 0x7f0b0162

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ag;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v2, "THE_FEED"

    const v3, 0x7f0b015d

    const v4, 0x7f020078

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->A:I

    .line 416
    :cond_66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->G:Z

    goto :goto_4

    .line 402
    :cond_6a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v2, "ACCOUNT"

    const v3, 0x7f0b00d8

    const v4, 0x7f020079

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->z:I

    goto :goto_27
.end method

.method private r()V
    .registers 9

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->H:Z

    if-eqz v0, :cond_5

    .line 443
    :goto_4
    return-void

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ag;

    const v2, 0x7f0b0163

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ag;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->b(Lcom/google/android/youtube/app/adapter/bl;)I

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 425
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v2, "RECOMMENDED_GUIDE_ITEM"

    const v3, 0x7f0b015f

    const v4, 0x7f020088

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->b(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->D:I

    .line 430
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v2, "TRENDING_GUIDE_ITEM"

    const v3, 0x7f0b0160

    const v4, 0x7f02008d

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->b(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->E:I

    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    const-string v2, "LIVE_GUIDE_ITEM"

    const v3, 0x7f0b0019

    const v4, 0x7f020081

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->b(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->F:I

    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->r:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->t:Ljava/util/Set;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->t:Ljava/util/Set;

    move-object v3, v0

    .line 435
    :goto_75
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7f
    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 437
    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v6, Lcom/google/android/youtube/app/honeycomb/phone/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v6, p0, v1, v7, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ac;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/app/adapter/ba;->b(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v1

    .line 439
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->b:Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7f

    .line 434
    :cond_cc
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->s:Landroid/content/SharedPreferences;

    const-string v1, "youtube_categories"

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    goto :goto_75

    .line 442
    :cond_dc
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->H:Z

    goto/16 :goto_4
.end method

.method static synthetic r(Lcom/google/android/youtube/app/honeycomb/phone/t;)Z
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->K:Z

    return v0
.end method

.method static synthetic s(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method private s()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->H:Z

    .line 447
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->b()V

    .line 449
    return-void
.end method

.method private t()V
    .registers 2

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->H:Z

    if-eqz v0, :cond_a

    .line 487
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->s()V

    .line 488
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->r()V

    .line 490
    :cond_a
    return-void
.end method

.method static synthetic t(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->s()V

    return-void
.end method

.method static synthetic u(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->i:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/ui/j;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->v:Lcom/google/android/youtube/core/ui/j;

    return-object v0
.end method

.method static synthetic w(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->t()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->j:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic y(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->N:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Subscription;)V
    .registers 3
    .parameter

    .prologue
    .line 770
    if-eqz p1, :cond_f

    .line 771
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/ba;->d(Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 773
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->t()V

    .line 775
    :cond_f
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->N:Lcom/google/android/youtube/core/model/UserAuth;

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->v:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 266
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->e_()V

    .line 276
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 68
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/converter/http/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->t:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "youtube_categories"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->t:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/al;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/al;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/core/utils/o;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->t()V

    .line 780
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    if-eqz v0, :cond_15

    .line 280
    if-eqz p2, :cond_16

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/ah;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 282
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 290
    :cond_15
    :goto_15
    return-void

    .line 287
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public final b()V
    .registers 8

    .prologue
    .line 180
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b()V

    .line 182
    new-instance v0, Lcom/google/android/youtube/app/adapter/ba;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f040032

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/af;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/af;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->I:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/v;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->w()Lcom/google/android/youtube/core/async/ar;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->k:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/phone/v;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->v:Lcom/google/android/youtube/core/ui/j;

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->e:Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/w;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/w;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 260
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public final e_()V
    .registers 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->q()V

    .line 270
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->r()V

    .line 271
    const-string v0, "TRENDING_GUIDE_ITEM"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 362
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->g()V

    .line 363
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->p:Z

    if-eqz v0, :cond_18

    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/app/remote/aj;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->C:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(I)Lcom/google/android/youtube/app/adapter/bl;

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->C:I

    .line 368
    :cond_18
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 351
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->h()V

    .line 352
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->p:Z

    if-eqz v0, :cond_2a

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->u:Lcom/google/android/youtube/app/adapter/ba;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->a(Lcom/google/android/youtube/app/adapter/bl;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->C:I

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/aj;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->o:Lcom/google/android/youtube/app/honeycomb/phone/ai;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->n:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ai;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 358
    :cond_2a
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ah;->b()V

    .line 384
    :cond_9
    return-void
.end method

.method public final k()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    if-eqz v0, :cond_9

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->y:Lcom/google/android/youtube/app/honeycomb/phone/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ah;->b_()V

    .line 391
    :cond_9
    return-void
.end method

.method public final l()V
    .registers 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f04008f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/TutorialView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->h:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/x;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/x;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->setDismissListener(Lcom/google/android/youtube/app/ui/dg;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->L:Z

    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/y;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/y;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->L:Z

    return v0
.end method

.method public final n()Landroid/view/View;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->d:Landroid/view/View;

    return-object v0
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->J:Lcom/google/android/youtube/app/ui/TutorialView;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/TutorialView;->a()V

    .line 324
    return-void
.end method

.method public final p()V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->q:Lcom/google/android/youtube/app/honeycomb/phone/ak;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 510
    return-void
.end method
