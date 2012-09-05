.class Lcom/sprint/w/installer/service/UpdateShortcutsService$1;
.super Ljava/lang/Object;
.source "UpdateShortcutsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/service/UpdateShortcutsService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

.field final synthetic val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$scName:Ljava/lang/String;

.field final synthetic val$startId:I

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/service/UpdateShortcutsService;Lcom/sprint/w/installer/service/SprintIDServiceConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    iput-object p2, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    iput-object p3, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$uri:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$scName:Ljava/lang/String;

    iput p6, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 52
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 54
    .local v20, obj:Ljava/lang/Object;
    :try_start_5
    monitor-enter v20
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_6} :catch_cd

    .line 56
    const-wide/16 v21, 0x3e8

    :try_start_8
    invoke-virtual/range {v20 .. v22}, Ljava/lang/Object;->wait(J)V

    .line 57
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_ca

    .line 62
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    const-string v22, "Connected to the ID Service"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v16

    .line 65
    .local v16, idService:Lcom/sprint/id/ISprintIDService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 67
    const/4 v10, 0x0

    .line 68
    .local v10, fullApp:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 69
    .local v3, appStub:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 72
    .local v4, cnt:I
    const/16 v18, 0x0

    .line 73
    .local v18, newCV:Landroid/content/ContentValues;
    :try_start_3d
    invoke-interface/range {v16 .. v16}, Lcom/sprint/id/ISprintIDService;->getCurrentDesktopContainerItems()Ljava/util/List;

    move-result-object v9

    .line 74
    .local v9, favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_22a

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    move-object/from16 v19, v18

    .end local v18           #newCV:Landroid/content/ContentValues;
    .local v19, newCV:Landroid/content/ContentValues;
    :goto_47
    :try_start_47
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_130

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 75
    .local v6, cv:Landroid/content/ContentValues;
    const-string v21, "intent"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2d4

    const-string v21, "intent"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2d4

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    const-string v21, "intent"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$uri:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d3

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    const-string v22, "Found the full app"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Values: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 80
    move-object v10, v6

    .line 81
    new-instance v18, Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_c6} :catch_2cc

    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    :goto_c6
    move-object/from16 v19, v18

    .line 89
    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    goto/16 :goto_47

    .line 57
    .end local v3           #appStub:Landroid/content/ContentValues;
    .end local v4           #cnt:I
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10           #fullApp:Landroid/content/ContentValues;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #idService:Lcom/sprint/id/ISprintIDService;
    .end local v19           #newCV:Landroid/content/ContentValues;
    :catchall_ca
    move-exception v21

    :try_start_cb
    monitor-exit v20
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v21
    :try_end_cd
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_cd} :catch_cd

    .line 58
    :catch_cd
    move-exception v8

    .line 60
    .local v8, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 83
    .end local v8           #e1:Ljava/lang/InterruptedException;
    .restart local v3       #appStub:Landroid/content/ContentValues;
    .restart local v4       #cnt:I
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v9       #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v10       #fullApp:Landroid/content/ContentValues;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v16       #idService:Lcom/sprint/id/ISprintIDService;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$uri:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "component"

    #calls: Lcom/sprint/w/installer/service/UpdateShortcutsService;->getIntentKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v23}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->access$000(Lcom/sprint/w/installer/service/UpdateShortcutsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, comp:Ljava/lang/String;
    if-eqz v5, :cond_2d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2d4

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    const-string v22, "Found the stub app"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Values: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 87
    move-object v3, v6

    move-object/from16 v18, v19

    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    goto :goto_c6

    .line 96
    .end local v5           #comp:Ljava/lang/String;
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :cond_130
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_13c

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_2d1

    :cond_13c
    if-eqz v3, :cond_2d1

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    const-string v22, "Updating the current home screen"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 98
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v17, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    if-eqz v10, :cond_1d3

    .line 101
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v21, "cellX"

    const-string v22, "cellX"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v21, "cellY"

    const-string v22, "cellY"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v21, "screen"

    const-string v22, "screen"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_1ad} :catch_2cc

    move-object/from16 v18, v19

    .line 114
    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    :goto_1af
    const/4 v11, 0x0

    .line 115
    .local v11, i:I
    :try_start_1b0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v15, v0, [I

    .line 116
    .local v15, idArray:[I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    :goto_1bd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_254

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 117
    .local v14, id:Ljava/lang/Integer;
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aput v21, v15, v12
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1d1} :catch_22a

    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_1bd

    .line 106
    .end local v12           #i:I
    .end local v14           #id:Ljava/lang/Integer;
    .end local v15           #idArray:[I
    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :cond_1d3
    :try_start_1d3
    new-instance v18, Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_1da
    .catch Landroid/os/RemoteException; {:try_start_1d3 .. :try_end_1da} :catch_2cc

    .line 107
    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    :try_start_1da
    const-string v21, "intent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$uri:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v22, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$scName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_24d

    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :goto_1fd
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v21, "itemType"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v21, "iconPackage"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 111
    const-string v21, "iconResource"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_229
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_229} :catch_22a

    goto :goto_1af

    .line 137
    .end local v9           #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_22a
    move-exception v7

    .line 138
    .local v7, e:Landroid/os/RemoteException;
    :goto_22b
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$startId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->stopSelf(I)V

    .line 143
    return-void

    .line 108
    .restart local v9       #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_24d
    :try_start_24d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$scName:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_1fd

    .line 120
    .restart local v12       #i:I
    .restart local v15       #idArray:[I
    :cond_254
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sprint/id/ISprintIDService;->deleteFavoritesByID([I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "newCV Values: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 124
    invoke-interface/range {v16 .. v16}, Lcom/sprint/id/ISprintIDService;->notifyFavoritesChanges()V

    .line 128
    .end local v12           #i:I
    .end local v15           #idArray:[I
    .end local v17           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_289
    if-eqz v18, :cond_2af

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    const-string v22, "intent"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    #calls: Lcom/sprint/w/installer/service/UpdateShortcutsService;->updateIDFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v24}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->access$100(Lcom/sprint/w/installer/service/UpdateShortcutsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22e

    .line 134
    :cond_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->this$0:Lcom/sprint/w/installer/service/UpdateShortcutsService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$uri:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$scName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    #calls: Lcom/sprint/w/installer/service/UpdateShortcutsService;->updateIDFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v21 .. v24}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->access$100(Lcom/sprint/w/installer/service/UpdateShortcutsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ca
    .catch Landroid/os/RemoteException; {:try_start_24d .. :try_end_2ca} :catch_22a

    goto/16 :goto_22e

    .line 137
    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :catch_2cc
    move-exception v7

    move-object/from16 v18, v19

    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    goto/16 :goto_22b

    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :cond_2d1
    move-object/from16 v18, v19

    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    goto :goto_289

    .end local v18           #newCV:Landroid/content/ContentValues;
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v19       #newCV:Landroid/content/ContentValues;
    :cond_2d4
    move-object/from16 v18, v19

    .end local v19           #newCV:Landroid/content/ContentValues;
    .restart local v18       #newCV:Landroid/content/ContentValues;
    goto/16 :goto_c6
.end method
