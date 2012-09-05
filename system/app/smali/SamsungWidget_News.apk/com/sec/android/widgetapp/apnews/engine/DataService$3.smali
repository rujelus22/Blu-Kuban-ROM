.class Lcom/sec/android/widgetapp/apnews/engine/DataService$3;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsImageData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

.field final synthetic val$dst:Ljava/lang/String;

.field final synthetic val$index:Ljava/lang/String;

.field final synthetic val$xmlUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$index:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$dst:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$xmlUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 625
    const-string v1, "APNews_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewsImageData, start ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$index:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService$3;)V

    .line 633
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 634
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 636
    const-string v1, "APNews_Service"

    const-string v2, "getNewsImageData, end"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method
