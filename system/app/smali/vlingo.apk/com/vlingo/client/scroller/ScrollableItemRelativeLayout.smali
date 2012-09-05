.class public Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ScrollableItemRelativeLayout.java"

# interfaces
.implements Lcom/vlingo/client/scroller/ScrollableItem;


# instance fields
.field protected container:Lcom/vlingo/client/scroller/ScrollableContainer;

.field protected shown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->shown:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getScrollableContainer()Lcom/vlingo/client/scroller/ScrollableContainer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    return-object v0
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->shown:Z

    .line 31
    return-void
.end method

.method public onRemoved()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->shown:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 36
    return-void
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->shown:Z

    .line 27
    return-void
.end method

.method public setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 40
    return-void
.end method
