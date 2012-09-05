.class Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;
.super Ljava/lang/Object;
.source "APNewsMain.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->setTwTabHost(I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

.field final synthetic val$headList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->val$headList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "tag"

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->val$headList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_31

    .line 143
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->val$headList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 144
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->val$headList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->fillData(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$000(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;Ljava/lang/String;Z)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNoData()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->access$100(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V

    .line 142
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_31
    return-void
.end method
