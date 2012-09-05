.class Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;
.super Ljava/lang/Object;
.source "PlainView.java"

# interfaces
.implements Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;


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
    .line 82
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlickDown()V
    .registers 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$000(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestActivityRetrieve()I

    move-result v0

    .line 100
    .local v0, request:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 101
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 102
    :cond_13
    return-void
.end method

.method public onFlickUp()V
    .registers 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$000(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestActivityRetrieveNext()I

    move-result v0

    .line 90
    .local v0, request:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 91
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 92
    :cond_13
    return-void
.end method
