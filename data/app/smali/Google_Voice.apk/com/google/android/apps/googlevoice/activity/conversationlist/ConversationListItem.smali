.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;
.super Landroid/widget/LinearLayout;
.source "ConversationListItem.java"


# static fields
.field private static final STAR_PAD:F = 10.0f


# instance fields
.field cachedPositions:Z

.field downEvent:Z

.field onStarClickListener:Landroid/view/View$OnClickListener;

.field starLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->starLeft:I

    .line 30
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->downEvent:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->onStarClickListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->starLeft:I

    .line 30
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->downEvent:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->onStarClickListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 103
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    .line 105
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 55
    .local v4, touchX:I
    iget-boolean v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    if-nez v6, :cond_3c

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v2, paddingScale:F
    const/high16 v6, 0x4120

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 58
    .local v3, starPadding:I
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->starred:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 60
    .local v1, left:I
    :goto_28
    if-eq v5, p0, :cond_36

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v1, v6

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5           #view:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5       #view:Landroid/view/View;
    goto :goto_28

    .line 64
    :cond_36
    sub-int v6, v1, v3

    iput v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->starLeft:I

    .line 65
    iput-boolean v10, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->cachedPositions:Z

    .line 68
    .end local v1           #left:I
    .end local v2           #paddingScale:F
    .end local v3           #starPadding:I
    .end local v5           #view:Landroid/view/View;
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_6e

    .line 92
    :cond_43
    :goto_43
    :pswitch_43
    if-eqz v0, :cond_68

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->postInvalidate()V

    .line 98
    :goto_48
    return v0

    .line 70
    :pswitch_49
    iput-boolean v10, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->downEvent:Z

    .line 71
    iget v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->starLeft:I

    if-le v4, v6, :cond_43

    .line 72
    const/4 v0, 0x1

    goto :goto_43

    .line 77
    :pswitch_51
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->downEvent:Z

    goto :goto_43

    .line 81
    :pswitch_55
    iget-boolean v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->downEvent:Z

    if-eqz v6, :cond_43

    .line 82
    iget v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->starLeft:I

    if-le v4, v6, :cond_43

    .line 83
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->onStarClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_66

    .line 84
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->onStarClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v6, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 86
    :cond_66
    const/4 v0, 0x1

    goto :goto_43

    .line 95
    :cond_68
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_48

    .line 68
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_55
        :pswitch_43
        :pswitch_51
    .end packed-switch
.end method

.method setOnStarClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "onStarClickListener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->onStarClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method
