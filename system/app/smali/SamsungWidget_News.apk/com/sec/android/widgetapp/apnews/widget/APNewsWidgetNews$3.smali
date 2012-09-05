.class Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;
.super Ljava/lang/Object;
.source "APNewsWidgetNews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setNetworkErr(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

.field final synthetic val$contextForPopUpCancel:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2754
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;->val$contextForPopUpCancel:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2756
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;->val$contextForPopUpCancel:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.err.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2758
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;->val$contextForPopUpCancel:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2761
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_18
    return-void
.end method
