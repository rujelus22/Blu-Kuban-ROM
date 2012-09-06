.class public Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.super Ljava/lang/Object;
.source "KeyboardParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;
    }
.end annotation


# instance fields
.field public GRID_HEIGHT:I

.field public GRID_WIDTH:I

.field public mBaseHeight:I

.field public mBaseWidth:I

.field public mBottomPadding:I

.field public mDefaultKeyWidth:I

.field public mDefaultRowHeight:I

.field private final mHeightHistogram:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mHorizontalCenterPadding:I

.field public mHorizontalEdgesPadding:I

.field public mHorizontalGap:I

.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field public mIsRtlKeyboard:Z

.field public final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxHeightCount:I

.field public mMaxMiniKeyboardColumn:I

.field private mMaxWidthCount:I

.field public mMoreKeysTemplate:I

.field public mMostCommonKeyHeight:I

.field public mMostCommonKeyWidth:I

.field public mOccupiedHeight:I

.field public mOccupiedWidth:I

.field public final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeId:I

.field public mTopPadding:I

.field public final mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

.field public final mUnshiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mVerticalGap:I

.field private final mWidthHistogram:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftLockKeys:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftedIcons:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mUnshiftedIcons:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 69
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 70
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 72
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    .line 154
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 155
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Ljava/util/Map;

    .line 33
    return-void
.end method

.method private clearHistogram()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 160
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 161
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 162
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 165
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 166
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    return-void
.end method

.method private updateHistogram(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 8
    .parameter "key"

    .prologue
    .line 176
    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    iget v5, p1, Lcom/android/inputmethod/keyboard/Key;->mVerticalGap:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 177
    .local v0, height:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Ljava/util/Map;

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogramCounter(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v1

    .line 178
    .local v1, heightCount:I
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    if-le v1, v4, :cond_1b

    .line 179
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 183
    :cond_1b
    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v5, p1, Lcom/android/inputmethod/keyboard/Key;->mHorizontalGap:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 184
    .local v2, width:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Ljava/util/Map;

    invoke-static {v4, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogramCounter(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v3

    .line 185
    .local v3, widthCount:I
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    if-le v3, v4, :cond_36

    .line 186
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 187
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 189
    :cond_36
    return-void
.end method

.method private static updateHistogramCounter(Ljava/util/Map;Ljava/lang/Integer;)I
    .registers 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    add-int/lit8 v0, v1, 0x1

    .line 171
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return v0

    .line 170
    .end local v0           #count:I
    :cond_1a
    const/4 v1, 0x0

    goto :goto_10
.end method


# virtual methods
.method public addShiftedIcon(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "key"
    .parameter "icon"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mUnshiftedIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method protected clearKeys()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->clearHistogram()V

    .line 136
    return-void
.end method

.method public onAddKey(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogram(Lcom/android/inputmethod/keyboard/Key;)V

    .line 141
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1d
    return-void
.end method
