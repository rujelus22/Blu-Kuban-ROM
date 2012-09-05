.class Lcom/android/task/TaskImportListActivity$VCSEventAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskImportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskImportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCSEventAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/task/TaskImportListActivity;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskImportListActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    .line 233
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 234
    return-void
.end method

.method private bindDDay(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V
    .registers 16
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 364
    iget-object v9, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;
    invoke-static {v9}, Lcom/android/task/TaskImportListActivity;->access$200(Lcom/android/task/TaskImportListActivity;)Lcom/android/task/vcal/VCalManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/task/vcal/VCalManager;->getVTodoDue(I)Ljava/lang/Long;

    move-result-object v3

    .line 365
    .local v3, dueDate:Ljava/lang/Long;
    if-nez v3, :cond_d

    .line 385
    :goto_c
    return-void

    .line 369
    :cond_d
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 370
    .local v7, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 371
    .local v5, now:J
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 372
    iget-wide v9, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v8

    .line 373
    .local v8, today:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 374
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v9, v10, v11, v12}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v4

    .line 376
    .local v4, dueDay:I
    if-lt v4, v8, :cond_62

    .line 377
    sub-int v1, v4, v8

    .line 378
    .local v1, dday:I
    iget-object v9, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    invoke-virtual {v9}, Lcom/android/task/TaskImportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, dMinusString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, ddayStr:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dDay:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v9, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dDay:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 383
    .end local v0           #dMinusString:Ljava/lang/String;
    .end local v1           #dday:I
    .end local v2           #ddayStr:Ljava/lang/String;
    :cond_62
    iget-object v9, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dDay:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c
.end method

.method private bindDueDate(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V
    .registers 8
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;
    invoke-static {v2}, Lcom/android/task/TaskImportListActivity;->access$200(Lcom/android/task/TaskImportListActivity;)Lcom/android/task/vcal/VCalManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/task/vcal/VCalManager;->getVTodoDue(I)Ljava/lang/Long;

    move-result-object v0

    .line 330
    .local v0, dueDate:Ljava/lang/Long;
    if-nez v0, :cond_20

    .line 331
    iget-object v2, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dueDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :goto_1f
    return-void

    .line 333
    :cond_20
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 334
    .local v1, t:Landroid/text/format/Time;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 335
    iget-object v2, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dueDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v4, v3}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method private bindPriority(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V
    .registers 6
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v1, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;
    invoke-static {v1}, Lcom/android/task/TaskImportListActivity;->access$200(Lcom/android/task/TaskImportListActivity;)Lcom/android/task/vcal/VCalManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/task/vcal/VCalManager;->getVTodoPriority(I)I

    move-result v0

    .line 342
    .local v0, priority:I
    packed-switch v0, :pswitch_data_32

    .line 357
    :goto_e
    return-void

    .line 344
    :pswitch_f
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_e

    .line 348
    :pswitch_1d
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 351
    :pswitch_24
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_e

    .line 342
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method

.method private bindReminder(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V
    .registers 5
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 360
    iget-object v0, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    return-void
.end method

.method private bindSubject(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V
    .registers 6
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;
    invoke-static {v1}, Lcom/android/task/TaskImportListActivity;->access$200(Lcom/android/task/TaskImportListActivity;)Lcom/android/task/vcal/VCalManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/task/vcal/VCalManager;->getVTodoSummary(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, subject:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 322
    :cond_18
    iget-object v1, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_25
    iget-object v1, p1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->subject:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;I)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;

    .line 300
    .local v0, holder:Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;
    iget-object v1, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->accountColorBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 303
    invoke-direct {p0, v0, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindSubject(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V

    .line 306
    invoke-direct {p0, v0, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindDueDate(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V

    .line 309
    invoke-direct {p0, v0, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindPriority(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V

    .line 312
    invoke-direct {p0, v0, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindReminder(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V

    .line 315
    invoke-direct {p0, v0, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindDDay(Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;I)V

    .line 316
    return-void
.end method

.method private newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;-><init>(Lcom/android/task/TaskImportListActivity$VCSEventAdapter;)V

    .line 284
    .local v0, holder:Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->accountColorBar:Landroid/view/View;

    .line 285
    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->subject:Landroid/widget/TextView;

    .line 286
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dueDate:Landroid/widget/TextView;

    .line 287
    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    .line 288
    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    .line 289
    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dDay:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/task/TaskImportListActivity;->access$000(Lcom/android/task/TaskImportListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/task/TaskImportListActivity;->access$000(Lcom/android/task/TaskImportListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0c0009

    .line 251
    if-nez p2, :cond_4d

    .line 252
    iget-object v5, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p3}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 258
    .local v4, v:Landroid/view/View;
    :goto_b
    iget-object v5, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 259
    .local v3, scale:F
    const/high16 v5, 0x4110

    div-float v0, v5, v3

    .line 260
    .local v0, fdip:F
    iget-object v5, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 261
    .local v1, fhigh:F
    iget-object v5, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 264
    .local v2, fwidth:F
    if-nez p1, :cond_4f

    .line 268
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v2

    sub-float v8, v1, v0

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :goto_47
    iget-object v5, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v5, p1}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    .line 277
    return-object v4

    .line 254
    .end local v0           #fdip:F
    .end local v1           #fhigh:F
    .end local v2           #fwidth:F
    .end local v3           #scale:F
    .end local v4           #v:Landroid/view/View;
    :cond_4d
    move-object v4, p2

    .restart local v4       #v:Landroid/view/View;
    goto :goto_b

    .line 271
    .restart local v0       #fdip:F
    .restart local v1       #fhigh:F
    .restart local v2       #fwidth:F
    .restart local v3       #scale:F
    :cond_4f
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47
.end method
