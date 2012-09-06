.class public Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay;
.implements Lcom/google/android/youtube/core/player/at;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field private H:Z

.field private I:Z

.field private J:Z

.field protected final a:Landroid/view/animation/Animation;

.field private final b:Landroid/app/Activity;

.field private c:Lcom/google/android/youtube/core/player/o;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:F

.field private final f:Landroid/view/View;

.field private final g:Lcom/google/android/youtube/core/player/TimeBar;

.field private final h:Landroid/widget/ImageButton;

.field private final i:Landroid/widget/ImageButton;

.field private final j:Landroid/widget/ImageButton;

.field private final k:Landroid/widget/ImageButton;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/ImageView;

.field private final n:Landroid/widget/LinearLayout;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/ImageView;

.field private final q:Landroid/os/Handler;

.field private final r:I

.field private final s:I

.field private t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    const v8, 0x7f040059

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Landroid/app/Activity;

    .line 127
    const-string v0, "analytics cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Lcom/google/android/youtube/core/Analytics;

    .line 128
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    .line 133
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 137
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    const v4, 0x7f020041

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/player/TimeBar;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/at;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 149
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {v3, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    const v4, 0x7f020135

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    const v4, 0x7f0b0079

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v3, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    const v4, 0x7f020130

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    const v4, 0x7f0b0075

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_238

    .line 166
    invoke-virtual {v3, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    const v4, 0x7f020133

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    const v4, 0x7f0b0073

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->B:Z

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :goto_f8
    invoke-virtual {v3, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    const v3, 0x7f02010d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    const v3, 0x7f0b0076

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    const/high16 v3, -0x3400

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    const v2, 0x7f02001e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    const v2, 0x7f0b007b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IF)I

    move-result v2

    const/16 v3, 0xc

    iget v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IF)I

    move-result v3

    invoke-virtual {v0, v6, v2, v3, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    const v2, 0x7f02001c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    const v2, 0x7f0b007c

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IF)I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IF)I

    move-result v3

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Landroid/os/Handler;

    .line 226
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r:I

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s:I

    .line 231
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 232
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->H:Z

    .line 234
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->F:Z

    .line 236
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c()V

    .line 240
    return-void

    .line 174
    :cond_238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    goto/16 :goto_f8
.end method

.method private static a(IF)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 821
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/view/View;II)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p2, v1

    add-int v2, p1, v0

    invoke-virtual {p0, p1, v1, v2, p2}, Landroid/view/View;->layout(IIII)V

    .line 722
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 480
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    :cond_b
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 797
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 798
    return-void

    .line 797
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 388
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    .line 389
    if-eqz p1, :cond_1b

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/google/android/youtube/core/player/TimeBar;->setPadding(IIII)V

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/TimeBar;->setShowTimes(Z)V

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    .line 401
    :goto_14
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 402
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    .line 403
    return-void

    .line 396
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->c()I

    move-result v0

    const/16 v1, 0x18

    iget v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->e:F

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(IF)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 397
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v1, v0, v3, v0, v3}, Lcom/google/android/youtube/core/player/TimeBar;->setPadding(IIII)V

    .line 398
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowTimes(Z)V

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    goto :goto_14
.end method

