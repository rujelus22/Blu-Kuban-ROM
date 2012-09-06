.class public Lcom/google/android/youtube/core/player/TvControlsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;


# instance fields
.field private final c:Landroid/widget/ToggleButton;

.field private final d:Landroid/widget/ToggleButton;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Set;

.field private final i:Lcom/google/android/youtube/core/player/ba;

.field private j:Lcom/google/android/youtube/core/player/MediaActionHelper;

.field private k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const v1, 0x7f080115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const v1, 0x7f080113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const v1, 0x7f080117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const v1, 0x7f080114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const v1, 0x7f080116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const v1, 0x7f080119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const v1, 0x7f08011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const v1, 0x7f0800be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->SCROLL:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->a:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 55
    :cond_92
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->b:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040092

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    new-instance v0, Lcom/google/android/youtube/core/player/ba;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/ba;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->i:Lcom/google/android/youtube/core/player/ba;

    .line 86
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->PAUSED:Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->setPlaybackState(Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;)V

    .line 90
    const-class v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->f:Ljava/util/Set;

    .line 91
    const-class v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->g:Ljava/util/Set;

    .line 92
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    sget-object v1, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->h:Ljava/util/Set;

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 101
    :cond_88
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->e:Ljava/util/Map;

    .line 103
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->d:Landroid/widget/ToggleButton;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 185
    return-void
.end method

.method private b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 3
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/TvControlsView;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 190
    return-void
.end method

.method private c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 200
    if-nez v0, :cond_d

    .line 229
    :goto_c
    return-void

    .line 203
    :cond_d
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    move-result-object v1

    .line 204
    sget-object v4, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->GONE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    if-eq v1, v4, :cond_1f

    iget-object v4, p0, Lcom/google/android/youtube/core/player/TvControlsView;->g:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 205
    :cond_1f
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 207
    :cond_25
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    sget-object v4, Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;->ACTIVE:Lcom/google/android/youtube/core/player/MediaActionHelper$ActionState;

    if-ne v1, v4, :cond_4a

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    .line 210
    :goto_35
    if-eqz v1, :cond_4c

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_43

    .line 213
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 216
    :cond_43
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_c

    :cond_4a
    move v1, v3

    .line 208
    goto :goto_35

    .line 219
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_61

    .line 221
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 222
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, -0x6000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 225
    :cond_61
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_c
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->i:Lcom/google/android/youtube/core/player/ba;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/youtube/core/player/ba;->a(III)V

    .line 139
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->a:Ljava/util/Map;

    const v1, 0x7f08011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 194
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 196
    return-void
.end method

.method public final a(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->i:Lcom/google/android/youtube/core/player/ba;

    div-int/lit16 v1, p1, 0x3e8

    div-int/lit16 v2, p2, 0x3e8

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/youtube/core/player/ba;->a(III)V

    .line 143
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 238
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->j:Lcom/google/android/youtube/core/player/MediaActionHelper;

    if-eqz v0, :cond_1e

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080115

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 254
    :cond_17
    :goto_17
    if-eqz v0, :cond_36

    .line 255
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->j:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    .line 260
    :cond_1e
    return-void

    .line 253
    :cond_1f
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    goto :goto_17

    :cond_22
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    .line 258
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported onClick widget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControlsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvControlsView;->getChildCount()I

    move-result v2

    .line 125
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_3f

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/TvControlsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 128
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 129
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/player/TvControlsView;->removeView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v2, v2, -0x1

    .line 132
    add-int/lit8 v1, v1, -0x1

    .line 125
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 135
    :cond_3f
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 278
    if-nez p2, :cond_a

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->requestFocus()Z

    .line 281
    :cond_a
    return-void
.end method

.method public setFocus(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 3
    .parameter

    .prologue
    .line 271
    sget-object v0, Lcom/google/android/youtube/core/player/TvControlsView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 273
    return-void
.end method

.method public setMediaActionHelper(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 4
    .parameter

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->j:Lcom/google/android/youtube/core/player/MediaActionHelper;

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->i:Lcom/google/android/youtube/core/player/ba;

    new-instance v1, Lcom/google/android/youtube/core/player/ay;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/core/player/ay;-><init>(Lcom/google/android/youtube/core/player/TvControlsView;Lcom/google/android/youtube/core/player/MediaActionHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ba;->a(Lcom/google/android/youtube/core/player/bc;)V

    .line 116
    return-void
.end method

.method public setNextEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 159
    if-eqz p1, :cond_8

    .line 160
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 164
    :goto_7
    return-void

    .line 162
    :cond_8
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    goto :goto_7
.end method

.method public setPlayPauseEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 175
    if-eqz p1, :cond_8

    .line 176
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 180
    :goto_7
    return-void

    .line 178
    :cond_8
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    goto :goto_7
.end method

.method public setPlaybackState(Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/youtube/core/player/az;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/TvControlsView$PlaybackState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 148
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 152
    :goto_17
    return-void

    .line 151
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->c:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_17

    .line 146
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method

.method public setPreviousEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 167
    if-eqz p1, :cond_8

    .line 168
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->a(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 172
    :goto_7
    return-void

    .line 170
    :cond_8
    sget-object v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->b(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    goto :goto_7
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .registers 4
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvControlsView;->k:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->i:Lcom/google/android/youtube/core/player/ba;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ba;->a(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvControlsView;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    .line 266
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/TvControlsView;->c(Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    goto :goto_f

    .line 268
    :cond_1f
    return-void
.end method
