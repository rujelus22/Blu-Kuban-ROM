.class Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;
.super Ljava/lang/Object;
.source "APNewsMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 434
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    .line 438
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$600(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$600(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 439
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$600(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 440
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 444
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_43
    return-void
.end method
