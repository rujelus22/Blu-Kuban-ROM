.class Lcom/vlingo/client/car/voicedial/CallingView$1;
.super Ljava/lang/Object;
.source "CallingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/CallingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/CallingView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/CallingView;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/CallingView$1;->this$0:Lcom/vlingo/client/car/voicedial/CallingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView$1;->this$0:Lcom/vlingo/client/car/voicedial/CallingView;

    #calls: Lcom/vlingo/client/car/voicedial/CallingView;->doDial()V
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/CallingView;->access$000(Lcom/vlingo/client/car/voicedial/CallingView;)V

    .line 213
    return-void
.end method
