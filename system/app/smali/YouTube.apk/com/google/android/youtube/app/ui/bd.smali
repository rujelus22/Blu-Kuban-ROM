.class public final Lcom/google/android/youtube/app/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/aj;
.implements Lcom/google/android/youtube/core/player/o;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/widget/ImageButton;

.field private G:I

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/b/ag;

.field private final d:Lcom/google/android/youtube/core/b/al;

.field private final e:Lcom/google/android/youtube/core/Analytics;

.field private final f:Lcom/google/android/youtube/core/async/l;

.field private g:Lcom/google/android/youtube/app/remote/RemoteControl;

.field private final h:Lcom/google/android/youtube/core/player/bi;

.field private final i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Lcom/google/android/youtube/core/ui/l;

.field private q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

.field private final r:Landroid/os/Handler;

.field private final s:Lcom/google/android/youtube/app/ui/bo;

.field private t:Z

.field private u:Lcom/google/android/youtube/core/model/Video;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/ytremote/a/a/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/ui/bd;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/Analytics;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    sget-object v6, Lcom/google/android/youtube/app/ui/bo;->a:Lcom/google/android/youtube/app/ui/bo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/bd;-><init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bo;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bo;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->z:Z

    .line 140
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    .line 141
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->C:Z

    .line 142
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    .line 160
    const-string v0, "player can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/bi;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->h:Lcom/google/android/youtube/core/player/bi;

    .line 161
    const-string v0, "activity can not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    .line 162
    const-string v0, "imageClient can not be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->c:Lcom/google/android/youtube/core/b/ag;

    .line 163
    const-string v0, "subtitlesClient cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/al;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->d:Lcom/google/android/youtube/core/b/al;

    .line 165
    const-string v0, "analytics can not be null"

    invoke-static {p5, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    .line 166
    const-string v0, "listener can not be null"

    invoke-static {p6, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/bo;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v0, 0x7f040068

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->h:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/bi;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->l:Landroid/widget/ImageView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->k:Landroid/widget/TextView;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->c:Lcom/google/android/youtube/core/b/ag;

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/youtube/app/ui/bd;->f:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v1, v6, v7}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_94
    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const v6, 0x7f0800bb

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const v6, 0x7f0800bc

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->o:Landroid/view/View;

    new-instance v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v1, v6, v7}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v1, p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/o;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v1, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setShowFullscreen(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    sget-object v6, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v1, v6}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setAutoHide(Z)V

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    if-eqz v1, :cond_e5

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->C:Z

    if-eqz v1, :cond_16a

    :cond_e5
    move v1, v3

    :goto_e6
    invoke-virtual {v6, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFullscreen(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-boolean v6, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    if-eqz v6, :cond_16d

    iget-boolean v6, p0, Lcom/google/android/youtube/app/ui/bd;->C:Z

    if-nez v6, :cond_16d

    :goto_f3
    invoke-virtual {v1, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPortrait(Z)V

    new-instance v1, Lcom/google/android/youtube/app/ui/bk;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bk;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f040067

    invoke-virtual {v5, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    new-instance v5, Lcom/google/android/youtube/app/ui/bi;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/app/ui/bi;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-static {v1, v3, v5}, Lcom/google/android/youtube/core/ui/l;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/l;->a()V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    const v3, 0x7f0800c1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->F:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->F:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/youtube/app/ui/bl;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/ui/bl;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->F:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    if-eqz v1, :cond_13c

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->E:Z

    if-eqz v1, :cond_16f

    :cond_13c
    move v1, v2

    :goto_13d
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    new-instance v3, Lcom/google/android/youtube/app/ui/bm;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/ui/bm;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->i:Landroid/view/View;

    .line 170
    new-instance v0, Lcom/google/android/youtube/app/ui/be;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/be;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->f:Lcom/google/android/youtube/core/async/l;

    .line 183
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    .line 185
    new-instance v0, Lcom/google/android/youtube/app/ui/bg;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/bg;-><init>(Lcom/google/android/youtube/app/ui/bd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    .line 216
    return-void

    :cond_16a
    move v1, v2

    .line 168
    goto/16 :goto_e6

    :cond_16d
    move v3, v2

    goto :goto_f3

    :cond_16f
    move v1, v4

    goto :goto_13d
.end method

.method private A()V
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 874
    return-void
.end method

.method private B()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 877
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_b

    .line 878
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setTimes(III)V

    .line 892
    :goto_a
    return-void

    .line 881
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 882
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 883
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v1, v2, :cond_42

    .line 884
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->j()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    .line 891
    :goto_38
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget v2, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setTimes(III)V

    goto :goto_a

    .line 886
    :cond_42
    iput v0, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    goto :goto_38

    .line 889
    :cond_45
    iput v3, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    goto :goto_38
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bd;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    .line 794
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->o()V

    .line 796
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    .line 797
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 798
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bd;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->y:Z

    return v0
.end method

.method private b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 5
    .parameter

    .prologue
    .line 856
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq p1, v0, :cond_10

    .line 857
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteStateChange"

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_f
    return-void

    .line 859
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteError"

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->t()Lcom/google/android/youtube/app/remote/al;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/app/remote/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/bd;)Z
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/google/android/youtube/app/ui/bd;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->B()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    .line 835
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->o()V

    .line 837
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    .line 838
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/bd;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/bd;)Z
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    const v1, 0x7f0b0227

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->o()V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/bd;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/ui/bd;)Z
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/ui/bd;)Z
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic n(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/player/bi;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->h:Lcom/google/android/youtube/core/player/bi;

    return-object v0
.end method

.method private t()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 614
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    if-nez v0, :cond_21

    .line 615
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->h:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    .line 616
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->h:Lcom/google/android/youtube/core/player/bi;

    new-instance v1, Lcom/google/android/youtube/app/ui/bj;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/bj;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Landroid/os/Handler;)V

    .line 629
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/ui/bo;->c(Z)V

    .line 631
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    .line 634
    :cond_21
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-void

    .line 634
    :cond_39
    const-string v0, ""

    goto :goto_35
.end method

.method private u()Ljava/lang/String;
    .registers 6

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->getStringId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v4}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 647
    :goto_34
    return-object v0

    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private v()V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    return-void
