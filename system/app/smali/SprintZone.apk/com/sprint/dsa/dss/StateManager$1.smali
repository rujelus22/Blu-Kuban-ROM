.class Lcom/sprint/dsa/dss/StateManager$1;
.super Ljava/util/TimerTask;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/StateManager;->startWDEnableUI(I)V
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
    iput-object p1, p0, Lcom/sprint/dsa/dss/StateManager$1;->this$0:Lcom/sprint/dsa/dss/StateManager;

    .line 93
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method
