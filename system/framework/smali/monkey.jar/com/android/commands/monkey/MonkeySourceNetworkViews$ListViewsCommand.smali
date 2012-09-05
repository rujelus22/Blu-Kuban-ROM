.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;
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
    name = "ListViewsCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 18
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
    .line 262
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityEvent;

    .line 263
    .local v8, lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v8, :cond_15

    .line 264
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "No accessibility event has occured yet"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 287
    :goto_14
    return-object v12

    .line 266
    :cond_15
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 267
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 270
    .local v10, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_28

    .line 271
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "No accessibility event has occured yet"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14

    .line 273
    :cond_28
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, packageName:Ljava/lang/String;
    :try_start_30
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$100()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v11, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 277
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {v11, v12}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 278
    .local v7, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v4, fieldBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 280
    .local v5, fields:[Ljava/lang/reflect/Field;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4b
    if-ge v6, v9, :cond_6c

    aget-object v3, v1, v6

    .line 281
    .local v3, field:Ljava/lang/reflect/Field;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 283
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_6c
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_76} :catch_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_76} :catch_81

    goto :goto_14

    .line 284
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #fieldBuilder:Ljava/lang/StringBuilder;
    .end local v5           #fields:[Ljava/lang/reflect/Field;
    .end local v6           #i$:I
    .end local v7           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #len$:I
    :catch_77
    move-exception v2

    .line 285
    .local v2, e:Landroid/os/RemoteException;
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "Unable to retrieve application info from PackageManager"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14

    .line 286
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_81
    move-exception v2

    .line 287
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "Error retrieving class information"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_14
.end method
