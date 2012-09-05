.class Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;
.super Ljava/lang/Thread;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService$3;)V
    .registers 2
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$dst:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$index:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$3$1;->this$1:Lcom/sec/android/widgetapp/apnews/engine/DataService$3;

    iget-object v3, v3, Lcom/sec/android/widgetapp/apnews/engine/DataService$3;->val$xmlUrl:Ljava/lang/String;

    #calls: Lcom/sec/android/widgetapp/apnews/engine/DataService;->getNewsImageDataTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->access$100(Lcom/sec/android/widgetapp/apnews/engine/DataService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method
