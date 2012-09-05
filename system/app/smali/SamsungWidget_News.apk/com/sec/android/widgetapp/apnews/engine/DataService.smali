.class public Lcom/sec/android/widgetapp/apnews/engine/DataService;
.super Landroid/app/Service;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;,
        Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;
    }
.end annotation


# static fields
.field private static headListCount:I


# instance fields
.field private mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

.field private mApNewsResult:I

.field private final mBinder:Landroid/os/IBinder;

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

.field private mDataHandler:Landroid/os/Handler;

.field private mDescription:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNowCommandDuplication:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mThreadCount:I

.field private m_bImageDataNull:Z

.field private m_bStopService:Z

.field private mstrTopStoryUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->headListCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 41
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mNowCommandDuplication:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    .line 49
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    .line 51
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bStopService:Z

    .line 80
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bImageDataNull:Z

    .line 162
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsImageDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkCommandDuplication(Ljava/lang/String;)Z
    .registers 13
    .parameter "description"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, cmdlist:[Ljava/lang/Object;
    :try_start_8
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mNowCommandDuplication:Ljava/lang/String;

    if-eqz v8, :cond_35

    if-eqz p1, :cond_35

    .line 271
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mNowCommandDuplication:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 272
    const-string v8, "APNews_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Command Duplication"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_34
    return v6

    .line 277
    :cond_35
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_38
    if-ge v4, v5, :cond_70

    aget-object v2, v0, v4

    .line 278
    .local v2, data:Ljava/lang/Object;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;

    .end local v2           #data:Ljava/lang/Object;
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;->description:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    if-eqz p1, :cond_6d

    .line 279
    const-string v8, "APNews_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Duplication"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_66} :catch_67

    goto :goto_34

    .line 289
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_67
    move-exception v3

    .line 290
    .local v3, e:Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v6, v7

    .line 291
    goto :goto_34

    .line 277
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v0       #arr$:[Ljava/lang/Object;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 284
    :cond_70
    :try_start_70
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    if-eqz p1, :cond_99

    .line 285
    const-string v8, "APNews_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dst=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Duplication"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_98} :catch_67

    goto :goto_34

    :cond_99
    move v6, v7

    .line 293
    goto :goto_34
.end method

