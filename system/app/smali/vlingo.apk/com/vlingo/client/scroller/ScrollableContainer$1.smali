.class Lcom/vlingo/client/scroller/ScrollableContainer$1;
.super Ljava/lang/Object;
.source "ScrollableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/scroller/ScrollableContainer;->notifyScreenChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/scroller/ScrollableContainer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/scroller/ScrollableContainer;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 165
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v3, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget v3, v3, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 166
    .local v0, curItem:Lcom/vlingo/client/scroller/ScrollableItem;
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$000(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v2

    if-eq v2, v0, :cond_52

    .line 170
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$000(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 171
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$000(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlingo/client/scroller/ScrollableItem;->onHidden()V

    .line 173
    :cond_25
    if-eqz v0, :cond_2a

    .line 174
    invoke-interface {v0}, Lcom/vlingo/client/scroller/ScrollableItem;->onShown()V

    .line 176
    :cond_2a
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$000(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v1

    .line 177
    .local v1, theLastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #setter for: Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-static {v2, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$002(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;)Lcom/vlingo/client/scroller/ScrollableItem;

    .line 179
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$100(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 180
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    #getter for: Lcom/vlingo/client/scroller/ScrollableContainer;->changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
    invoke-static {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$100(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v4, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget v4, v4, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/vlingo/client/scroller/ScrollableItemChangeListener;->onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V

    .line 182
    :cond_4c
    iget-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer$1;->this$0:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v3, 0x0

    #setter for: Lcom/vlingo/client/scroller/ScrollableContainer;->mScrollLock:Z
    invoke-static {v2, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->access$202(Lcom/vlingo/client/scroller/ScrollableContainer;Z)Z

    .line 184
    .end local v1           #theLastItem:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_52
    return-void
.end method
