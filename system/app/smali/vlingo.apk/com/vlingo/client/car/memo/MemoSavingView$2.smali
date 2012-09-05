.class Lcom/vlingo/client/car/memo/MemoSavingView$2;
.super Ljava/lang/Object;
.source "MemoSavingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/memo/MemoSavingView;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/memo/MemoSavingView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/memo/MemoSavingView;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView$2;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView$2;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    #calls: Lcom/vlingo/client/car/memo/MemoSavingView;->saveMemo()V
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoSavingView;->access$400(Lcom/vlingo/client/car/memo/MemoSavingView;)V

    .line 77
    return-void
.end method
