.class public Lcom/android/email/activity/MailboxListItem;
.super Landroid/widget/RelativeLayout;
.source "MailboxListItem.java"


# static fields
.field private static sDropAvailableBgColor:Ljava/lang/Integer;

.field private static sDropTrashBgColor:Ljava/lang/Integer;


# instance fields
.field public mAccountId:J

.field public mAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDropActiveBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mIsNavigable:Z

.field public mIsValidDropTarget:Z

.field private mLabelCount:Landroid/widget/TextView;

.field private mLabelName:Landroid/widget/TextView;

.field public mMailboxId:J

.field public mMailboxType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method private getDropActiveBgDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/activity/MailboxListItem;->mDropActiveBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    .line 107
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListItem;->mDropActiveBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MailboxListItem;->mDropActiveBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public isDropTarget(J)Z
    .registers 5
    .parameter "itemMailboxId"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsValidDropTarget:Z

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isNavigable()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsNavigable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    sget-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    if-nez v1, :cond_2b

    .line 81
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    .line 83
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropTrashBgColor:Ljava/lang/Integer;

    .line 85
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2b
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0e0072

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 120
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_9
    return-void
.end method

.method public setDropActiveBackground()V
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListItem;->getDropActiveBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method public setDropTargetBackground(ZJ)V
    .registers 8
    .parameter "dragInProgress"
    .parameter "itemMailbox"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, isBackgroundSet:Z
    if-eqz p1, :cond_28

    .line 141
    invoke-virtual {p0, p2, p3}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 142
    sget-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->setBackgroundColor(I)V

    .line 143
    const/4 v0, 0x1

    .line 152
    :goto_15
    if-nez v0, :cond_1c

    .line 154
    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_1c
    return-void

    .line 145
    :cond_1d
    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_15

    .line 149
    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_15
.end method

.method public setDropTrashBackground()V
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/android/email/activity/MailboxListItem;->sDropTrashBgColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListItem;->setBackgroundColor(I)V

    .line 129
    return-void
.end method