.end method

.method private w()Z
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private x()V
    .registers 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 783
    return-void
.end method

.method private y()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 808
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->x()V

    .line 809
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    .line 812
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->B()V

    .line 813
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 814
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 815
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 821
    :cond_38
    :goto_38
    return-void

    .line 819
    :cond_39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_38
.end method

.method private z()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 842
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_34

    .line 843
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 844
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;Z)V

    .line 845
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    :goto_1c
    return-void

    .line 848
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlayVideo"

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->y:Z

    .line 850
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Ljava/lang/String;)V

    .line 852
    :cond_34
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    goto :goto_1c
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_16

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c()V

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/app/remote/aj;)V

    .line 248
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 251
    :cond_16
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(I)V

    .line 549
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->d()V

    .line 550
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->C:Z

    if-eqz v0, :cond_7

    .line 287
    :cond_6
    :goto_6
    return-void

    .line 278
    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    if-eqz v0, :cond_22

    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    if-nez v3, :cond_36

    :goto_18
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFullscreen(Z)V

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPortrait(Z)V

    .line 283
    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->F:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->F:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->D:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->E:Z

    if-eqz v1, :cond_38

    :cond_30
    :goto_30
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    :cond_34
    move v0, v2

    .line 278
    goto :goto_c

    :cond_36
    move v1, v2

    .line 280
    goto :goto_18

    .line 284
    :cond_38
    const/16 v2, 0x8

    goto :goto_30
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f0b022c

    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 358
    :cond_20
    :goto_20
    return-void

    .line 308
    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 309
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;Z)V

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 314
    :cond_38
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "RemotePlayerStateChange"

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v2, Lcom/google/android/youtube/app/ui/bf;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_130

    goto :goto_20

    .line 318
    :pswitch_4f
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    .line 319
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->y()V

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPlaying()V

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 324
    :pswitch_5f
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    .line 325
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->y()V

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d()V

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 330
    :pswitch_6f
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->y()V

    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e()V

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 336
    :pswitch_7f
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    .line 337
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->m()Lcom/google/android/youtube/app/remote/ak;

    move-result-object v2

    if-nez v2, :cond_9c

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->o()V

    :goto_93
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 337
    :cond_9c
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/ui/l;->b()V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPlaying()V

    iget-object v3, v2, Lcom/google/android/youtube/app/remote/ak;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_da

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->n:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/google/android/youtube/app/remote/ak;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b5
    iget-object v3, v2, Lcom/google/android/youtube/app/remote/ak;->b:Landroid/net/Uri;

    if-eqz v3, :cond_e0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, v2, Lcom/google/android/youtube/app/remote/ak;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    :goto_c3
    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->o:Landroid/view/View;

    new-instance v3, Lcom/google/android/youtube/app/ui/bn;

    invoke-direct {v3, p0, v2}, Lcom/google/android/youtube/app/ui/bn;-><init>(Lcom/google/android/youtube/app/ui/bd;Lcom/google/android/youtube/app/remote/ak;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d4
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_93

    :cond_da
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b5

    :cond_e0
    move v0, v1

    goto :goto_c3

    :cond_e2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d4

    .line 341
    :pswitch_e8
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e()V

    .line 342
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    .line 343
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;Z)V

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_20

    .line 349
    :pswitch_106
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setLoading()V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->x()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-static {v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_20

    .line 316
    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_5f
        :pswitch_6f
        :pswitch_7f
        :pswitch_e8
        :pswitch_106
        :pswitch_106
        :pswitch_106
    .end packed-switch
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 9
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 362
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-nez v2, :cond_e

    .line 363
    const-string v0, "RemoteControlHelper was not initialized with a video"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 400
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 367
    :cond_e
    sget-object v2, Lcom/google/android/youtube/app/ui/bf;->b:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c0

    .line 386
    :goto_19
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/bd;->b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 392
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v2, :cond_37

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->x:Z

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    if-eqz v2, :cond_37

    .line 393
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->x:Z

    .line 394
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->c:Lcom/google/android/youtube/core/b/ag;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/bd;->f:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 397
    :cond_37
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->p()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 398
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-eqz v3, :cond_bd

    :goto_4b
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setHasCc(Z)V

    goto :goto_d

    .line 371
    :pswitch_4f
    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    if-eqz v2, :cond_d

    .line 372
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/bd;->b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 373
    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/app/ui/bo;->c(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_d

    .line 377
    :pswitch_6c
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->t()V

    .line 378
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->p:Lcom/google/android/youtube/core/ui/l;

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3, v0}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v2}, Lcom/google/android/youtube/app/ui/bo;->o()V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->v()V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->m:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 381
    :pswitch_85
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;)V

    goto :goto_19

    .line 384
    :pswitch_8f
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->t()V

    .line 385
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->t()Lcom/google/android/youtube/app/remote/al;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    iget v5, v2, Lcom/google/android/youtube/app/remote/al;->b:I

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, v2, Lcom/google/android/youtube/app/remote/al;->c:Z

    invoke-direct {p0, v3, v2}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :cond_bd
    move v0, v1

    .line 398
    goto :goto_4b

    .line 367
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_4f
        :pswitch_6c
        :pswitch_85
        :pswitch_8f
    .end packed-switch
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 3
    .parameter

    .prologue
    .line 223
    const-string v0, "remoteControl cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_14

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-ne v0, p1, :cond_11

    .line 227
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 242
    :goto_10
    return-void

    .line 230
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    .line 234
    :cond_14
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 235
    invoke-interface {p1}, Lcom/google/android/youtube/app/remote/RemoteControl;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->z:Z

    .line 236
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->A:Z

    if-eqz v0, :cond_26

    .line 237
    invoke-interface {p1, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/aj;)V

    .line 238
    invoke-interface {p1, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    .line 241
    :cond_26
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->A()V

    goto :goto_10
.end method

.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .registers 3
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V

    .line 896
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 438
    const-string v0, "video can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->x:Z

    .line 443
    :cond_18
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    .line 445
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_21

    .line 446
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->A()V

    .line 448
    :cond_21
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_b

    .line 404
    const-string v0, "Video is null"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 424
    :goto_a
    return-void

    .line 407
    :cond_b
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-nez v0, :cond_17

    .line 408
    const-string v0, "Video changed recieved for a non connected remote. Will ignore"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 411
    :cond_17
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->t()V

    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    goto :goto_a

    .line 415
    :cond_35
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->v:Z

    if-eqz v0, :cond_41

    .line 416
    iput v1, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/bd;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 419
    :cond_41
    iput v1, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    .line 420
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->y()V

    .line 421
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->REMOTE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d()V

    goto :goto_a
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->z:Z

    if-nez v0, :cond_8

    .line 301
    :cond_8
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setCcEnabled(Z)V

    .line 900
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->A:Z

    if-nez v0, :cond_1f

    move v0, v1

    :goto_6
    const-string v2, "cannot call onResume() multiple times, need to call onPause() first"

    invoke-static {v0, v2}, Lcom/google/android/ytremote/util/b;->b(ZLjava/lang/Object;)V

    .line 256
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->A:Z

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_1e

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/aj;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    .line 260
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->A()V

    .line 262
    :cond_1e
    return-void

    .line 254
    :cond_1f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->v:Z

    .line 452
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bd;->w:Ljava/lang/String;

    .line 454
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-nez v0, :cond_c

    .line 459
    :goto_b
    return-void

    .line 458
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/bd;->c(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/youtube/app/ui/bd;->E:Z

    .line 220
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->A:Z

    const-string v1, "cannot call onPause() multiple times, need to call onResume() first"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->b(ZLjava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->A:Z

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_13

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/app/remote/aj;)V

    .line 271
    :cond_13
    return-void
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/ui/bo;->b(Z)V

    .line 562
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final d(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 565
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/bd;->C:Z

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    if-eqz v0, :cond_12

    .line 567
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFullscreen(Z)V

    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPortrait(Z)V

    .line 570
    :cond_12
    return-void
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->B:Z

    return v0
.end method

.method public final f()V
    .registers 5

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->d:Lcom/google/android/youtube/core/b/al;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bd;->b:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/bh;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/ui/bh;-><init>(Lcom/google/android/youtube/app/ui/bd;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/b/aa;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/b/aa;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/al;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 484
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->n()V

    .line 490
    :cond_d
    return-void
.end method

.method public final h()V
    .registers 1

    .prologue
    .line 493
    return-void
.end method

.method public final i()V
    .registers 1

    .prologue
    .line 496
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-nez v0, :cond_7

    .line 535
    :cond_6
    :goto_6
    return-void

    .line 526
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 527
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    if-eqz v0, :cond_36

    .line 528
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePause"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    goto :goto_6

    .line 530
    :cond_36
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->d()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setPlaying()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bd;->t:Z

    goto :goto_6

    :cond_61
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->z()V

    goto :goto_6

    .line 533
    :cond_65
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->z()V

    goto :goto_6
.end method

.method public final k()V
    .registers 1

    .prologue
    .line 538
    return-void
.end method

.method public final l()V
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_24

    .line 428
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 429
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/bd;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;Z)V

    .line 432
    :cond_24
    return-void
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->d()V

    .line 542
    return-void
.end method

.method public final n()V
    .registers 1

    .prologue
    .line 545
    return-void
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->e()V

    .line 554
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->s:Lcom/google/android/youtube/app/ui/bo;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bo;->o()V

    .line 558
    return-void
.end method

.method public final q()Landroid/view/View;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->i:Landroid/view/View;

    return-object v0
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Lcom/google/android/youtube/app/ui/bd;->G:I

    return v0
.end method
