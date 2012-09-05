.class Lcom/vlingo/client/car/CarActivity$8;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$8;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$8;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$2600(Lcom/vlingo/client/car/CarActivity;)V

    .line 1845
    return-void
.end method
