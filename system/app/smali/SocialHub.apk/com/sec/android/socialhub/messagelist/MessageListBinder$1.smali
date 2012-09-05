.class Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;
.super Ljava/lang/Object;
.source "MessageListBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEmailIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 713
    .local v9, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagFavorite:I

    if-nez v0, :cond_3b

    move v7, v4

    .line 715
    .local v7, request_flag:I
    :goto_e
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$000(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 717
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$000(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    move-result-object v0

    const-string v1, "2_Email"

    const/16 v3, 0x8

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v4, v5, v6

    move-object v4, v2

    move-object v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v8

    .line 727
    .local v8, ret:I
    const/4 v0, -0x1

    if-le v8, v0, :cond_3a

    .line 729
    iput v7, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagFavorite:I

    .line 730
    iget-object v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget v1, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagFavorite:I

    #calls: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawFavoriteIcon(Landroid/widget/ImageView;I)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$100(Landroid/widget/ImageView;I)V

    .line 738
    .end local v8           #ret:I
    :cond_3a
    :goto_3a
    return-void

    .end local v7           #request_flag:I
    :cond_3b
    move v7, v6

    .line 713
    goto :goto_e

    .line 735
    .restart local v7       #request_flag:I
    :cond_3d
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnClickListener of favorite"

    const-string v2, "IMessageAPI is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method
