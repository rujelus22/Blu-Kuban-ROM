.class public Lcom/android/providers/downloads/ui/SecDownloadItem;
.super Landroid/widget/RelativeLayout;
.source "SecDownloadItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static CHECKMARK_AREA:F


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDownloadId:J

.field private mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

.field private mFileName:Ljava/lang/String;

.field private mIsInDownEvent:Z

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/high16 v0, -0x4080

    sput v0, Lcom/android/providers/downloads/ui/SecDownloadItem;->CHECKMARK_AREA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->initialize()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    .line 52
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    .line 47
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->initialize()V

    .line 48
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 61
    sget v0, Lcom/android/providers/downloads/ui/SecDownloadItem;->CHECKMARK_AREA:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    .line 62
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/providers/downloads/ui/SecDownloadItem;->CHECKMARK_AREA:F

    .line 64
    :cond_15
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 115
    :cond_9
    :goto_9
    :pswitch_9
    if-eqz v0, :cond_49

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->postInvalidate()V

    .line 121
    :goto_e
    return v0

    .line 93
    :pswitch_f
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/SecDownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 95
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadItem;->playSoundEffect(I)V

    goto :goto_9

    .line 102
    :pswitch_29
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    goto :goto_9

    .line 106
    :pswitch_2c
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_42

    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/SecDownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_46

    .line 108
    :cond_42
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->toggle()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_46
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mIsInDownEvent:Z

    goto :goto_9

    .line 118
    :cond_49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e

    .line 91
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_2c
        :pswitch_9
        :pswitch_29
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 8
    .parameter "checked"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mMimeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/SecDownloadList;->onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 135
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->setChecked(IJZ)V

    .line 136
    return-void
.end method

.method public setCheckedWithData(Z)V
    .registers 9
    .parameter "checked"

    .prologue
    const/4 v4, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getSelectedIdsCount()I

    move-result v0

    if-ne v0, v4, :cond_54

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCheckedDownloadID(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCheckedDownloadID(I)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_54

    if-nez p1, :cond_54

    .line 146
    const/4 v6, 0x1

    .line 147
    .local v6, i:I
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    add-int/2addr v0, v6

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    if-nez v0, :cond_37

    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    :cond_37
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    add-int/2addr v1, v6

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCheckedDownloadID(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/ui/SecDownloadList;->setChecked(IJZ)V

    .line 153
    .end local v6           #i:I
    :cond_54
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mMimeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/SecDownloadList;->onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 156
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->setChecked(IJZ)V

    .line 157
    return-void
.end method

.method public setData(JILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "downloadId"
    .parameter "position"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadId:J

    .line 74
    iput p3, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mPosition:I

    .line 75
    iput-object p4, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mFileName:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mMimeType:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList;->isDownloadSelected(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->setCheckedWithData(Z)V

    .line 82
    :goto_14
    return-void

    .line 81
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->setCheckedWithData(Z)V

    goto :goto_14
.end method

.method public setDownloadListObj(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter "downloadList"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    .line 86
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadItem;->setChecked(Z)V

    .line 162
    return-void

    .line 161
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
