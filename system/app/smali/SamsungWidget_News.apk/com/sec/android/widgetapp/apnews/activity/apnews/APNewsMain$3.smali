.class Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;
.super Ljava/lang/Object;
.source "APNewsMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 269
    const-string v2, "http://m.apnews.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 270
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1e
    return-void
.end method
