.class Lcom/sec/android/widgetapp/apnews/activity/APNews$16;
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
    .line 1294
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1296
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1299
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1300
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 1301
    .local v0, controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 1302
    .local v1, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsDataToService(Ljava/lang/String;)V

    .line 1308
    .end local v0           #controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    .end local v1           #headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    :goto_33
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1309
    return-void

    .line 1304
    :cond_3b
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->refreshDataToService(Ljava/lang/String;)V

    goto :goto_33
.end method
