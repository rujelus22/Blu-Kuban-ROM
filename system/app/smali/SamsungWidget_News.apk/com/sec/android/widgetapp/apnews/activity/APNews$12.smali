.class Lcom/sec/android/widgetapp/apnews/activity/APNews$12;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1210
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v3, 0x3c

    .line 1212
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1213
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 1214
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1215
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1232
    :goto_20
    return-void

    .line 1219
    :cond_21
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1220
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 1221
    .local v0, controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 1222
    .local v1, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsDataToService(Ljava/lang/String;)V

    goto :goto_20

    .line 1224
    .end local v0           #controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    .end local v1           #headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :cond_50
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->refreshDataToService(Ljava/lang/String;)V

    goto :goto_20

    .line 1229
    :cond_6c
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_20
.end method
