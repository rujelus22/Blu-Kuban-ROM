.class Lcom/sec/android/socialhub/messagelist/MessageListView$3;
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

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iput p2, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->val$error:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_49

    .line 899
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListView:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->access$100(Lcom/sec/android/socialhub/messagelist/MessageListView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->onFlickDownComplete(Z)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListView;->bSuccess:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->access$100(Lcom/sec/android/socialhub/messagelist/MessageListView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 919
    :goto_2a
    return-void

    .line 907
    :cond_2b
    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->val$error:I

    packed-switch v0, :pswitch_data_54

    goto :goto_2a

    .line 910
    :pswitch_31
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 917
    :cond_49
    const-string v0, "MessageListView"

    const-string v1, "onMessageReponse()"

    const-string v2, "mListView is null!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 907
    nop

    :pswitch_data_54
    .packed-switch 0x6
        :pswitch_31
    .end packed-switch
.end method
