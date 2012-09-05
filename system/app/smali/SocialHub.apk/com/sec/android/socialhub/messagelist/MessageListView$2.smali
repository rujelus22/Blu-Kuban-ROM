.class Lcom/sec/android/socialhub/messagelist/MessageListView$2;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageListView;->onMessageReponse(IIZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListView;)V
    .registers 2
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 865
    return-void
.end method
