.class public Lcom/google/android/apps/plus/views/AvatarLineupLayout;
.super Landroid/view/ViewGroup;
.source "AvatarLineupLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sAvatarLineupItemPadding:I

.field private static sAvatarLineupItemSize:I

.field private static sInitialized:Z


# instance fields
.field private mAvatarRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/AvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    sget-boolean v1, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sInitialized:Z

    if-nez v1, :cond_1d

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemPadding:I

    .line 54
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    .line 56
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sInitialized:Z

    .line 59
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatarRects:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public bind(Ljava/util/ArrayList;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 7
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPerson;",
            ">;",
            "Lcom/google/android/apps/plus/views/EventActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventPerson;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, gaiaIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    .line 153
    .local v2, person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    iget-object v3, v2, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->gaiaId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 156
    .end local v2           #person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    :cond_1b
    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mPeople:Ljava/util/ArrayList;

    .line 157
    iput-object p2, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 158
    return-void
.end method

.method public bindIds(Ljava/util/ArrayList;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/plus/views/EventActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mPeople:Ljava/util/ArrayList;

    .line 162
    iput-object p2, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 163
    return-void
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 180
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_25

    .line 181
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/AvatarView;

    .line 182
    .local v2, view:Lcom/google/android/apps/plus/views/AvatarView;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 183
    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->removeView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 187
    .end local v2           #view:Lcom/google/android/apps/plus/views/AvatarView;
    :cond_25
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatarRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 190
    iput-object v4, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 170
    instance-of v0, p1, Lcom/google/android/apps/plus/views/AvatarView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    check-cast p1, Lcom/google/android/apps/plus/views/AvatarView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onAvatarClicked(Ljava/lang/String;)V

    .line 173
    :cond_13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 133
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 135
    .local v2, totalAvatarCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_7
    if-ge v0, v2, :cond_2d

    .line 136
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/AvatarView;

    .line 137
    .local v3, view:Lcom/google/android/apps/plus/views/AvatarView;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatarRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 139
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AvatarView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2a

    .line 140
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/views/AvatarView;->layout(IIII)V

    .line 135
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 143
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v3           #view:Lcom/google/android/apps/plus/views/AvatarView;
    :cond_2d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 77
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 78
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 80
    .local v11, width:I
    const/4 v3, 0x0

    .line 83
    .local v3, currentX:I
    sget v12, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemPadding:I

    add-int/2addr v12, v11

    sget v13, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    sget v14, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemPadding:I

    add-int/2addr v13, v14

    div-int v4, v12, v13

    .line 86
    .local v4, maxAvatars:I
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 87
    .local v6, peopleCount:I
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 90
    .local v10, trueDisplayCount:I
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v10, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    .local v1, additionalViews:I
    move v0, v1

    .local v0, addedViewCount:I
    :goto_2a
    if-lez v0, :cond_51

    .line 93
    new-instance v5, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v5, newView:Lcom/google/android/apps/plus/views/AvatarView;
    invoke-virtual {v5, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarSize(I)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatarRects:Ljava/util/ArrayList;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 101
    .end local v5           #newView:Lcom/google/android/apps/plus/views/AvatarView;
    :cond_51
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 103
    .local v9, totalAvatarCount:I
    const/4 v2, 0x0

    .local v2, currentIndex:I
    :goto_58
    if-ge v2, v9, :cond_ae

    .line 104
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatars:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/views/AvatarView;

    .line 106
    .local v8, targetView:Lcom/google/android/apps/plus/views/AvatarView;
    if-ge v2, v10, :cond_a4

    .line 107
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mAvatarRects:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 109
    .local v7, targetBound:Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 110
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 111
    sget v12, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    sget v13, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lcom/google/android/apps/plus/views/AvatarView;->measure(II)V

    .line 115
    if-lez v2, :cond_a2

    sget v12, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemPadding:I

    :goto_92
    add-int/2addr v3, v12

    .line 117
    const/4 v12, 0x0

    sget v13, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    add-int/2addr v13, v3

    sget v14, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    invoke-virtual {v7, v3, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    sget v12, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    add-int/2addr v3, v12

    .line 103
    .end local v7           #targetBound:Landroid/graphics/Rect;
    :goto_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 115
    .restart local v7       #targetBound:Landroid/graphics/Rect;
    :cond_a2
    const/4 v12, 0x0

    goto :goto_92

    .line 123
    .end local v7           #targetBound:Landroid/graphics/Rect;
    :cond_a4
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 124
    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    goto :goto_9f

    .line 128
    .end local v8           #targetView:Lcom/google/android/apps/plus/views/AvatarView;
    :cond_ae
    sget v12, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->sAvatarLineupItemSize:I

    invoke-virtual {p0, v3, v12}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->setMeasuredDimension(II)V

    .line 129
    return-void
.end method
