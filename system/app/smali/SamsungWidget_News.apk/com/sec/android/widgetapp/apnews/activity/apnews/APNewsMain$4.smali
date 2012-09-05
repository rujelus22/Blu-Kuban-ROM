.class Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;
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
    .line 350
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 352
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 353
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->queryDummy()Z
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$300(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 354
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 376
    :cond_1d
    :goto_1d
    return-void

    .line 366
    :cond_1e
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$400(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 367
    .local v2, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 368
    .local v1, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$500(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 369
    .local v0, currentTab:I
    if-ltz v0, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1d

    .line 370
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v4, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsDataToService(Ljava/lang/String;)V

    goto :goto_1d
.end method
