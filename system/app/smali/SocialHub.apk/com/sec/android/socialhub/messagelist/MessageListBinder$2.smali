.class Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;
.super Ljava/lang/Object;
.source "MessageListBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEASIcon()V
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
    .line 847
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 852
    .local v9, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    const/4 v7, 0x0

    .line 854
    .local v7, newState:I
    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    if-nez v0, :cond_3c

    .line 855
    const/4 v7, 0x2

    .line 859
    :goto_d
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$000(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 861
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListBinder$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$000(Lcom/sec/android/socialhub/messagelist/MessageListBinder;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    move-result-object v0

    const-string v1, "2_Email"

    const/16 v3, 0xa

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v6, v5, v4

    move-object v4, v2

    move-object v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v8

    .line 871
    .local v8, ret:I
    const/4 v0, -0x1

    if-le v8, v0, :cond_3b

    .line 873
    iput v7, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    .line 874
    iget-object v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    iget v1, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    #calls: Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawEasFlagIcon(Landroid/widget/ImageView;I)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$300(Landroid/widget/ImageView;I)V

    .line 882
    .end local v8           #ret:I
    :cond_3b
    :goto_3b
    return-void

    .line 857
    :cond_3c
    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    add-int/lit8 v7, v0, -0x1

    goto :goto_d

    .line 879
    :cond_41
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnClickListener of flag"

    const-string v2, "IMessageAPI is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method
