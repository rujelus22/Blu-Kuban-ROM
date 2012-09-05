.class public Lcom/android/task/TaskImportViewActivity;
.super Landroid/app/Activity;
.source "TaskImportViewActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mPosition:I

.field private mVCalManager:Lcom/android/task/vcal/VCalManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/task/TaskImportViewActivity;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskImportViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->importCalendar()V

    return-void
.end method

.method private importCalendar()V
    .registers 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    invoke-virtual {v1}, Lcom/android/task/vcal/VCalManager;->save()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 247
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, importString:Ljava/lang/String;
    :goto_13
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 252
    return-void

    .line 249
    .end local v0           #importString:Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #importString:Ljava/lang/String;
    goto :goto_13
.end method

.method private setAccount()V
    .registers 6

    .prologue
    .line 169
    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, accountColor:Landroid/widget/ImageView;
    const v2, 0x7f0c0030

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, accountTextView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mAccountName:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x9

    const/16 v4, 0x5a

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void
.end method

.method private setDate()V
    .registers 25

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/task/vcal/VCalManager;->getVTodoDtStart(I)Ljava/lang/Long;

    move-result-object v13

    .line 180
    .local v13, startDate:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/task/vcal/VCalManager;->getVTodoDue(I)Ljava/lang/Long;

    move-result-object v8

    .line 182
    .local v8, dueDate:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 185
    .local v4, dateGuideString:Ljava/lang/String;
    const v19, 0x7f0c0017

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 186
    .local v9, dueDateTextView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    if-nez v8, :cond_ff

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_4b
    const v19, 0x7f0c0031

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 197
    .local v14, startDateDContainer:Landroid/view/View;
    const v19, 0x7f0c0013

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 198
    .local v15, startDateTextView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    if-nez v13, :cond_13b

    .line 200
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const/16 v19, 0x0

    const/16 v20, 0x23

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    :goto_8a
    if-eqz v8, :cond_fe

    .line 214
    const v19, 0x7f0c0032

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 215
    .local v7, ddayTextView:Landroid/widget/TextView;
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 216
    .local v17, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 217
    .local v11, now:J
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 218
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v11, v12, v0, v1}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v18

    .line 219
    .local v18, today:I
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 220
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v10

    .line 222
    .local v10, dueDay:I
    move/from16 v0, v18

    if-lt v10, v0, :cond_1a6

    .line 223
    sub-int v5, v10, v18

    .line 224
    .local v5, dday:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, ddayStr:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    .end local v5           #dday:I
    .end local v6           #ddayStr:Ljava/lang/String;
    .end local v7           #ddayTextView:Landroid/widget/TextView;
    .end local v10           #dueDay:I
    .end local v11           #now:J
    .end local v17           #tempTime:Landroid/text/format/Time;
    .end local v18           #today:I
    :cond_fe
    :goto_fe
    return-void

    .line 190
    .end local v14           #startDateDContainer:Landroid/view/View;
    .end local v15           #startDateTextView:Landroid/widget/TextView;
    :cond_ff
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 191
    .local v16, t:Landroid/text/format/Time;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 192
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v20 .. v24}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b

    .line 203
    .end local v16           #t:Landroid/text/format/Time;
    .restart local v14       #startDateDContainer:Landroid/view/View;
    .restart local v15       #startDateTextView:Landroid/widget/TextView;
    :cond_13b
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 204
    .restart local v16       #t:Landroid/text/format/Time;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 205
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v20 .. v24}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_8a

    .line 229
    .end local v16           #t:Landroid/text/format/Time;
    .restart local v7       #ddayTextView:Landroid/widget/TextView;
    .restart local v10       #dueDay:I
    .restart local v11       #now:J
    .restart local v17       #tempTime:Landroid/text/format/Time;
    .restart local v18       #today:I
    :cond_1a6
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_fe
.end method

.method private setNote()V
    .registers 5

    .prologue
    .line 239
    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 240
    .local v1, noteTextView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    iget v3, p0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/task/vcal/VCalManager;->getVTodoDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, note:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method private setPriority()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 147
    const v2, 0x7f0c001f

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 148
    .local v1, priorityIcon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    iget v3, p0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/task/vcal/VCalManager;->getVTodoPriority(I)I

    move-result v0

    .line 150
    .local v0, priority:I
    packed-switch v0, :pswitch_data_30

    .line 166
    :goto_15
    return-void

    .line 152
    :pswitch_16
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 157
    :pswitch_20
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 160
    :pswitch_25
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 150
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_16
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method private setReminder()V
    .registers 1

    .prologue
    .line 236
    return-void
.end method

.method private setSubject()V
    .registers 6

    .prologue
    .line 137
    const v3, 0x7f0c000f

    invoke-virtual {p0, v3}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, subjectTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    iget v4, p0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/task/vcal/VCalManager;->getVTodoSummary(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, subject:Ljava/lang/String;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    .line 140
    :cond_19
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f0a0024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_24
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method private setupLayout()V
    .registers 2

    .prologue
    .line 92
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/task/TaskImportViewActivity;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setSubject()V

    .line 98
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setPriority()V

    .line 101
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setAccount()V

    .line 104
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setDate()V

    .line 107
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setReminder()V

    .line 110
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setNote()V

    .line 112
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setupSoftkey()V

    .line 113
    return-void
.end method

.method private setupSoftkey()V
    .registers 4

    .prologue
    .line 116
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, importButton:Landroid/widget/Button;
    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 118
    new-instance v2, Lcom/android/task/TaskImportViewActivity$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskImportViewActivity$1;-><init>(Lcom/android/task/TaskImportViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    .local v0, cancelButton:Landroid/widget/Button;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 128
    new-instance v2, Lcom/android/task/TaskImportViewActivity$2;

    invoke-direct {v2, p0}, Lcom/android/task/TaskImportViewActivity$2;-><init>(Lcom/android/task/TaskImportViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0c002c

    .line 76
    const-string v1, "TaskImportViewActivity"

    const-string v2, "======== onConfigurationChanged(Configuration newConfig) ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v1, 0x7f0c002d

    invoke-virtual {p0, v1}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, view:Landroid/view/View;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 81
    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    :goto_28
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    return-void

    .line 84
    :cond_2c
    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/task/TaskImportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string v2, "TaskImportViewActivity"

    const-string v3, "======== onCreate ========"

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "VCAL_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 41
    .local v1, vCalValues:Landroid/content/ContentValues;
    const-string v2, "VCAL_POSITION"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/task/TaskImportViewActivity;->mPosition:I

    .line 43
    if-nez v1, :cond_37

    .line 44
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 47
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->finish()V

    .line 54
    :goto_36
    return-void

    .line 50
    :cond_37
    new-instance v2, Lcom/android/task/vcal/VCalManager;

    invoke-direct {v2, p0}, Lcom/android/task/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    .line 51
    iget-object v2, p0, Lcom/android/task/TaskImportViewActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    invoke-virtual {v2, v1}, Lcom/android/task/vcal/VCalManager;->setVCalValues(Landroid/content/ContentValues;)V

    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskImportViewActivity;->setupLayout()V

    goto :goto_36
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "TaskImportViewActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 66
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "TaskImportViewActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    invoke-virtual {p0}, Lcom/android/task/TaskImportViewActivity;->finish()V

    .line 72
    return-void
.end method
