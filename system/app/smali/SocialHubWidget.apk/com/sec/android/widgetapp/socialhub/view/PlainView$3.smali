.class Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;
.super Ljava/lang/Object;
.source "PlainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/PlainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 124
    const-string v1, "PlainView"

    const-string v2, "refreshButtonClick"

    const-string v3, "Feeds refresh button clicked"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getRefreshing()Z

    move-result v1

    if-nez v1, :cond_27

    .line 127
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$000(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestActivityRetrieve()I

    move-result v0

    .line 128
    .local v0, request:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 129
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 135
    .end local v0           #request:I
    :cond_26
    :goto_26
    return-void

    .line 133
    :cond_27
    const-string v1, "PlainView"

    const-string v2, "refreshButtonClick"

    const-string v3, "already refreshing"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