.method private getNewsDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 27
    .parameter "dst"
    .parameter "xmlUrl"
    .parameter "msgExtra"
    .parameter "isWidgetAutoRefresh"

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 480
    const-string v19, "APNews_Service"

    const-string v20, "getNewsDataTask start"

    invoke-static/range {v19 .. v20}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v15, 0x0

    .line 483
    .local v15, result:I
    const/4 v5, 0x0

    .line 484
    .local v5, ResponseStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 487
    .local v14, newsData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    const/4 v3, 0x0

    .line 489
    .local v3, APNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-object/from16 v19, v0

    if-eqz v19, :cond_75

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->setHashResData(Ljava/lang/String;I)V

    .line 493
    if-eqz v14, :cond_1ed

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1ed

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getAPNews(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 499
    :goto_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getHashResData(Ljava/lang/String;)I

    move-result v5

    .line 503
    :cond_75
    if-eqz v3, :cond_256

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_256

    .line 505
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_81
    :goto_81
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_201

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 506
    .local v6, data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 507
    .local v17, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 509
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    .line 510
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->UpdateState:I

    .line 511
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    .line 512
    sget-object v19, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsEtagMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_81

    .line 513
    sget-object v19, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsEtagMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;
    :try_end_d5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_26 .. :try_end_d5} :catch_d6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_26 .. :try_end_d5} :catch_28a

    goto :goto_81

    .line 539
    .end local v6           #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v17           #time:Landroid/text/format/Time;
    :catch_d6
    move-exception v8

    .line 540
    .local v8, e1:Landroid/database/sqlite/SQLiteFullException;
    const/4 v15, -0x2

    .line 541
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 547
    .end local v8           #e1:Landroid/database/sqlite/SQLiteFullException;
    :cond_db
    :goto_db
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_ea

    .line 548
    :cond_e3
    const/16 v19, 0x130

    move/from16 v0, v19

    if-eq v5, v0, :cond_ea

    .line 549
    const/4 v15, -0x1

    .line 553
    :cond_ea
    if-nez p3, :cond_f2

    .line 554
    sget v19, Lcom/sec/android/widgetapp/apnews/engine/DataService;->headListCount:I

    add-int/lit8 v19, v19, -0x1

    sput v19, Lcom/sec/android/widgetapp/apnews/engine/DataService;->headListCount:I

    .line 558
    :cond_f2
    if-gez v15, :cond_f8

    .line 559
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    .line 563
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16c

    .line 564
    sget v19, Lcom/sec/android/widgetapp/apnews/engine/DataService;->headListCount:I

    if-eqz v19, :cond_112

    if-eqz p3, :cond_16c

    const-string v19, "GET_NEWS_SELECTED_HEAD"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16c

    .line 565
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 566
    :try_start_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 567
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16b

    if-eqz v13, :cond_16b

    .line 568
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v7, dataBundle:Landroid/os/Bundle;
    const-string v19, "type"

    const-string v21, "News.updated"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v19, "typeDiv"

    const-string v21, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v19, "Updated.result"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const/16 v19, 0x8

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    .line 573
    invoke-virtual {v13, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    .end local v7           #dataBundle:Landroid/os/Bundle;
    :cond_16b
    monitor-exit v20
    :try_end_16c
    .catchall {:try_start_119 .. :try_end_16c} :catchall_291

    .line 583
    .end local v13           #msg:Landroid/os/Message;
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ae

    .line 584
    new-instance v16, Landroid/content/Intent;

    const-string v19, "News.updated"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v16, serviceIntent:Landroid/content/Intent;
    const-string v19, "Updated.result"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    if-eqz p4, :cond_294

    .line 588
    const-string v19, "Complete_News_update"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    :goto_1a7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    .end local v16           #serviceIntent:Landroid/content/Intent;
    :cond_1ae
    if-eqz v3, :cond_1b7

    .line 597
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 598
    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 599
    const/4 v3, 0x0

    .line 602
    :cond_1b7
    const-string v19, "APNews_Service"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getNewsDataTask end - result=>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 608
    return-void

    .line 496
    :cond_1ed
    :try_start_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getAPNews(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_67

    .line 517
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_201
    const/4 v10, 0x0

    .local v10, i:I
    :goto_202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_24b

    .line 519
    const/4 v12, 0x0

    .local v12, j:I
    :goto_20b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_248

    .line 520
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 522
    .local v4, DBdata:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_245

    .line 523
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v0, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 519
    :cond_245
    add-int/lit8 v12, v12, 0x1

    goto :goto_20b

    .line 517
    .end local v4           #DBdata:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_248
    add-int/lit8 v10, v10, 0x1

    goto :goto_202

    .line 528
    .end local v12           #j:I
    :cond_24b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->insertAPNewsRows(Ljava/util/ArrayList;)Z

    .line 531
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->getTotalApNewsCnt()I

    move-result v18

    .line 532
    .local v18, total:I
    if-eqz v3, :cond_db

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_db

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_db

    .line 534
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .restart local v10       #i:I
    :goto_276
    move/from16 v0, v18

    if-ge v10, v0, :cond_db

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->deleteAPNewsData(ILjava/lang/String;)V
    :try_end_287
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1ed .. :try_end_287} :catch_d6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1ed .. :try_end_287} :catch_28a

    .line 534
    add-int/lit8 v10, v10, 0x1

    goto :goto_276

    .line 542
    .end local v10           #i:I
    .end local v18           #total:I
    :catch_28a
    move-exception v9

    .line 543
    .local v9, e2:Landroid/database/sqlite/SQLiteDiskIOException;
    const/4 v15, -0x2

    .line 544
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_db

    .line 576
    .end local v9           #e2:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_291
    move-exception v19

    :try_start_292
    monitor-exit v20
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    throw v19

    .line 590
    .restart local v16       #serviceIntent:Landroid/content/Intent;
    :cond_294
    const-string v19, "Complete_News_update"

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1a7
.end method

