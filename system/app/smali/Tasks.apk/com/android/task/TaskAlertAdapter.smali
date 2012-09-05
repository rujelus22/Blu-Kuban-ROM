.class public Lcom/android/task/TaskAlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "TaskAlertAdapter.java"


# instance fields
.field private mDateTextView:Landroid/widget/TextView;

.field private mSubjectTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resource"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 35
    iput-object v0, p0, Lcom/android/task/TaskAlertAdapter;->mSubjectTextView:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method private updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJI)V
    .registers 20
    .parameter "context"
    .parameter "view"
    .parameter "subject"
    .parameter "startMillis"
    .parameter "dueMillis"
    .parameter "mReminderType"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 80
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_13

    .line 81
    :cond_c
    const v6, 0x7f0a0024

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 83
    :cond_13
    const v6, 0x7f0c000a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mSubjectTextView:Landroid/widget/TextView;

    .line 84
    iget-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/task/TaskAlertAdapter;->mContext:Landroid/content/Context;

    move-wide v0, p4

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, startDate:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/task/TaskAlertAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, dueDate:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/task/TaskAlertAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, customizeDate:Ljava/lang/String;
    const v6, 0x7f0c000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    .line 98
    packed-switch p8, :pswitch_data_6a

    .line 110
    iget-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_55
    return-void

    .line 100
    :pswitch_56
    iget-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 103
    :pswitch_5e
    iget-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 106
    :pswitch_64
    iget-object v6, p0, Lcom/android/task/TaskAlertAdapter;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 98
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_56
        :pswitch_5e
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 50
    const-string v0, "AlertAdapter"

    const-string v1, "======== TaskAlertAdapter bindVeiw ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v10, 0x0

    .line 54
    .local v10, colIndex:I
    const v0, 0x7f0c0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 55
    .local v9, accountColorBar:Landroid/view/View;
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 56
    if-eqz v10, :cond_46

    .line 57
    iget-object v0, p0, Lcom/android/task/TaskAlertAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    :goto_1f
    const v0, 0x7f0c000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskAlertAdapter;->mSubjectTextView:Landroid/widget/TextView;

    .line 65
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, subject:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 67
    .local v4, startMillis:J
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 68
    .local v6, dueMillis:J
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, mReminderType:I
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 70
    invoke-direct/range {v0 .. v8}, Lcom/android/task/TaskAlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJI)V

    .line 72
    return-void

    .line 60
    .end local v3           #subject:Ljava/lang/String;
    .end local v4           #startMillis:J
    .end local v6           #dueMillis:J
    .end local v8           #mReminderType:I
    :cond_46
    iget-object v0, p0, Lcom/android/task/TaskAlertAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1f
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method
