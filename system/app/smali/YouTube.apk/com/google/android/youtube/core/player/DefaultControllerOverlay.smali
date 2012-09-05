.class public final Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay;
.implements Lcom/google/android/youtube/core/player/ak;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field protected final a:Landroid/view/animation/Animation;

.field private b:Lcom/google/android/youtube/core/player/m;

.field private final c:Lcom/google/android/youtube/core/Analytics;

.field private final d:Landroid/view/View;

.field private final e:Lcom/google/android/youtube/core/player/aj;

.field private final f:Landroid/widget/ImageButton;

.field private final g:Landroid/widget/ImageButton;

.field private final h:Landroid/widget/ImageButton;

.field private final i:Landroid/widget/ImageButton;

.field private final j:Landroid/widget/ImageButton;

.field private k:Landroid/view/View;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/ImageView;

.field private final o:Landroid/os/Handler;

.field private final p:Ljava/lang/Runnable;

.field private q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field private r:J

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    const v9, 0x7f040035

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v0, "analytics cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/Analytics;

    .line 104
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 106
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 113
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Lcom/google/android/youtube/core/player/aj;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/player/aj;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/ak;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 125
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v3, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    const v4, 0x7f0200d9

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v3, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    const v4, 0x7f0200d4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v3, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    const v4, 0x7f0200d7

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    const v4, 0x7f0200c1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    const v4, 0x7f020015

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    const/high16 v4, -0x3400

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v3, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v3, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    const v2, 0x7f0200c3

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/google/android/youtube/core/player/o;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/o;-><init>(Lcom/google/android/youtube/core/player/DefaultControllerOverlay;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Ljava/lang/Runnable;

    .line 178
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 181
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 183
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()V

    .line 187
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 320
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    .line 321
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    if-ne v0, v4, :cond_2b

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_2d

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2f

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 326
    return-void

    :cond_2b
    move v0, v2

    .line 321
    goto :goto_d

    :cond_2d
    move v0, v2

    .line 322
    goto :goto_19

    :cond_2f
    move v1, v2

    .line 323
    goto :goto_24
.end method

.method private b(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_b
    return-void
.end method

.method private o()V
    .registers 5

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p()V

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_12

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :cond_12
    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/aj;->setAnimation(Landroid/view/animation/Animation;)V

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 374
    return-void
.end method

.method private q()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 390
    :goto_9
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 391
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/m;->a(Z)V

    .line 392
    return-void

    .line 389
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private r()V
    .registers 2

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->z:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 481
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()V

    .line 482
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->g()V

    .line 484
    :cond_12
    return-void
.end method

.method private s()V
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->A:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 488
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()V

    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->h()V

    .line 491
    :cond_12
    return-void
.end method

.method private t()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 579
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:Z

    if-eqz v0, :cond_8

    .line 601
    :goto_7
    return-void

    .line 582
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_16
    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/player/aj;->setVisibility(I)V

    .line 584
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->B:Z

    if-eqz v0, :cond_a0

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 586
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_a2

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-eqz v0, :cond_a2

    move v0, v1

    :goto_3e
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 588
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_48
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 589
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v4, :cond_a6

    const v0, 0x7f0200c1

    :goto_56
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v4, :cond_b4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v4, :cond_b4

    move v0, v1

    :goto_6e
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->z:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_b6

    move v0, v1

    :goto_82
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v3, :cond_b8

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->A:Z

    if-eqz v3, :cond_b8

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v3, :cond_b8

    :goto_95
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestLayout()V

    goto/16 :goto_7

    :cond_9d
    move v0, v2

    .line 583
    goto/16 :goto_16

    :cond_a0
    move v0, v2

    .line 584
    goto :goto_2a

    :cond_a2
    move v0, v2

    .line 586
    goto :goto_3e

    :cond_a4
    move v0, v2

    .line 588
    goto :goto_48

    .line 589
    :cond_a6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v4, :cond_b0

    const v0, 0x7f0200c0

    goto :goto_56

    :cond_b0
    const v0, 0x7f0200c5

    goto :goto_56

    :cond_b4
    move v0, v2

    .line 593
    goto :goto_6e

    :cond_b6
    move v0, v2

    .line 596
    goto :goto_82

    :cond_b8
    move v1, v2

    .line 598
    goto :goto_95
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 194
    return-object p0
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IZ)V

    .line 234
    return-void
.end method

.method public final a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/aj;->a(III)V

    .line 274
    return-void
.end method

.method public final a(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .registers 4
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    iget v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->a(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsBuffered:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->c(Z)V

    .line 280
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_1b

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->b(Z)V

    .line 283
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 284
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/m;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    .line 191
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 219
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 220
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 226
    return-void

    .line 222
    :cond_53
    const-string v0, ""

    goto :goto_40
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->B:Z

    .line 238
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 239
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:Z

    .line 330
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 331
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setVisibility(I)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    if-eqz v0, :cond_15

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->k()V

    .line 336
    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o()V

    .line 337
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/m;->a(I)V

    .line 612
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 243
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 198
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method public final c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 246
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_b

    const v0, 0x7f0200d8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 247
    return-void

    .line 246
    :cond_b
    const v0, 0x7f0200d9

    goto :goto_7
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 203
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public final d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 261
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->b(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public final e(Z)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    .line 265
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 266
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 214
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public final f(Z)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->z:Z

    .line 251
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 252
    return-void
.end method

.method public final g()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 299
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:Z

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_38

    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->setVisibility(I)V

    .line 310
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setVisibility(I)V

    .line 312
    :cond_38
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestFocus()Z

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    if-eqz v0, :cond_47

    .line 315
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->l()V

    .line 317
    :cond_47
    return-void
.end method

.method public final g(Z)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->A:Z

    .line 256
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 257
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/youtube/core/player/aj;->a(III)V

    .line 270
    return-void
.end method

.method public final h(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    .line 288
    if-eqz p1, :cond_13

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->a(Z)V

    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->b(Z)V

    .line 295
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 296
    return-void

    .line 292
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->a(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aj;->b(Z)V

    goto :goto_f
.end method

.method protected final i()V
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-nez v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p()V

    .line 607
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->f()V

    .line 608
    return-void
.end method

.method public final k()V
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    .line 618
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 619
    return-void
.end method

.method public final l()V
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    .line 623
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t()V

    .line 624
    return-void
.end method

.method public final m()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 628
    return-void
.end method

.method public final n()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 632
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()V

    .line 386
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    if-eqz v0, :cond_d

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_e

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->i()V

    .line 417
    :cond_d
    :goto_d
    return-void

    .line 398
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_18

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->j()V

    goto :goto_d

    .line 400
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_47

    .line 401
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Fullscreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "On"

    :goto_35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q()V

    goto :goto_d

    .line 401
    :cond_44
    const-string v0, "Off"

    goto :goto_35

    .line 404
    :cond_47
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4f

    .line 405
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r()V

    goto :goto_d

    .line 406
    :cond_4f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_57

    .line 407
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s()V

    goto :goto_d

    .line 408
    :cond_57
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_6e

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Replay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->n()V

    goto :goto_d

    .line 412
    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_7a

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_d

    .line 413
    :cond_7a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->e()V

    goto :goto_d
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:Z

    if-eqz v0, :cond_7

    .line 422
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 424
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 495
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 499
    sub-int v3, p5, p3

    .line 500
    sub-int v4, p4, p2

    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b9

    const/4 v0, 0x1

    .line 503
    :goto_13
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:Z

    if-eqz v2, :cond_bc

    .line 504
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    div-int/lit8 v5, v3, 0x30

    sub-int v5, v3, v5

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 505
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/google/android/youtube/core/player/aj;->setPadding(IIII)V

    .line 506
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    div-int/lit8 v5, v3, 0x30

    sub-int v5, v3, v5

    invoke-virtual {v2, v1, v5, v4, v3}, Lcom/google/android/youtube/core/player/aj;->layout(IIII)V

    .line 537
    :goto_2e
    div-int/lit8 v1, v4, 0x2

    add-int v2, p2, v1

    .line 538
    div-int/lit8 v1, v3, 0x2

    add-int v3, p3, v1

    .line 539
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 540
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 541
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    div-int/lit8 v7, v1, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v5, 0x2

    sub-int v8, v3, v8

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-virtual {v6, v7, v8, v1, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 546
    int-to-float v1, v4

    const v4, 0x3e2aaaab

    mul-float/2addr v1, v4

    float-to-int v4, v1

    .line 547
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 548
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v6

    .line 549
    if-eqz v0, :cond_111

    div-int/lit8 v1, v4, 0x2

    add-int/2addr v1, p2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v1, v7

    .line 550
    :goto_6f
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    .line 551
    iget-object v8, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    add-int/2addr v5, v1

    add-int/2addr v6, v7

    invoke-virtual {v8, v1, v7, v5, v6}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 553
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    .line 554
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v5

    .line 555
    if-eqz v0, :cond_116

    div-int/lit8 v0, v4, 0x2

    sub-int v0, p4, v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    .line 556
    :goto_8f
    div-int/lit8 v2, v5, 0x2

    sub-int v2, v3, v2

    .line 557
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    add-int/2addr v1, v0

    add-int v4, v2, v5

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 559
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    if-eqz v0, :cond_b8

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 562
    :cond_b8
    return-void

    :cond_b9
    move v0, v1

    .line 501
    goto/16 :goto_13

    .line 508
    :cond_bc
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/aj;->b()I

    move-result v5

    .line 510
    sub-int v6, p5, v5

    .line 512
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {v2, p2, v6, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 515
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_11a

    .line 516
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    add-int v7, p2, v5

    invoke-virtual {v2, p2, v6, v7, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 517
    add-int/lit8 v2, v5, 0x0

    .line 519
    :goto_da
    iget-object v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_ed

    .line 520
    iget-object v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    add-int v8, p2, v2

    add-int v9, p2, v2

    add-int/2addr v9, v5

    invoke-virtual {v7, v8, v6, v9, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 521
    add-int/2addr v2, v5

    .line 525
    :cond_ed
    iget-boolean v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v7, :cond_fa

    .line 526
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    sub-int v7, v4, v5

    invoke-virtual {v1, v7, v6, v4, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 527
    add-int/lit8 v1, v5, 0x0

    .line 530
    :cond_fa
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    add-int/2addr v2, p2

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/aj;->a()I

    move-result v6

    sub-int v6, p5, v6

    sub-int v1, p4, v1

    invoke-virtual {v5, v2, v6, v1, p5}, Lcom/google/android/youtube/core/player/aj;->layout(IIII)V

    .line 533
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/aj;->requestLayout()V

    goto/16 :goto_2e

    .line 549
    :cond_111
    add-int/lit8 v1, v2, -0x40

    sub-int/2addr v1, v5

    goto/16 :goto_6f

    .line 555
    :cond_116
    add-int/lit8 v0, v2, 0x40

    goto/16 :goto_8f

    :cond_11a
    move v2, v1

    goto :goto_da
.end method

.method protected final onMeasure(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChildren(II)V

    .line 576
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    :cond_7
    :goto_7
    return v6

    .line 432
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_19
    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s:I

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2f

    move v0, v2

    :goto_22
    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:I

    .line 437
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:Z

    if-eqz v0, :cond_32

    .line 438
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    goto :goto_7

    .line 434
    :cond_2c
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s:I

    goto :goto_19

    .line 435
    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:I

    goto :goto_22

    .line 441
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_ce

    goto :goto_7

    .line 443
    :pswitch_3a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p()V

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 445
    iget-wide v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_94

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    if-eqz v2, :cond_94

    .line 446
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r:J

    .line 447
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v0, :cond_7e

    .line 448
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Fullscreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoubleTap"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "On"

    :goto_70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q()V

    .line 455
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_8a

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 456
    :cond_8a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->e()V

    goto/16 :goto_7

    .line 448
    :cond_91
    const-string v0, "Off"

    goto :goto_70

    .line 453
    :cond_94
    iput-wide v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r:J

    goto :goto_7e

    .line 460
    :pswitch_97
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s:I

    sub-int/2addr v0, v1

    .line 461
    iget v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:I

    sub-int/2addr v1, v2

    .line 462
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    if-eqz v2, :cond_b2

    .line 463
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4b

    if-le v2, v1, :cond_bb

    .line 464
    if-lez v0, :cond_b7

    .line 465
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r()V

    .line 473
    :cond_b2
    :goto_b2
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o()V

    goto/16 :goto_7

    .line 467
    :cond_b7
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s()V

    goto :goto_b2

    .line 469
    :cond_bb
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-eqz v0, :cond_b2

    .line 470
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/m;->m()V

    goto :goto_b2

    .line 441
    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_97
    .end packed-switch
.end method
