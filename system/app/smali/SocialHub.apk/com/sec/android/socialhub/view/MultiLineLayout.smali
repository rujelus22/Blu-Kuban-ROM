.class public Lcom/sec/android/socialhub/view/MultiLineLayout;
.super Landroid/widget/AbsoluteLayout;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    }
.end annotation


# instance fields
.field private mCurrentHeight:I

.field private mCurrentLineCount:I

.field private mCurrentWidth:I

.field private mLineMaxHeight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMargin:I

.field private mMax:I

.field private mViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 27
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 28
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    .line 33
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    .line 34
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    .line 39
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->initialize()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 27
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 28
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    .line 33
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    .line 34
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    .line 45
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->initialize()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 27
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 28
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    .line 33
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    .line 34
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    .line 51
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->initialize()V

    .line 52
    return-void
.end method

.method private addLayout(Landroid/view/View;IIII)V
    .registers 9
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/MultiLineLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 162
    .local v0, mParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 163
    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 165
    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    iget v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    add-int/2addr v2, p4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-void
.end method

.method private addLayout(Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 133
    .local v6, max:Ljava/lang/Integer;
    if-nez v6, :cond_11

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 137
    :cond_11
    iget v0, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->height:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1f

    .line 139
    iget v0, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 142
    :cond_1f
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    sub-int v7, v0, v1

    .line 144
    .local v7, remain:I
    iget v0, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->width:I

    if-le v0, v7, :cond_43

    .line 147
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 148
    iput v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 149
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_43
    iget-object v1, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    iget v3, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    iget v4, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->width:I

    iget v5, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->height:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/view/MultiLineLayout;->addLayout(Landroid/view/View;IIII)V

    .line 154
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 123
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 124
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method private reDrawLayout()V
    .registers 9

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->removeAllViews()V

    .line 176
    iget-object v4, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 179
    .local v2, key:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 180
    .local v3, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    iget-object v4, v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    const v5, 0x7f0b00d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 181
    .local v0, check:Landroid/widget/CheckBox;
    iget-boolean v4, v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->bChecked:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    invoke-direct {p0, v3}, Lcom/sec/android/socialhub/view/MultiLineLayout;->addLayout(Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;)V

    goto :goto_9

    .line 185
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v2           #key:Landroid/view/View;
    .end local v3           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_31
    const-string v4, "MultiLineLayout"

    const-string v5, "reDrawLayout()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view count - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public addLayout(Landroid/view/View;IIZ)V
    .registers 15
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 92
    .local v7, max:Ljava/lang/Integer;
    if-nez v7, :cond_11

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 96
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p3, v0, :cond_1b

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 101
    :cond_1b
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    iget v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    sub-int v8, v0, v1

    .line 103
    .local v8, remain:I
    if-le p2, v8, :cond_3d

    .line 106
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    .line 107
    iput v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    .line 108
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentLineCount:I

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mLineMaxHeight:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3d
    const v0, 0x7f0b00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 113
    .local v6, check:Landroid/widget/CheckBox;
    iget v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentWidth:I

    iget v3, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mCurrentHeight:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/view/MultiLineLayout;->addLayout(Landroid/view/View;IIII)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v9, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;-><init>(Lcom/sec/android/socialhub/view/MultiLineLayout;Landroid/view/View;IIZ)V

    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "MultiLineLayout"

    const-string v1, "addLayout()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "child cnt - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public getViewArray()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewHashMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 59
    const-string v0, "MultiLineLayout"

    const-string v1, "onSizeChanged()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    .line 63
    iget v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMax:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_27

    .line 65
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    .line 72
    :goto_23
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->reDrawLayout()V

    .line 73
    return-void

    .line 69
    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mMargin:I

    goto :goto_23
.end method

.method public removeAllViews()V
    .registers 7

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->initialize()V

    .line 192
    iget-object v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_3d

    .line 195
    const-string v2, "MultiLineLayout"

    const-string v3, "removeAllViews()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout;->mViewArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 204
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/MultiLineLayout;->removeView(Landroid/view/View;)V

    goto :goto_2d

    .line 208
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_3d
    const-string v2, "MultiLineLayout"

    const-string v3, "removeAllViews()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
