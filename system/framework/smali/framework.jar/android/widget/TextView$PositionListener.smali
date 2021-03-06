.class Landroid/widget/TextView$PositionListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 9846
    iput-object p1, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9849
    iput v1, p0, Landroid/widget/TextView$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 9850
    new-array v0, v1, [Landroid/widget/TextView$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    .line 9852
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    .line 9853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9846
    invoke-direct {p0, p1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private updatePosition()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9923
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9925
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_1f

    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_33

    :cond_1f
    move v0, v2

    :goto_20
    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    .line 9927
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    .line 9928
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    .line 9929
    return-void

    :cond_33
    move v0, v1

    .line 9925
    goto :goto_20
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V
    .registers 8
    .parameter "positionListener"
    .parameter "canMove"

    .prologue
    .line 9860
    iget v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_10

    .line 9861
    invoke-direct {p0}, Landroid/widget/TextView$PositionListener;->updatePosition()V

    .line 9862
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 9863
    .local v3, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 9866
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_10
    const/4 v0, -0x1

    .line 9867
    .local v0, emptySlotIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    const/4 v4, 0x6

    if-ge v1, v4, :cond_24

    .line 9868
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 9869
    .local v2, listener:Landroid/widget/TextView$TextViewPositionListener;
    if-ne v2, p1, :cond_1c

    .line 9879
    .end local v2           #listener:Landroid/widget/TextView$TextViewPositionListener;
    :goto_1b
    return-void

    .line 9871
    .restart local v2       #listener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_1c
    if-gez v0, :cond_21

    if-nez v2, :cond_21

    .line 9872
    move v0, v1

    .line 9867
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 9876
    .end local v2           #listener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_24
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 9877
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 9878
    iget v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    goto :goto_1b
.end method

.method public getPositionX()I
    .registers 2

    .prologue
    .line 9897
    iget v0, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .registers 2

    .prologue
    .line 9901
    iget v0, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    .line 9906
    invoke-direct {p0}, Landroid/widget/TextView$PositionListener;->updatePosition()V

    .line 9908
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v2, 0x6

    if-ge v0, v2, :cond_29

    .line 9909
    iget-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_26

    .line 9910
    :cond_15
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 9911
    .local v1, positionListener:Landroid/widget/TextView$TextViewPositionListener;
    if-eqz v1, :cond_26

    .line 9912
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/TextView$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 9908
    .end local v1           #positionListener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9918
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    .line 9919
    const/4 v2, 0x1

    return v2
.end method

.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 9932
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    .line 9933
    return-void
.end method

.method public removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V
    .registers 6
    .parameter "positionListener"

    .prologue
    .line 9882
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    .line 9883
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_23

    .line 9884
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 9885
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    .line 9890
    :cond_15
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_22

    .line 9891
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 9892
    .local v1, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 9894
    .end local v1           #vto:Landroid/view/ViewTreeObserver;
    :cond_22
    return-void

    .line 9882
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
