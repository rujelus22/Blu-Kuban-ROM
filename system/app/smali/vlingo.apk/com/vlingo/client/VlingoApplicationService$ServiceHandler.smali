.class final Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;
.super Landroid/os/Handler;
.source "VlingoApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/VlingoApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/VlingoApplicationService;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/VlingoApplicationService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->this$0:Lcom/vlingo/client/VlingoApplicationService;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method

.method private processIntent(Landroid/content/Intent;I)V
    .registers 25
    .parameter "intent"
    .parameter "intentId"

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, action:Ljava/lang/String;
    const-string v20, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9d

    .line 94
    const-string v20, "com.vlingo.client.app.extra.STATE"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 97
    .local v19, state:I
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_26

    if-nez v19, :cond_30

    :cond_26
    invoke-static {}, Lcom/vlingo/client/VlingoApplicationService;->access$000()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    .line 162
    .end local v19           #state:I
    :cond_30
    :goto_30
    return-void

    .line 105
    .restart local v19       #state:I
    :cond_31
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8f

    const/16 v17, 0x1

    .line 106
    .local v17, newState:Z
    :goto_3b
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3c
    const/16 v20, 0x1e

    move/from16 v0, v20

    if-ge v14, v0, :cond_30

    .line 107
    const-wide/16 v20, 0x32

    :try_start_44
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_92

    .line 108
    :goto_47
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_30

    .line 113
    #calls: Lcom/vlingo/client/VlingoApplicationService;->isAppInForegroundInternal()Z
    invoke-static {}, Lcom/vlingo/client/VlingoApplicationService;->access$100()Z

    move-result v12

    .line 114
    .local v12, currentState:Z
    move/from16 v0, v17

    if-ne v12, v0, :cond_9a

    .line 115
    invoke-static/range {v19 .. v19}, Lcom/vlingo/client/VlingoApplicationService;->access$002(I)I

    .line 116
    new-instance v6, Landroid/content/Intent;

    const-string v20, "com.vlingo.client.app.action.APPLICATION_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, broadcastIntent:Landroid/content/Intent;
    const-string v21, "com.vlingo.client.app.extra.STATE"

    if-eqz v17, :cond_97

    const/16 v20, 0x1

    :goto_6d
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->this$0:Lcom/vlingo/client/VlingoApplicationService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/vlingo/client/VlingoApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    if-nez v12, :cond_30

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->this$0:Lcom/vlingo/client/VlingoApplicationService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplicationService;->stopSelf(I)V

    goto :goto_30

    .line 105
    .end local v6           #broadcastIntent:Landroid/content/Intent;
    .end local v12           #currentState:Z
    .end local v14           #i:I
    .end local v17           #newState:Z
    :cond_8f
    const/16 v17, 0x0

    goto :goto_3b

    .line 107
    .restart local v14       #i:I
    .restart local v17       #newState:Z
    :catch_92
    move-exception v13

    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 117
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #broadcastIntent:Landroid/content/Intent;
    .restart local v12       #currentState:Z
    :cond_97
    const/16 v20, 0x0

    goto :goto_6d

    .line 106
    .end local v6           #broadcastIntent:Landroid/content/Intent;
    :cond_9a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3c

    .line 129
    .end local v12           #currentState:Z
    .end local v14           #i:I
    .end local v17           #newState:Z
    .end local v19           #state:I
    :cond_9d
    const-string v20, "com.vlingo.client.app.action.CLOSE_APPLICATION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_30

    .line 133
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v11

    .line 134
    .local v11, context:Landroid/content/Context;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v4, activitiesToClose:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    const-string v20, "activity"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 136
    .local v5, am:Landroid/app/ActivityManager;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 137
    .local v16, listOfRti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v16, :cond_fd

    .line 138
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_c8
    :goto_c8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_fd

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    .local v18, rti:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, className:Ljava/lang/String;
    const-string v20, "com.vlingo"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c8

    .line 142
    :try_start_e8
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e8 .. :try_end_f1} :catch_f2

    goto :goto_c8

    .line 144
    :catch_f2
    move-exception v10

    .line 145
    .local v10, cnfe:Ljava/lang/ClassNotFoundException;
    const-string v20, "VLG_EXCEPTION"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 154
    .end local v8           #className:Ljava/lang/String;
    .end local v10           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v18           #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_fd
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_101
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_30

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 155
    .local v7, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v11, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v9, closeIntent:Landroid/content/Intent;
    const/high16 v20, 0x2400

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v20, "com.vlingo.client.ui.extra.FINISH_ACTIVITY"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {v11, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_101
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 84
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 87
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->processIntent(Landroid/content/Intent;I)V

    .line 89
    :cond_11
    return-void
.end method
