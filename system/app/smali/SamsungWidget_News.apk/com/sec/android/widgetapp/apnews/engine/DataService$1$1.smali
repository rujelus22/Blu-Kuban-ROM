.class Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;
.super Ljava/lang/Thread;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;->val$dst:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;->val$msgExtra:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$1$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$1;

    iget-boolean v3, v3, Lcom/sec/android/widgetapp/apnews/engine/DataService$1;->val$isWidgetAutoRefresh:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsHeadDataTask(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    return-void
.end method
