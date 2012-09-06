.class public Lcom/google/android/youtube/core/player/TvControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/player/TvControlsView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/Button;

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private j:Lcom/google/android/youtube/core/player/o;

.field private k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private final p:Lcom/google/android/youtube/core/player/MediaActionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b:Landroid/app/Activity;

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    const v1, 0x7f040091

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->h:I

    .line 89
    new-instance v0, Lcom/google/android/youtube/core/player/aw;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/aw;-><init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->i:Landroid/os/Handler;

    .line 98
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/TvControlsView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    .line 99
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->d:Landroid/view/View;

    .line 100
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->e:Landroid/view/View;

    .line 101
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->f:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v1, Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/player/ax;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/youtube/core/player/ax;-><init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;B)V

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/aj;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->p:Lcom/google/android/youtube/core/player/MediaActionHelper;

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->p:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->setMediaActionHelper(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->a(I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c()V

    .line 112
    return-void
.end method

.method private a(I)Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
    .registers 4
    .parameter

    .prologue
    .line 260
    sget-object v0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 261
    sget-object v0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 266
    :goto_18
    return-object v0

    .line 263
    :cond_19
    const/16 v0, 0x55

    if-eq p1, v0, :cond_21

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_2b

    .line 264
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    goto :goto_18

    :cond_28
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    goto :goto_18

    .line 266
    :cond_2b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->l:Z

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->setVisibility(I)V

    .line 182
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->d:Landroid/view/View;

    if-ne v0, p1, :cond_26

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->e:Landroid/view/View;

    if-ne v0, p1, :cond_28

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    if-ne v3, p1, :cond_2a

    :goto_22
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->setVisibility(I)V

    .line 185
    return-void

    :cond_26
    move v0, v2

    .line 182
    goto :goto_f

    :cond_28
    move v0, v2

    .line 183
    goto :goto_19

    :cond_2a
    move v1, v2

    .line 184
    goto :goto_22
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Z
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->j:Lcom/google/android/youtube/core/player/o;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/TvControllerOverlay;)I
    .registers 2
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->o:I

    return v0
.end method

.method private g()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->i:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    if-eqz v0, :cond_12

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->i:Landroid/os/Handler;

    iget v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :cond_12
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 119
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 205
    if-eqz p2, :cond_15

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    .line 210
    :goto_12
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->m:Z

    .line 211
    return-void

    .line 208
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    goto :goto_12
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->j:Lcom/google/android/youtube/core/player/o;

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/z;->a(Landroid/app/Activity;Ljava/util/List;Lcom/google/android/youtube/core/player/o;)V

    .line 227
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PLAYING:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    :goto_8
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->setPlaybackState(Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g()V

    .line 146
    return-void

    .line 143
    :cond_14
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    goto :goto_8
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->l:Z

    .line 176
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    sget-object v1, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->setPlaybackState(Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g()V

    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .registers 1

    .prologue
    .line 393
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TvControlsView;->a()V

    .line 189
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->m:Z

    if-eqz v0, :cond_10

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->m:Z

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->j:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->n()V

    .line 251
    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b()V

    .line 232
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_18

    move v0, v1

    .line 272
    :goto_9
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(I)Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_22

    .line 274
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 304
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 271
    goto :goto_9

    .line 277
    :cond_1a
    if-nez v0, :cond_17

    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->p:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    goto :goto_17

    .line 283
    :cond_22
    sparse-switch p1, :sswitch_data_3e

    .line 304
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17

    .line 290
    :sswitch_2a
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->l:Z

    if-eqz v0, :cond_32

    .line 291
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b()V

    goto :goto_17

    :cond_32
    move v1, v2

    .line 294
    goto :goto_17

    .line 297
    :sswitch_34
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->l:Z

    if-nez v0, :cond_3c

    .line 298
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c()V

    goto :goto_17

    :cond_3c
    move v1, v2

    .line 301
    goto :goto_17

    .line 283
    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_34
        0x13 -> :sswitch_2a
        0x14 -> :sswitch_2a
        0x15 -> :sswitch_2a
        0x16 -> :sswitch_2a
        0x17 -> :sswitch_2a
        0x42 -> :sswitch_2a
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(I)Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_d

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->p:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 313
    const/4 v0, 0x1

    .line 316
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    :goto_7
    return v0

    .line 239
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->l:Z

    if-eqz v1, :cond_10

    .line 240
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b()V

    goto :goto_7

    .line 243
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setCcEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->a(Z)V

    .line 223
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 2
    .parameter

    .prologue
    .line 389
    return-void
.end method

.method public setHQ(Z)V
    .registers 2
    .parameter

    .prologue
    .line 397
    return-void
.end method

.method public setHQisHD(Z)V
    .registers 2
    .parameter

    .prologue
    .line 399
    return-void
.end method

.method public setHasCc(Z)V
    .registers 2
    .parameter

    .prologue
    .line 401
    return-void
.end method

.method public setHasNext(Z)V
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->setNextEnabled(Z)V

    .line 198
    return-void
.end method

.method public setHasPrevious(Z)V
    .registers 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->setPreviousEnabled(Z)V

    .line 202
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/o;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->j:Lcom/google/android/youtube/core/player/o;

    .line 116
    return-void
.end method

.method public setLoading()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public setPlaying()V
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->n:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    sget-object v1, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PLAYING:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->setPlaybackState(Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->g()V

    .line 153
    return-void
.end method

.method public setPortrait(Z)V
    .registers 2
    .parameter

    .prologue
    .line 391
    return-void
.end method

.method public setShowFullscreen(Z)V
    .registers 2
    .parameter

    .prologue
    .line 387
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 125
    return-void
.end method

.method public setSupportsQualityToggle(Z)V
    .registers 2
    .parameter

    .prologue
    .line 395
    return-void
.end method

.method public setTimes(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->o:I

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c:Lcom/google/android/youtube/core/player/TvControlsView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/TvControlsView;->a(III)V

    .line 194
    return-void
.end method
