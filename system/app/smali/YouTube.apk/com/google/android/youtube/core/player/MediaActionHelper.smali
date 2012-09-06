.class public final Lcom/google/android/youtube/core/player/MediaActionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/google/android/youtube/core/player/aj;

.field private final c:Ljava/util/Map;

.field private final d:I

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/view/animation/Animation;

.field private final g:Landroid/view/animation/Animation;

.field private final h:Landroid/os/Handler;

.field private i:D

.field private j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020192

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const v2, 0x7f020190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper;->a:Ljava/util/Map;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/aj;Landroid/widget/ImageView;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    iput-object p2, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->b:Lcom/google/android/youtube/core/player/aj;

    .line 196
    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->c:Ljava/util/Map;

    .line 197
    iput-object p3, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    .line 198
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/core/player/ah;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/ah;-><init>(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->h:Landroid/os/Handler;

    .line 199
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->d:I

    .line 201
    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->f:Landroid/view/animation/Animation;

    .line 202
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->g:Landroid/view/animation/Animation;

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/MediaActionHelper;)D
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->i:D

    return-wide v0
.end method

.method private static a(Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 323
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 324
    const v0, 0x7f020191

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    move-object v0, v1

    .line 327
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 329
    :cond_16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 331
    instance-of v2, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_42

    move-object v2, v3

    .line 333
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 336
    :cond_42
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 340
    :cond_58
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/youtube/core/player/ag;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/ag;-><init>(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 256
    :goto_9
    return-void

    .line 237
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->f:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/youtube/core/player/af;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/core/player/af;-><init>(Lcom/google/android/youtube/core/player/MediaActionHelper;ZLcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 254
    iget-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/MediaActionHelper;Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a()V

    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/youtube/core/player/ai;->a:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 151
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    :goto_d
    return-object v0

    .line 138
    :pswitch_e
    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    :cond_15
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    .line 142
    :pswitch_18
    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    :cond_1f
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    .line 145
    :pswitch_22
    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    if-eqz v0, :cond_29

    .line 146
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    .line 148
    :cond_29
    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->INACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    :cond_30
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    goto :goto_d

    .line 135
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_18
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/MediaActionHelper;)Lcom/google/android/youtube/core/player/aj;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->b:Lcom/google/android/youtube/core/player/aj;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/MediaActionHelper;Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->d(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/MediaActionHelper;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 6
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 311
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    .line 312
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->i:D

    const-wide v2, 0x3ff199999999999aL

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4024

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->i:D

    .line 313
    return-void
.end method

.method private d(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 6
    .parameter

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->h:Landroid/os/Handler;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->h:Landroid/os/Handler;

    iget v2, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->d:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->b:Lcom/google/android/youtube/core/player/aj;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/aj;->a(I)V

    .line 156
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    if-nez v0, :cond_23

    .line 207
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 208
    iput-object p1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Z)V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    iput-object p1, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->i:D

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->d(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 216
    :cond_23
    :goto_23
    return-void

    .line 212
    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Z)V

    .line 213
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    goto :goto_23
.end method

.method public final b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    if-ne v0, p1, :cond_1e

    .line 220
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 221
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a()V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->isRepeatable()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->h:Landroid/os/Handler;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 224
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/MediaActionHelper;->j:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 226
    :cond_1e
    return-void
.end method
