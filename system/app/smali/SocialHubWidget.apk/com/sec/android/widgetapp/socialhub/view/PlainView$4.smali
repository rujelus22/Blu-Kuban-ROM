.class Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;
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
    .line 138
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.socialhub.AddAccount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, i:Landroid/content/Intent;
    const-string v1, "from_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$100(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/widgetapp/socialhub/WidgetMain;

    if-eqz v1, :cond_23

    .line 143
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$100(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/socialhub/WidgetMain;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    :cond_23
    return-void
.end method
