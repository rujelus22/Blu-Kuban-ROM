.class Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;
.super Landroid/os/Handler;
.source "APNewsWidgetNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->startAutoRefresh(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2609
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 2611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.autorefresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2612
    .local v0, autoRefreshIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2613
    return-void
.end method
