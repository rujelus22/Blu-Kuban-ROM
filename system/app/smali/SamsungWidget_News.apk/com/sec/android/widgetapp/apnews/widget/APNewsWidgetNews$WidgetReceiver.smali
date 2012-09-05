.class Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "APNewsWidgetNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;)V
    .registers 2
    .parameter

    .prologue
    .line 2822
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;->this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2822
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2825
    const-string v1, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive sub Action => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2828
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 2829
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2854
    :cond_2a
    :goto_2a
    return-void

    .line 2834
    :cond_2b
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2835
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->access$102(Z)Z

    .line 2836
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;->this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    #calls: Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopAutoRefresh(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->access$200(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V

    .line 2837
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;->this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    #calls: Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->access$300(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V

    goto :goto_2a
.end method
