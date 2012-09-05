.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 14
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_b4

    .line 303
    sget v7, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-gez v7, :cond_15

    .line 304
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Failed to connect to AccessibilityService, try restarting Monkey"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 344
    :goto_14
    return-object v7

    .line 306
    :cond_15
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .line 307
    .local v4, lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v4, :cond_29

    .line 308
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "No accessibility event has occured yet"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14

    .line 310
    :cond_29
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 311
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    .local v3, idType:Ljava/lang/String;
    const-string v7, "viewid"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 317
    const/4 v7, 0x2

    :try_start_3b
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$300(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 318
    .local v5, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 319
    .local v6, viewQuery:Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_54
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_3b .. :try_end_54} :catch_5f

    move-result-object v0

    .line 334
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_55
    if-nez v5, :cond_9e

    .line 335
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Node with given ID does not exist"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14

    .line 320
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :catch_5f
    move-exception v1

    .line 321
    .local v1, e:Lcom/android/commands/monkey/MonkeyViewException;
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14

    .line 323
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyViewException;
    :cond_6a
    const-string v7, "accessibilityids"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 325
    const/4 v7, 0x2

    :try_start_73
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v8}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 326
    .restart local v5       #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .restart local v6       #viewQuery:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_93} :catch_95

    move-result-object v0

    .restart local v0       #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_55

    .line 328
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :catch_95
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_14

    .line 332
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_9a
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_14

    .line 337
    .restart local v0       #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6       #viewQuery:Ljava/lang/String;
    :cond_9e
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$500()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    .line 338
    .local v2, getter:Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    if-eqz v2, :cond_b0

    .line 339
    invoke-interface {v2, v5, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v7

    goto/16 :goto_14

    .line 341
    :cond_b0
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_14

    .line 344
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #getter:Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v3           #idType:Ljava/lang/String;
    .end local v4           #lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :cond_b4
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_14
.end method
