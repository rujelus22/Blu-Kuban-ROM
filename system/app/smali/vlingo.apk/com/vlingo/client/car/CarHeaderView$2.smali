.class Lcom/vlingo/client/car/CarHeaderView$2;
.super Ljava/lang/Object;
.source "CarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarHeaderView;->setPhraseSpotting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarHeaderView;

.field final synthetic val$onOrOff:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarHeaderView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vlingo/client/car/CarHeaderView$2;->this$0:Lcom/vlingo/client/car/CarHeaderView;

    iput-boolean p2, p0, Lcom/vlingo/client/car/CarHeaderView$2;->val$onOrOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarHeaderView$2;->val$onOrOff:Z

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView$2;->this$0:Lcom/vlingo/client/car/CarHeaderView;

    #calls: Lcom/vlingo/client/car/CarHeaderView;->setSpotOn()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarHeaderView;->access$100(Lcom/vlingo/client/car/CarHeaderView;)V

    .line 108
    :goto_9
    return-void

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView$2;->this$0:Lcom/vlingo/client/car/CarHeaderView;

    #calls: Lcom/vlingo/client/car/CarHeaderView;->setSpotOff()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarHeaderView;->access$200(Lcom/vlingo/client/car/CarHeaderView;)V

    goto :goto_9
.end method
