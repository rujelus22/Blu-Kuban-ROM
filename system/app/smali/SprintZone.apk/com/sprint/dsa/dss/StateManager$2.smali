.class Lcom/sprint/dsa/dss/StateManager$2;
.super Ljava/util/TimerTask;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/StateManager;->setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/StateManager;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/StateManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/StateManager$2;->this$0:Lcom/sprint/dsa/dss/StateManager;

    .line 136
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager$2;->this$0:Lcom/sprint/dsa/dss/StateManager;

    #calls: Lcom/sprint/dsa/dss/StateManager;->pingServer()V
    invoke-static {v0}, Lcom/sprint/dsa/dss/StateManager;->access$0(Lcom/sprint/dsa/dss/StateManager;)V

    .line 139
    return-void
.end method
