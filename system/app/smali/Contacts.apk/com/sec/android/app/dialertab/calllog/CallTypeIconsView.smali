.class public Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    .line 51
    return-void
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "callType"

    .prologue
    .line 80
    sparse-switch p1, :sswitch_data_3a

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :sswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_20
    return-object v0

    .line 88
    :sswitch_21
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 91
    :sswitch_26
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 93
    :sswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 97
    :sswitch_30
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->rejected:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 99
    :sswitch_35
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->autoRejected:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 80
    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_21
        0x3 -> :sswitch_26
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_30
        0x6 -> :sswitch_35
        0xb -> :sswitch_21
        0xc -> :sswitch_21
        0xd -> :sswitch_1c
        0xe -> :sswitch_26
        0xf -> :sswitch_30
        0x14 -> :sswitch_30
        0x32 -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public add(I)V
    .registers 6
    .parameter "callType"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mWidth:I

    .line 65
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mHeight:I

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->invalidate()V

    .line 67
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mWidth:I

    .line 56
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mHeight:I

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->invalidate()V

    .line 58
    return-void
.end method

.method public getCallType(I)I
    .registers 3
    .parameter "index"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, left:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, callType:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 116
    .local v4, right:I
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mResources:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;

    iget v5, v5, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int v3, v4, v5

    .line 119
    goto :goto_7

    .line 120
    .end local v0           #callType:Ljava/lang/Integer;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #right:I
    :cond_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    .line 108
    return-void
.end method
