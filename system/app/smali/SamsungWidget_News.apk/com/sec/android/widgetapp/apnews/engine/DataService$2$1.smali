.class Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;
.super Ljava/lang/Thread;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService$2;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$dst:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$xmlUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    iget-object v3, v3, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$msgExtra:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$2$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$2;

    iget-boolean v4, v4, Lcom/sec/android/widgetapp/apnews/engine/DataService$2;->val$isWidgetAutoRefresh:Z

    #calls: Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->access$000(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    return-void
.end method
