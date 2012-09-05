.class public Lcom/android/email/activity/AccountFolderListItem;
.super Landroid/widget/LinearLayout;
.source "AccountFolderListItem.java"


# instance fields
.field public mAccountId:J

.field private mAdapter:Lcom/android/email/activity/AccountsAdapter;

.field private mCachedViewPositions:Z

.field private mDownEvent:Z

.field private mFolderLeft:I

.field private mHasFolderButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V
    .registers 4
    .parameter "adapter"
    .parameter "hasFolderButton"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    .line 63
    iput-boolean p2, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-object v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget-wide v6, p0, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/email/activity/AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v5

    if-eqz v5, :cond_d

    move v1, v4

    .line 119
    :goto_c
    return v1

    .line 77
    :cond_d
    iget-boolean v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    if-nez v5, :cond_16

    .line 78
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_c

    .line 81
    :cond_16
    const/4 v1, 0x0

    .line 82
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 84
    .local v3, touchX:I
    iget-boolean v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    if-nez v5, :cond_46

    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v2, paddingScale:F
    const/high16 v5, 0x40a0

    mul-float/2addr v5, v2

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 87
    .local v0, folderPadding:I
    const v5, 0x7f100011

    invoke-virtual {p0, v5}, Lcom/android/email/activity/AccountFolderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    .line 88
    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    .line 91
    .end local v0           #folderPadding:I
    .end local v2           #paddingScale:F
    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_74

    .line 113
    :cond_4d
    :goto_4d
    :pswitch_4d
    if-eqz v1, :cond_6e

    .line 114
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->postInvalidate()V

    goto :goto_c

    .line 93
    :pswitch_53
    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    .line 94
    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_4d

    .line 95
    const/4 v1, 0x1

    goto :goto_4d

    .line 100
    :pswitch_5b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    goto :goto_4d

    .line 104
    :pswitch_5f
    iget-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    if-eqz v4, :cond_4d

    .line 105
    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_4d

    .line 106
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/AccountsAdapter;->onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V

    .line 107
    const/4 v1, 0x1

    goto :goto_4d

    .line 116
    :cond_6e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_c

    .line 91
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5f
        :pswitch_4d
        :pswitch_5b
    .end packed-switch
.end method
