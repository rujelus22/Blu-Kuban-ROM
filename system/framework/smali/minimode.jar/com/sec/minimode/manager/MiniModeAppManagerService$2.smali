.class Lcom/sec/minimode/manager/MiniModeAppManagerService$2;
.super Landroid/os/Handler;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .parameter "msg"

    .prologue
    .line 483
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_396

    .line 636
    :pswitch_9
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 638
    :cond_c
    :goto_c
    return-void

    .line 485
    :pswitch_d
    new-instance v20, Landroid/content/Intent;

    const-string v19, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    .line 487
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$400(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v15

    .line 488
    .local v15, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v15, :cond_3e

    .line 489
    const-string v19, "MiniModeAppManager"

    const-string v20, "can not start MiniMode app : undefinded policy."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 492
    :cond_3e
    const-string v19, "window.pos.x"

    invoke-virtual {v15}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v19, "window.pos.y"

    invoke-virtual {v15}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_c

    .line 498
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :pswitch_74
    new-instance v20, Landroid/content/Intent;

    const-string v19, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    .line 499
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v19, "window.pos.x"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v19, "window.pos.y"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_c

    .line 505
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v19, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_c

    .line 510
    :pswitch_ec
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/util/Pair;

    .line 511
    .local v14, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    iget-object v13, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/content/ComponentName;

    .line 512
    .local v13, name:Landroid/content/ComponentName;
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 513
    .local v7, cb:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpMap(Ljava/util/Map;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v13}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-interface {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_145

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-interface {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpMap(Ljava/util/Map;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->isInstalledMiniApp(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    goto/16 :goto_c

    .line 533
    .end local v7           #cb:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v13           #name:Landroid/content/ComponentName;
    .end local v14           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    :pswitch_1af
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 534
    .local v6, callback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-interface {v6}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 536
    .restart local v13       #name:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->isInstalledMiniApp(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_20c

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 542
    :cond_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_c

    .line 546
    .end local v6           #callback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v13           #name:Landroid/content/ComponentName;
    :pswitch_21d
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/content/ComponentName;

    .line 547
    .restart local v13       #name:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25d

    const/4 v10, 0x1

    .line 549
    .local v10, hasFocus:Z
    :goto_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 551
    .local v4, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_241
    if-ge v11, v4, :cond_25f

    .line 553
    :try_start_243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v10}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->focusChanged(Landroid/content/ComponentName;Z)V
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_243 .. :try_end_25a} :catch_393

    .line 551
    :goto_25a
    add-int/lit8 v11, v11, 0x1

    goto :goto_241

    .line 547
    .end local v4           #N:I
    .end local v10           #hasFocus:Z
    .end local v11           #i:I
    :cond_25d
    const/4 v10, 0x0

    goto :goto_232

    .line 560
    .restart local v4       #N:I
    .restart local v10       #hasFocus:Z
    .restart local v11       #i:I
    :cond_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 565
    .end local v4           #N:I
    .end local v10           #hasFocus:Z
    .end local v11           #i:I
    .end local v13           #name:Landroid/content/ComponentName;
    :pswitch_26e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    .line 566
    .local v8, cd:Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientPolicyMode()I

    move-result v20

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    invoke-static/range {v19 .. v20}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$400(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v15

    .line 567
    .restart local v15       #policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v15, :cond_28d

    .line 568
    const-string v19, "MiniModeAppManager"

    const-string v20, "can not start MiniMode app : undefinded policy."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 572
    :cond_28d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->setLastPosition(IIII)V

    .line 574
    invoke-virtual {v8}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 575
    .local v9, cn:Landroid/content/ComponentName;
    new-instance v19, Landroid/graphics/Rect;

    invoke-virtual {v15}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v9, v0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->addPosion(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 585
    .end local v8           #cd:Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v15           #policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :pswitch_2bc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/ComponentName;

    .line 586
    .local v16, targetApp:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 587
    .local v17, x:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 590
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 592
    .restart local v4       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2df
    if-ge v11, v4, :cond_318

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 594
    .restart local v9       #cn:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_327

    .line 596
    :try_start_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->movementRequested(Landroid/content/ComponentName;II)V
    :try_end_318
    .catch Landroid/os/RemoteException; {:try_start_2fb .. :try_end_318} :catch_391

    .line 605
    .end local v9           #cn:Landroid/content/ComponentName;
    :cond_318
    :goto_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 592
    .restart local v9       #cn:Landroid/content/ComponentName;
    :cond_327
    add-int/lit8 v11, v11, 0x1

    goto :goto_2df

    .line 610
    .end local v4           #N:I
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v11           #i:I
    .end local v16           #targetApp:Landroid/content/ComponentName;
    .end local v17           #x:I
    .end local v18           #y:I
    :pswitch_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 611
    .restart local v4       #N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_35b

    .line 612
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_341
    if-ge v11, v4, :cond_37e

    .line 614
    :try_start_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->closeAllRequested()V
    :try_end_358
    .catch Landroid/os/RemoteException; {:try_start_343 .. :try_end_358} :catch_38f

    .line 612
    :goto_358
    add-int/lit8 v11, v11, 0x1

    goto :goto_341

    .line 621
    .end local v11           #i:I
    :cond_35b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    .line 622
    .local v5, RequestingApp:Landroid/content/ComponentName;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_362
    if-ge v11, v4, :cond_37e

    .line 624
    :try_start_364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->closeRequestedFrom(Landroid/content/ComponentName;)V
    :try_end_37b
    .catch Landroid/os/RemoteException; {:try_start_364 .. :try_end_37b} :catch_38d

    .line 622
    :goto_37b
    add-int/lit8 v11, v11, 0x1

    goto :goto_362

    .line 631
    .end local v5           #RequestingApp:Landroid/content/ComponentName;
    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v19 .. v19}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 625
    .restart local v5       #RequestingApp:Landroid/content/ComponentName;
    :catch_38d
    move-exception v19

    goto :goto_37b

    .line 615
    .end local v5           #RequestingApp:Landroid/content/ComponentName;
    :catch_38f
    move-exception v19

    goto :goto_358

    .line 597
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v16       #targetApp:Landroid/content/ComponentName;
    .restart local v17       #x:I
    .restart local v18       #y:I
    :catch_391
    move-exception v19

    goto :goto_318

    .line 554
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v16           #targetApp:Landroid/content/ComponentName;
    .end local v17           #x:I
    .end local v18           #y:I
    .restart local v10       #hasFocus:Z
    .restart local v13       #name:Landroid/content/ComponentName;
    :catch_393
    move-exception v19

    goto/16 :goto_25a

    .line 483
    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_d
        :pswitch_74
        :pswitch_be
        :pswitch_ec
        :pswitch_1af
        :pswitch_21d
        :pswitch_9
        :pswitch_9
        :pswitch_26e
        :pswitch_2bc
        :pswitch_32a
    .end packed-switch
.end method
