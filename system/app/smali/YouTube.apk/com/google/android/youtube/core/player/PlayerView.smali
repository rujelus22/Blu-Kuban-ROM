.class public Lcom/google/android/youtube/core/player/PlayerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/android/youtube/core/player/al;

.field private e:Lcom/google/android/youtube/core/j;

.field private f:Lcom/google/android/youtube/core/player/ak;

.field private g:Lcom/google/android/youtube/core/player/am;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ak;->b()V

    .line 136
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ak;->a(Landroid/media/MediaPlayer;)V

    .line 132
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/al;Lcom/google/android/youtube/core/j;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/al;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->d:Lcom/google/android/youtube/core/player/al;

    .line 112
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/j;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->e:Lcom/google/android/youtube/core/j;

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    if-nez v0, :cond_61

    .line 114
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/PlayerView;->getWindowAttachCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 115
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->c:Z

    .line 128
    :goto_1f
    return-void

    .line 118
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/PlayerView;->getWindowAttachCount()I

    move-result v0

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_27
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->b:Z

    if-eqz v0, :cond_46

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_46

    invoke-interface {p2, p0}, Lcom/google/android/youtube/core/j;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8d

    :cond_46
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->b:Z

    if-eqz v0, :cond_4f

    const-string v0, "Unable to use a SurfaceTexture because hardware acceleration is not available"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :cond_4f
    new-instance v0, Lcom/google/android/youtube/core/player/p;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    :goto_58
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    iget v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->i:I

    iget v3, p0, Lcom/google/android/youtube/core/player/PlayerView;->h:I

    invoke-interface {v0, v1, v3}, Lcom/google/android/youtube/core/player/ak;->a(II)V

    .line 120
    :cond_61
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ak;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ak;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/PlayerView;->removeView(Landroid/view/View;)V

    .line 123
    :cond_72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ak;->a(Lcom/google/android/youtube/core/player/al;)V

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ak;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :cond_8b
    move v0, v2

    .line 118
    goto :goto_27

    :cond_8d
    :try_start_8d
    const-string v0, "com.google.android.youtube.coreicecream.d"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Landroid/content/Context;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ak;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_af} :catch_b0

    goto :goto_58

    :catch_b0
    move-exception v0

    const-string v1, "Error creating TexturePlayerSurface"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->g:Lcom/google/android/youtube/core/player/am;

    if-eqz v0, :cond_e

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->g:Lcom/google/android/youtube/core/player/am;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/am;->a(Landroid/graphics/Rect;)V

    .line 199
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 79
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->c:Z

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->d:Lcom/google/android/youtube/core/player/al;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->e:Lcom/google/android/youtube/core/j;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/al;Lcom/google/android/youtube/core/j;)V

    .line 82
    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, -0x8000

    const v5, 0x3fe374bc

    const/high16 v4, 0x4000

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 152
    if-ne v2, v4, :cond_17

    if-ne v3, v4, :cond_17

    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 185
    :goto_16
    return-void

    .line 155
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 156
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 160
    if-eq v2, v4, :cond_25

    if-ne v2, v6, :cond_3c

    if-nez v3, :cond_3c

    .line 163
    :cond_25
    int-to-float v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 181
    :goto_28
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/PlayerView;->resolveSize(II)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/PlayerView;->resolveSize(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_16

    .line 164
    :cond_3c
    if-eq v3, v4, :cond_42

    if-ne v3, v6, :cond_46

    if-nez v2, :cond_46

    .line 167
    :cond_42
    int-to-float v1, v0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_28

    .line 168
    :cond_46
    if-ne v2, v6, :cond_59

    if-ne v3, v6, :cond_59

    .line 169
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55

    .line 170
    int-to-float v1, v0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 171
    goto :goto_28

    .line 174
    :cond_55
    int-to-float v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_28

    .line 178
    :cond_59
    iget v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->i:I

    .line 179
    iget v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->h:I

    goto :goto_28
.end method

.method public setSurfaceTexture(Z)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/PlayerView;->b:Z

    .line 74
    return-void
.end method

.method public setSystemWindowInsetsListener(Lcom/google/android/youtube/core/player/am;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/core/player/PlayerView;->g:Lcom/google/android/youtube/core/player/am;

    .line 189
    return-void
.end method

.method public setVideoSize(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    iput p2, p0, Lcom/google/android/youtube/core/player/PlayerView;->h:I

    .line 140
    iput p1, p0, Lcom/google/android/youtube/core/player/PlayerView;->i:I

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->f:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/player/ak;->a(II)V

    .line 144
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/PlayerView;->requestLayout()V

    .line 145
    return-void
.end method