.method private getNewsImageDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "dst"
    .parameter "index"
    .parameter "xmlUrl"

    .prologue
    .line 645
    iget v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 647
    const/4 v6, 0x0

    .line 648
    .local v6, result:I
    const/4 v1, 0x0

    .line 650
    .local v1, data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :try_start_8
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v7, p2, p3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    move-result-object v1

    .line 652
    iget-object v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-nez v7, :cond_2b

    iget-object v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    if-eqz v7, :cond_2b

    .line 653
    const-string v7, "data.NewsImageUrl"

    iget-object v8, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    iget-object v8, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    iget-object v9, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    iget-object v10, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getAPNewsImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 657
    :cond_2b
    iget-object v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v7, :cond_c6

    .line 658
    sget-object v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsImageMap:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 659
    sget-object v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsImageMap:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    .line 661
    :cond_45
    const/4 v7, 0x0

    iput v7, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->UpdateState:I

    .line 662
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v7, v1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->insertImageRow(Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Z
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_4d} :catch_ca
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_4d} :catch_d1

    .line 683
    :goto_4d
    if-gez v6, :cond_51

    .line 684
    iput v6, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    .line 688
    :cond_51
    if-nez v6, :cond_62

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v7, "action.widget.news.Updated_image_each"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, broadcast:Landroid/content/Intent;
    const-string v7, "News.Image.updated.index"

    invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 695
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_62
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v7, :cond_95

    if-nez v6, :cond_95

    .line 696
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    monitor-enter v8

    .line 697
    :try_start_6b
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 698
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v7, :cond_94

    if-eqz v5, :cond_94

    .line 699
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v2, dataBundle:Landroid/os/Bundle;
    const-string v7, "type"

    const-string v9, "News.Image.updated"

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v7, "Updated.result"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    const/16 v7, 0x8

    iput v7, v5, Landroid/os/Message;->what:I

    .line 703
    invoke-virtual {v5, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 704
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    .end local v2           #dataBundle:Landroid/os/Bundle;
    :cond_94
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_6b .. :try_end_95} :catchall_d8

    .line 708
    .end local v5           #msg:Landroid/os/Message;
    :cond_95
    const-string v7, "APNews_Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNewsImageDataTask end - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v1, 0x0

    .line 712
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    iget v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 715
    return-void

    .line 666
    :cond_c6
    const/4 v7, 0x1

    :try_start_c7
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bImageDataNull:Z
    :try_end_c9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c7 .. :try_end_c9} :catch_ca
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c7 .. :try_end_c9} :catch_d1

    goto :goto_4d

    .line 674
    :catch_ca
    move-exception v3

    .line 675
    .local v3, e1:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 676
    const/4 v6, -0x2

    .line 681
    goto/16 :goto_4d

    .line 678
    .end local v3           #e1:Landroid/database/sqlite/SQLiteFullException;
    :catch_d1
    move-exception v4

    .line 679
    .local v4, e2:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 680
    const/4 v6, -0x2

    goto/16 :goto_4d

    .line 706
    .end local v4           #e2:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_d8
    move-exception v7

    :try_start_d9
    monitor-exit v8
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v7
.end method

