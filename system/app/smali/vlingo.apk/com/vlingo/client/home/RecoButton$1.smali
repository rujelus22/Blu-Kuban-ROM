.class Lcom/vlingo/client/home/RecoButton$1;
.super Ljava/lang/Object;
.source "RecoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/RecoButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/RecoButton;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/RecoButton;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$000(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$State;

    move-result-object v0

    .line 88
    .local v0, oldState:Lcom/vlingo/client/home/RecoButton$State;
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    sget-object v2, Lcom/vlingo/client/home/RecoButton$State;->Clear:Lcom/vlingo/client/home/RecoButton$State;

    #setter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1, v2}, Lcom/vlingo/client/home/RecoButton;->access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;

    .line 89
    sget-object v1, Lcom/vlingo/client/home/RecoButton$3;->$SwitchMap$com$vlingo$client$home$RecoButton$State:[I

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 103
    :goto_18
    return-void

    .line 91
    :pswitch_19
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$100(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/home/RecoButton$RecoButtonListener;->onPressedSpeak()V

    goto :goto_18

    .line 94
    :pswitch_23
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$100(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/home/RecoButton$RecoButtonListener;->onPressedSpeakAgain()V

    goto :goto_18

    .line 97
    :pswitch_2d
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$100(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/home/RecoButton$RecoButtonListener;->onPressedListeningDone()V

    goto :goto_18

    .line 100
    :pswitch_37
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$1;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$100(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/home/RecoButton$RecoButtonListener;->onPressedThinkingCancel()V

    goto :goto_18

    .line 89
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_19
        :pswitch_23
        :pswitch_2d
        :pswitch_37
    .end packed-switch
.end method
