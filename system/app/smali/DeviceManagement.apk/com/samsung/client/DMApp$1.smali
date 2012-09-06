.class Lcom/samsung/client/DMApp$1;
.super Ljava/lang/Object;
.source "DMApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/samsung/client/DMApp$1;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 338
    const-string v1, "DMApp"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p2}, Lcom/samsung/client/ISyncmlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$502(Lcom/samsung/client/ISyncmlService;)Lcom/samsung/client/ISyncmlService;

    .line 341
    :try_start_e
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp$1;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 342
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->setResourcesState(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_24

    .line 347
    :goto_23
    return-void

    .line 343
    :catch_24
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 351
    const-string v1, "DMApp"

    const-string v2, "onServiceDisConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_7
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp$1;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->unregisterDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_19

    .line 357
    :goto_14
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$502(Lcom/samsung/client/ISyncmlService;)Lcom/samsung/client/ISyncmlService;

    .line 360
    return-void

    .line 354
    :catch_19
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method