.method private static b(Landroid/view/View;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 727
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 728
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    div-int/lit8 v3, v1, 0x2

    sub-int v3, p2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 729
    return-void
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 461
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    if-eqz p1, :cond_42

    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->r:I

    int-to-long v0, v0

    :goto_7
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 463
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v0, :cond_13

    .line 464
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 466
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 470
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_32

    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 473
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 476
    return-void

    .line 461
    :cond_42
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->s:I

    int-to-long v0, v0

    goto :goto_7
.end method

.method private i()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_24

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->F:Z

    if-eqz v0, :cond_24

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    :cond_24
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->clearAnimation()V

    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 490
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 491
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 492
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 494
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 495
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 497
    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 590
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c()V

    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->i()V

    .line 593
    :cond_12
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->D:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 597
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c()V

    .line 598
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->k()V

    .line 600
    :cond_12
    return-void
.end method

.method private m()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_5a

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0076

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_92

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    .line 748
    :goto_28
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v1, v3, :cond_105

    :cond_32
    move v1, v2

    .line 750
    :goto_33
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_a0

    .line 751
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 752
    if-ne v5, v0, :cond_4b

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v6, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v3, v6, :cond_53

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v6, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v3, v6, :cond_53

    :cond_4b
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    if-ne v5, v3, :cond_9e

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-eqz v3, :cond_9e

    :cond_53
    move v3, v4

    :goto_54
    invoke-static {v5, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 735
    :cond_5a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_79

    .line 736
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0077

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 739
    :cond_79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0078

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 744
    :cond_92
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_9b

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    goto :goto_28

    :cond_9b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    goto :goto_28

    :cond_9e
    move v3, v2

    .line 752
    goto :goto_54

    .line 756
    :cond_a0
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_b0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v1, v3, :cond_b0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v1, v3, :cond_103

    :cond_b0
    move v1, v4

    :goto_b1
    invoke-static {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 778
    :goto_b4
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-eqz v1, :cond_be

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v1, v3, :cond_1c1

    :cond_be
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v1, :cond_1c1

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Z

    if-nez v1, :cond_cc

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->D:Z

    if-eqz v1, :cond_1c1

    :cond_cc
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_1c1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1c1

    .line 781
    :goto_d4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 782
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 783
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    if-eqz v4, :cond_1c4

    const v0, 0x7f02001d

    :goto_e5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 788
    if-eqz v4, :cond_102

    .line 789
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Z

    if-eqz v0, :cond_1c9

    const v0, 0x7f02010a

    :goto_f3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 791
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->D:Z

    if-eqz v0, :cond_1ce

    const v0, 0x7f02010f

    :goto_ff
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    :cond_102
    return-void

    :cond_103
    move v1, v2

    .line 756
    goto :goto_b1

    .line 758
    :cond_105
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 759
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 760
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_1b2

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v1, :cond_1b2

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->E:Z

    if-eqz v1, :cond_1b2

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v1, :cond_12d

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->showButtonsInPortrait:Z

    if-eqz v1, :cond_1b2

    :cond_12d
    move v1, v4

    :goto_12e
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 762
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_1b5

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v1, :cond_1b5

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->A:Z

    if-eqz v1, :cond_1b5

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v1, :cond_14b

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->showButtonsInPortrait:Z

    if-eqz v1, :cond_1b5

    :cond_14b
    move v1, v4

    :goto_14c
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 764
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_1b7

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->I:Z

    if-eqz v1, :cond_1b7

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v1, :cond_163

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->showButtonsInPortrait:Z

    if-eqz v1, :cond_1b7

    :cond_163
    move v1, v4

    :goto_164
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 766
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v1

    if-nez v1, :cond_189

    .line 767
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_1b9

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->B:Z

    if-eqz v1, :cond_1b9

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v1, :cond_185

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->showButtonsInPortrait:Z

    if-nez v1, :cond_185

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->J:Z

    if-eqz v1, :cond_1b9

    :cond_185
    move v1, v4

    :goto_186
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 771
    :cond_189
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    if-ne v0, v1, :cond_1bb

    move v1, v4

    :goto_190
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 772
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1bd

    move v1, v4

    :goto_19a
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 773
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1bf

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v1, :cond_1bf

    move v1, v4

    :goto_1aa
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 775
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setVisibility(I)V

    goto/16 :goto_b4

    :cond_1b2
    move v1, v2

    .line 760
    goto/16 :goto_12e

    :cond_1b5
    move v1, v2

    .line 762
    goto :goto_14c

    :cond_1b7
    move v1, v2

    .line 764
    goto :goto_164

    :cond_1b9
    move v1, v2

    .line 767
    goto :goto_186

    :cond_1bb
    move v1, v2

    .line 771
    goto :goto_190

    :cond_1bd
    move v1, v2

    .line 772
    goto :goto_19a

    :cond_1bf
    move v1, v2

    .line 773
    goto :goto_1aa

    :cond_1c1
    move v4, v2

    .line 778
    goto/16 :goto_d4

    .line 783
    :cond_1c4
    const v0, 0x7f02001f

    goto/16 :goto_e5

    .line 789
    :cond_1c9
    const v0, 0x7f02010b

    goto/16 :goto_f3

    .line 791
    :cond_1ce
    const v0, 0x7f020110

    goto/16 :goto_ff
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 262
    return-object p0
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/o;->a(I)V

    .line 809
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 307
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 308
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->z:Z

    .line 311
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 314
    return-void

    .line 308
    :cond_3f
    const-string v0, ""

    goto :goto_2b
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/z;->a(Landroid/app/Activity;Ljava/util/List;Lcom/google/android/youtube/core/player/o;)V

    .line 840
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j()V

    .line 436
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    .line 437
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 438
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    if-eqz v0, :cond_15

    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->p()V

    .line 442
    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    .line 443
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j()V

    .line 421
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-eqz v0, :cond_9

    .line 432
    :cond_8
    :goto_8
    return-void

    .line 424
    :cond_9
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    .line 425
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestFocus()Z

    .line 429
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    if-eqz v0, :cond_8

    .line 430
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->g()V

    goto :goto_8
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 293
    :goto_6
    return-void

    .line 289
    :cond_7
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 290
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    goto :goto_6
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 304
    :goto_6
    return-void

    .line 299
    :cond_7
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setBufferedPercent(I)V

    .line 301
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    goto :goto_6
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->a()V

    .line 358
    return-void
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->b()I

    move-result v0

    return v0
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j()V

    .line 804
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->o()V

    .line 805
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_a

    .line 454
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Z)V

    .line 457
    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c()V

    .line 509
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    if-eqz v0, :cond_d

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_e

    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->h()V

    .line 542
    :cond_d
    :goto_d
    return-void

    .line 523
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_18

    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->f()V

    goto :goto_d

    .line 525
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5b

    .line 526
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Fullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Button"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "On"

    :goto_31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x1

    :goto_4b
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/o;->c(Z)V

    goto :goto_d

    .line 526
    :cond_56
    const-string v0, "Off"

    goto :goto_31

    .line 528
    :cond_59
    const/4 v0, 0x0

    goto :goto_4b

    .line 529
    :cond_5b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_63

    .line 530
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k()V

    goto :goto_d

    .line 531
    :cond_63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6b

    .line 532
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l()V

    goto :goto_d

    .line 533
    :cond_6b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 534
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_82

    .line 535
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Replay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->m()V

    goto :goto_d

    .line 537
    :cond_82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_8e

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_d

    .line 538
    :cond_8e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->j()V

    goto/16 :goto_d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-eqz v0, :cond_7

    .line 547
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 549
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingBottom()I

    move-result v1

    sub-int v1, v0, v1

    .line 665
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 667
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingTop()I

    move-result v0

    add-int v3, v0, v1

    .line 668
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v0

    .line 669
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    .line 671
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 672
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 673
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 674
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v4, v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    if-eqz v4, :cond_ac

    .line 675
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 676
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v4

    if-nez v4, :cond_56

    .line 677
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    .line 687
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v0

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    .line 688
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingTop()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 689
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->H:Z

    if-nez v1, :cond_71

    .line 690
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/TimeBar;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 693
    :cond_71
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-static {v1, v3, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 694
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-static {v1, v3, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 695
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-static {v1, v3, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 697
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v1, v3, :cond_d4

    .line 698
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v1, v3, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 700
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 714
    :goto_ab
    return-void

    .line 680
    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingRight()I

    move-result v0

    sub-int v0, p4, v0

    .line 681
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v4

    if-nez v4, :cond_c7

    .line 682
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v4, v5, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v4

    sub-int/2addr v0, v4

    .line 684
    :cond_c7
    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v4, v0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    goto :goto_56

    .line 703
    :cond_d4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 708
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_ab
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x8

    const/high16 v7, 0x4000

    .line 608
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 610
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 611
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 612
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 614
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getDefaultSize(II)I

    move-result v3

    .line 615
    invoke-static {v1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getDefaultSize(II)I

    move-result v4

    .line 616
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 617
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingTop()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getPaddingBottom()I

    move-result v2

    sub-int v2, v0, v2

    .line 620
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->c()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 622
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_e3

    .line 623
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 624
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 626
    :goto_5d
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_71

    .line 627
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 628
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 630
    :cond_71
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v6

    if-nez v6, :cond_8b

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_8b

    .line 631
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 632
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 634
    :cond_8b
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_9f

    .line 635
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 636
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    .line 639
    :cond_9f
    iget-boolean v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-eqz v5, :cond_cd

    div-int/lit8 v2, v2, 0x30

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 642
    :goto_a9
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Lcom/google/android/youtube/core/player/TimeBar;->measure(II)V

    .line 645
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 649
    :goto_c0
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->f:Landroid/view/View;

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 652
    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setMeasuredDimension(II)V

    .line 653
    return-void

    .line 639
    :cond_cd
    const/high16 v5, -0x8000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_a9

    .line 645
    :cond_d4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_c0

    :cond_e3
    move v0, v1

    goto/16 :goto_5d
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 657
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 658
    int-to-float v0, p1

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 659
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 660
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 585
    :cond_7
    :goto_7
    return v3

    .line 557
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_46

    move v0, v1

    :goto_19
    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:I

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_49

    move v0, v2

    :goto_22
    iput v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:I

    .line 562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 563
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:I

    sub-int/2addr v0, v1

    .line 564
    iget v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:I

    sub-int/2addr v1, v2

    .line 565
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    if-eqz v2, :cond_60

    .line 566
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4b

    if-le v2, v1, :cond_50

    .line 567
    if-lez v0, :cond_4c

    .line 568
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k()V

    goto :goto_7

    .line 559
    :cond_46
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->u:I

    goto :goto_19

    .line 560
    :cond_49
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->v:I

    goto :goto_22

    .line 570
    :cond_4c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->l()V

    goto :goto_7

    .line 573
    :cond_50
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_60

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->z:Z

    if-eqz v0, :cond_60

    .line 574
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->n()V

    goto :goto_7

    .line 579
    :cond_60
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->x:Z

    if-nez v0, :cond_68

    .line 580
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b(Z)V

    goto :goto_7

    .line 582
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    goto :goto_7
.end method

.method public setAutoHide(Z)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->F:Z

    .line 412
    if-eqz p1, :cond_8

    .line 413
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    .line 417
    :goto_7
    return-void

    .line 415
    :cond_8
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j()V

    goto :goto_7
.end method

.method public setCcEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 818
    return-void
.end method

.method public setExtraButton(ILandroid/view/View$OnClickListener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 825
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 827
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->I:Z

    .line 829
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 830
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 3
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 349
    :cond_b
    return-void
.end method

.method public setHQ(Z)V
    .registers 5
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 327
    if-eqz p1, :cond_18

    const v0, 0x7f0b007a

    .line 328
    :goto_a
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 327
    :cond_18
    const v0, 0x7f0b0079

    goto :goto_a
.end method

.method public setHQisHD(Z)V
    .registers 4
    .parameter

    .prologue
    .line 332
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_b

    const v0, 0x7f020134

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 333
    return-void

    .line 332
    :cond_b
    const v0, 0x7f020135

    goto :goto_7
.end method

.method public setHasCc(Z)V
    .registers 2
    .parameter

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->A:Z

    .line 813
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 814
    return-void
.end method

.method public setHasNext(Z)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->C:Z

    .line 337
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 338
    return-void
.end method

.method public setHasPrevious(Z)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->D:Z

    .line 342
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 343
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/o;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->c:Lcom/google/android/youtube/core/player/o;

    .line 259
    return-void
.end method

.method public setLoading()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 283
    :goto_6
    return-void

    .line 279
    :cond_7
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 280
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 282
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    goto :goto_6
.end method

.method public setLoadingView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method public setPlaying()V
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 273
    :goto_6
    return-void

    .line 269
    :cond_7
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->t:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 270
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 272
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    goto :goto_6
.end method

.method public setPortrait(Z)V
    .registers 3
    .parameter

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    .line 407
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->minimalInPortrait:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Z)V

    .line 408
    return-void

    .line 407
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setShowFullscreen(Z)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->B:Z

    .line 353
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 354
    return-void
.end method

.method public setShowFullscreenInPortrait(Z)V
    .registers 2
    .parameter

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->J:Z

    .line 844
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .registers 4
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 366
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->y:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->minimalInPortrait:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->a(Z)V

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    iget v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setProgressColor(I)V

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsBuffered:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowBuffered(Z)V

    .line 369
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->w:Z

    if-nez v0, :cond_27

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    .line 372
    :cond_27
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 373
    return-void

    .line 366
    :cond_2b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setSupportsQualityToggle(Z)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->E:Z

    .line 322
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->m()V

    .line 323
    return-void
.end method

.method public setTimeBarIsOverlay(Z)V
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->H:Z

    if-eq v0, p1, :cond_9

    .line 382
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->H:Z

    .line 383
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestLayout()V

    .line 385
    :cond_9
    return-void
.end method

.method public setTimes(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    .line 362
    return-void
.end method
