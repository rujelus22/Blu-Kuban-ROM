.class Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCountHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    .line 284
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 285
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 20
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, count:I
    if-eqz p3, :cond_13

    .line 291
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 292
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 294
    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$000(Lcom/android/calendar/AgendaExpandableListAdapter;)I

    move-result v10

    .local v10, startDay:I
    move-object/from16 v8, p2

    .line 297
    check-cast v8, Landroid/text/format/Time;

    .line 299
    .local v8, goToTime:Landroid/text/format/Time;
    if-nez v3, :cond_252

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v14, 0x2

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v13, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$100(Lcom/android/calendar/AgendaExpandableListAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaExpandableListView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_cf

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v13

    if-eqz v13, :cond_9a

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v13, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$402(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    .line 313
    :cond_9a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaDeleteActivity;->updateEmtpy(Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f00c9

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    :cond_ce
    :goto_ce
    return-void

    .line 329
    :cond_cf
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaActivity;

    if-eqz v13, :cond_231

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v13

    if-eqz v13, :cond_164

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    .local v1, a:Landroid/widget/TextView;
    const v13, 0x7f0a0106

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f00c9

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0076

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ce

    .line 341
    .end local v1           #a:Landroid/widget/TextView;
    :cond_164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 342
    .local v11, startMillis:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    .restart local v1       #a:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "date_format"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, dateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, format:Ljava/lang/String;
    if-eqz v4, :cond_1bb

    .line 350
    const-string v13, "MM-dd-yyyy"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_215

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 356
    :cond_1bb
    :goto_1bb
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0a0050

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, dateViewText:Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ce

    .line 352
    .end local v5           #dateViewText:Ljava/lang/String;
    :cond_215
    const-string v13, "yyyy-MM-dd"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1bb

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1bb

    .line 362
    .end local v1           #a:Landroid/widget/TextView;
    .end local v4           #dateFormat:Ljava/lang/String;
    .end local v7           #format:Ljava/lang/String;
    .end local v11           #startMillis:J
    :cond_231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_ce

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ce

    .line 369
    :cond_252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaExpandableListView;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_2d0

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    const/16 v14, 0x3f7

    invoke-virtual {v13, v14}, Landroid/app/Activity;->showDialog(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaDeleteActivity;->updateEmtpy(Z)V

    .line 393
    :cond_299
    :goto_299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, action:Ljava/lang/String;
    move v9, v10

    .line 396
    .local v9, start:I
    if-eqz v2, :cond_2b4

    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c0

    :cond_2b4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_2e9

    .line 398
    :cond_2c0
    const v9, 0x24dc87

    .line 399
    const v6, 0x259d23

    .line 416
    .local v6, endDay:I
    :cond_2c6
    :goto_2c6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v14, 0x2

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(IILandroid/text/format/Time;I)Z
    invoke-static {v13, v9, v6, v8, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$900(Lcom/android/calendar/AgendaExpandableListAdapter;IILandroid/text/format/Time;I)Z

    goto/16 :goto_ce

    .line 380
    .end local v2           #action:Ljava/lang/String;
    .end local v6           #endDay:I
    .end local v9           #start:I
    :cond_2d0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaActivity;

    if-nez v13, :cond_299

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_299

    goto :goto_299

    .line 400
    .restart local v2       #action:Ljava/lang/String;
    .restart local v9       #start:I
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_2fc

    .line 401
    const v9, 0x24dc87

    .line 402
    const v6, 0x259d23

    .restart local v6       #endDay:I
    goto :goto_2c6

    .line 405
    .end local v6           #endDay:I
    :cond_2fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_31d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mForced:Z
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$700(Lcom/android/calendar/AgendaExpandableListAdapter;)Z

    move-result v13

    if-eqz v13, :cond_31d

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->requery()V
    invoke-static {v13}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$800(Lcom/android/calendar/AgendaExpandableListAdapter;)V

    goto/16 :goto_ce

    .line 410
    :cond_31d
    add-int/lit8 v6, v9, 0x1e

    .line 411
    .restart local v6       #endDay:I
    const v13, 0x259d23

    if-le v6, v13, :cond_2c6

    .line 412
    const v6, 0x259d23

    goto :goto_2c6
.end method
