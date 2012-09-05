.class Lcom/sec/android/widgetapp/apnews/activity/APNews$8;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->checkdatacount()Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$700(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 910
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 919
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->reloadData()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$800(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    .line 926
    :cond_16
    :goto_16
    return-void

    .line 922
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_16
.end method