.method private handleCommand(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 113
    const-string v2, "APNEWS_SERVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, msgExtra:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 115
    const-string v2, "Is_Widget_Auto_Refresh"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, isWidgetAutoRefresh:Z
    const-string v2, "GET_NEWS_HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 117
    const-string v2, "APNews_Service"

    const-string v3, "onStart, Service ==> GET_NEWS_HEAD"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsHeadData(Ljava/lang/String;Z)V

    .line 143
    .end local v0           #isWidgetAutoRefresh:Z
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_9c

    .line 145
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    .line 146
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 147
    const-string v2, "APNews_Service"

    const-string v3, "new service started"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_46
    :goto_46
    return-void

    .line 121
    .restart local v0       #isWidgetAutoRefresh:Z
    :cond_47
    const-string v2, "GET_NEWS_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 122
    const-string v2, "APNews_Service"

    const-string v3, "onStart, Service ==> GET_NEWS_IMAGE"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bStopService:Z

    if-nez v2, :cond_27

    .line 126
    const-string v2, "News.Image.updated.index"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlUrl"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsImageData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 130
    :cond_6a
    const-string v2, "GET_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 131
    const-string v2, "APNews_Service"

    const-string v3, "onStart, Service ==> GET_ALL"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsHeadData(Ljava/lang/String;Z)V

    goto :goto_27

    .line 136
    :cond_83
    const-string v2, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 137
    const-string v2, "APNews_Service"

    const-string v3, "onStart, Service ==> GET_NEWS_SELECTED_HEAD"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "xmlUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsData(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_27

    .line 149
    .end local v0           #isWidgetAutoRefresh:Z
    :cond_9c
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-gtz v2, :cond_46

    .line 151
    const-string v2, "APNews_Service"

    const-string v3, "service will be destoryed."

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->stopSelf()V

    goto :goto_46
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "description"
    .parameter "runnable"

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;-><init>()V

    .line 256
    .local v0, command:Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;
    iput-object p1, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;->description:Ljava/lang/String;

    .line 257
    iput-object p2, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;->runnable:Ljava/lang/Runnable;

    .line 258
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 260
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 264
    .end local v0           #command:Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;
    :goto_13
    return-void

    .line 261
    :catch_14
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public getNewsData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "xmlUrl"
    .parameter "msgExtra"
    .parameter "isWidgetAutoRefresh"

    .prologue
    .line 447
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v6, description:Ljava/lang/StringBuffer;
    const-string v0, "GetNewsData"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, dst:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->checkCommandDuplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 455
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v7, v0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 474
    :cond_30
    return-void
.end method

.method public getNewsHeadData(Ljava/lang/String;Z)V
    .registers 8
    .parameter "msgExtra"
    .parameter "isWidgetAutoRefresh"

    .prologue
    .line 299
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsRefresh(Z)V

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-string v3, "APNewsWidget.action.widget.news.progress"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v0, description:Ljava/lang/StringBuffer;
    const-string v3, "getNewsHeadData"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, dst:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->checkCommandDuplication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 330
    :cond_32
    return-void
.end method

.method public getNewsHeadDataTask(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .parameter "dst"
    .parameter "msgExtra"
    .parameter "isWidgetAutoRefresh"

    .prologue
    .line 338
    iget v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 340
    const/4 v8, 0x0

    .line 341
    .local v8, result:I
    const/4 v1, 0x0

    .line 343
    .local v1, ResponseStatus:I
    const/4 v0, 0x0

    .line 345
    .local v0, APHeadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :try_start_9
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    if-eqz v9, :cond_34

    .line 347
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->setResHead(I)V

    .line 349
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v5

    .line 350
    .local v5, head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f3

    .line 351
    iget-object v10, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v9, v9, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->etag:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getAPNewsHeadline(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 355
    :goto_2e
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getResHead()I

    move-result v1

    .line 359
    .end local v5           #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_34
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5b

    .line 360
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->deleteAPNewsHeadData()V

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    .line 362
    .local v2, data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    sget-object v9, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mstrHeadLineEtag:Ljava/lang/String;

    iput-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->etag:Ljava/lang/String;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_55} :catch_56
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_55} :catch_103

    goto :goto_45

    .line 367
    .end local v2           #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    .end local v6           #i$:Ljava/util/Iterator;
    :catch_56
    move-exception v4

    .line 368
    .local v4, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 369
    const/4 v8, -0x2

    .line 375
    .end local v4           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_5b
    :goto_5b
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_68

    .line 376
    :cond_63
    const/16 v9, 0x130

    if-eq v1, v9, :cond_68

    .line 377
    const/4 v8, -0x1

    .line 381
    :cond_68
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    if-eqz v9, :cond_8d

    .line 382
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v5

    .line 383
    .restart local v5       #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10a

    .line 384
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v9, v9, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    .line 390
    :goto_83
    const/16 v9, 0x130

    if-ne v1, v9, :cond_8d

    .line 391
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    .end local v5           #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_8d
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_ab

    .line 399
    if-eqz p2, :cond_10f

    .line 400
    const-string v9, "GET_TOP_STORY"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 401
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    invoke-virtual {p0, v9, p2, p3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 413
    :cond_a4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 415
    const/4 v0, 0x0

    .line 419
    :cond_ab
    if-gez v8, :cond_e7

    .line 420
    iput v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    .line 423
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v9, :cond_e7

    .line 424
    iget-object v10, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    monitor-enter v10

    .line 425
    :try_start_b6
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 426
    .local v7, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v9, :cond_e6

    if-eqz v7, :cond_e6

    .line 427
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v3, dataBundle:Landroid/os/Bundle;
    const-string v9, "type"

    const-string v11, "News.updated"

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v9, "typeDiv"

    const-string v11, "1"

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v9, "Updated.result"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const/16 v9, 0x8

    iput v9, v7, Landroid/os/Message;->what:I

    .line 432
    invoke-virtual {v7, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    .end local v3           #dataBundle:Landroid/os/Bundle;
    :cond_e6
    monitor-exit v10
    :try_end_e7
    .catchall {:try_start_b6 .. :try_end_e7} :catchall_12b

    .line 439
    .end local v7           #msg:Landroid/os/Message;
    :cond_e7
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    iget v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 442
    return-void

    .line 353
    .restart local v5       #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_f3
    :try_start_f3
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getAPNewsHeadline(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2e

    .line 364
    .end local v5           #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_fc
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-virtual {v9, v0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->insertAPNewsHeadLines(Ljava/util/ArrayList;)Z
    :try_end_101
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f3 .. :try_end_101} :catch_56
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f3 .. :try_end_101} :catch_103

    goto/16 :goto_5b

    .line 370
    .end local v6           #i$:Ljava/util/Iterator;
    :catch_103
    move-exception v4

    .line 371
    .local v4, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 372
    const/4 v8, -0x2

    goto/16 :goto_5b

    .line 386
    .end local v4           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v5       #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_10a
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mstrTopStoryUrl:Ljava/lang/String;

    goto/16 :goto_83

    .line 406
    .end local v5           #head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_10f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sput v9, Lcom/sec/android/widgetapp/apnews/engine/DataService;->headListCount:I

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_119
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    .line 409
    .restart local v2       #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {p0, v9, p2, p3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsData(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_119

    .line 435
    .end local v2           #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_12b
    move-exception v9

    :try_start_12c
    monitor-exit v10
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw v9
.end method

.method public getNewsImageData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "index"
    .parameter "xmlUrl"

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    .local v0, description:Ljava/lang/StringBuffer;
    const-string v2, "GetNewsImageData"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, dst:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->checkCommandDuplication(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 641
    :cond_34
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    .line 71
    invoke-static {p0}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mAPNewsHandler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    .line 75
    const-string v0, "APNews_Service"

    const-string v1, "onCreate, Service"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bStopService:Z

    .line 84
    const-string v0, "APNews_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, Service m_bStopService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bStopService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    .line 88
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->setHandler(Landroid/os/Handler;)V

    .line 90
    :cond_28
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2e

    .line 91
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    .line 92
    :cond_2e
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 96
    const-string v1, "APNews_Service"

    const-string v2, "onStartCommand, Service"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 100
    .local v0, ret:I
    if-nez p1, :cond_f

    .line 101
    const/4 v0, 0x2

    .line 109
    .end local v0           #ret:I
    :cond_e
    :goto_e
    return v0

    .line 103
    .restart local v0       #ret:I
    :cond_f
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->handleCommand(Landroid/content/Intent;)V

    .line 105
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 106
    const-string v1, "APNews_Service"

    const-string v2, "onStartCommand, START_STICKY"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 167
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 169
    iput v7, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    .line 170
    :goto_9
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-gtz v3, :cond_15

    iget v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    if-lez v3, :cond_69

    .line 176
    :cond_15
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-lez v3, :cond_4a

    iget v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4a

    .line 178
    :try_start_22
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;

    .line 179
    .local v0, command:Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;
    iget-object v3, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;->description:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mNowCommandDuplication:Ljava/lang/String;

    .line 180
    iget-object v3, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_57

    .line 185
    .end local v0           #command:Lcom/sec/android/widgetapp/apnews/engine/DataService$Command;
    :goto_33
    iput-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mNowCommandDuplication:Ljava/lang/String;

    .line 186
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v4

    .line 187
    :try_start_38
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-nez v3, :cond_49

    iget v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThreadCount:I
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_61

    if-nez v3, :cond_49

    .line 189
    const-wide/16 v5, 0x64

    :try_start_46
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_5c

    .line 195
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_61

    .line 197
    :cond_4a
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mCommands:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v4

    .line 199
    const-wide/16 v5, 0xa

    :try_start_4f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_54
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_64

    .line 204
    :goto_52
    :try_start_52
    monitor-exit v4

    goto :goto_9

    :catchall_54
    move-exception v3

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_54

    throw v3

    .line 182
    :catch_57
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 190
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5c
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_49

    .line 195
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_61
    move-exception v3

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v3

    .line 200
    :catch_64
    move-exception v1

    .line 202
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_65
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_54

    goto :goto_52

    .line 225
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_69
    new-instance v2, Landroid/content/Intent;

    const-string v3, "Updated.result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, serviceIntent:Landroid/content/Intent;
    const-string v3, "APNews.updated.finish"

    iget v4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mApNewsResult:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v3, :cond_a7

    .line 229
    const-string v3, "handlerNull"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    :goto_80
    const-string v3, "imageDataNull"

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->m_bImageDataNull:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    invoke-static {v7}, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateWeatherRefresh(Z)V

    .line 238
    invoke-static {v7}, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateFinanceRefresh(Z)V

    .line 239
    invoke-static {v7}, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsRefresh(Z)V

    .line 243
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    if-eqz v3, :cond_a1

    .line 244
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDescription:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 248
    :cond_a1
    iput-object v8, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mThread:Ljava/lang/Thread;

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->stopSelf()V

    .line 251
    return-void

    .line 231
    :cond_a7
    const-string v3, "handlerNull"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_80
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 58
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 59
    :try_start_7
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    .line 60
    monitor-exit v1

    .line 64
    :goto_a
    return-void

    .line 60
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0

    .line 62
    :cond_e
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService;->mDataHandler:Landroid/os/Handler;

    goto :goto_a
.end method
