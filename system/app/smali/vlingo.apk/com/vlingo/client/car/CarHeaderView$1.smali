.class Lcom/vlingo/client/car/CarHeaderView$1;
.super Ljava/lang/Object;
.source "CarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarHeaderView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vlingo/client/car/CarHeaderView$1;->this$0:Lcom/vlingo/client/car/CarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView$1;->this$0:Lcom/vlingo/client/car/CarHeaderView;

    #getter for: Lcom/vlingo/client/car/CarHeaderView;->callback:Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;
    invoke-static {v0}, Lcom/vlingo/client/car/CarHeaderView;->access$000(Lcom/vlingo/client/car/CarHeaderView;)Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;->onHelpPressed()V

    .line 63
    return-void
.end method
