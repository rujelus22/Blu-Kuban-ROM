.class Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;
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
    .line 105
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 108
    const/4 v1, -0x1

    .line 110
    .local v1, mSnsType:I
    const-string v2, "PlainView"

    const-string v3, "jumpToStatusUpdateListener.onClick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSnsType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.STATUS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, i:Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v2, "taSelectedSP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v2, "from_widget"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$100(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_48

    .line 118
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$100(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    :cond_48
    return-void
.end method
