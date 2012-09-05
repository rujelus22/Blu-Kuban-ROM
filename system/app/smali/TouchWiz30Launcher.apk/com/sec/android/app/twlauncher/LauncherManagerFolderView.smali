.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.super Landroid/widget/FrameLayout;
.source "LauncherManagerFolderView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;,
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
    }
.end annotation


# instance fields
.field protected mContent:Landroid/widget/GridView;

.field private mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

.field private mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/RegionInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    .line 101
    return-void
.end method

.method private touchEventHandler(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "aEv"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v5, :cond_7

    .line 186
    :cond_6
    :goto_6
    return v3

    .line 170
    :cond_7
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 171
    .local v2, pt:Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->getF(Landroid/graphics/PointF;)I

    move-result v1

    .line 172
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, action:I
    if-nez v0, :cond_25

    move v3, v4

    .line 177
    goto :goto_6

    .line 179
    :cond_25
    if-ne v4, v0, :cond_6

    .line 180
    packed-switch v1, :pswitch_data_32

    goto :goto_6

    .line 182
    :pswitch_2b
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    invoke-interface {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    move v3, v4

    .line 183
    goto :goto_6

    .line 180
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 154
    return-void
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .registers 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 191
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_d

    .line 192
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 194
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :goto_c
    return-object v0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 6
    .parameter "aInfo"

    .prologue
    .line 217
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1a

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, tag:Ljava/lang/Object;
    if-ne v1, p1, :cond_17

    .line 224
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :goto_16
    return-object v2

    .line 217
    .restart local v1       #tag:Ljava/lang/Object;
    .restart local v2       #v:Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 224
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 229
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;-><init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 142
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "aEv"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v0, :cond_5

    .line 203
    :goto_4
    return-void

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    goto :goto_4
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v1, :cond_6

    .line 213
    :cond_5
    :goto_5
    return v0

    .line 210
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "aChanged"
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    const/high16 v3, 0x42c8

    .line 105
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->clear()V

    .line 108
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .local v1, closeBtnSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    .local v0, closeBtn:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/twlauncher/RegionInfo;->addF(ILandroid/graphics/RectF;)Z

    .line 132
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "aEv"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V
    .registers 2
    .parameter "aListener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    .line 150
    return-void
.end method

.method public setChildState(I)V
    .registers 5
    .parameter "aVisibility"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_16

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 237
    .end local v1           #v:Landroid/view/View;
    :cond_16
    return-void
.end method
