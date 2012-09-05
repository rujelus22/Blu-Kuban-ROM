.class Lcom/sec/android/widgetapp/apnews/engine/DataService$2;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsData(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

.field final synthetic val$dst:Ljava/lang/String;

.field final synthetic val$isWidgetAutoRefresh:Z

.field final synthetic val$msgExtra:Ljava/lang/String;

.field final synthetic val$xmlUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$dst:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$xmlUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$msgExtra:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$isWidgetAutoRefresh:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 457
    const-string v1, "APNews_Service"

    const-string v2, "getNewsData, start"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;-><init>(Lcom/sec/android/widgetapp/apnews/engine/DataService$2;)V

    .line 467
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 470
    const-string v1, "APNews_Service"

    const-string v2, "getNewsData, end"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method
