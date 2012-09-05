.class Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;
.super Landroid/os/Handler;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusHandler"
.end annotation


# static fields
.field private static final ABANDON_FOCUS:I = 0x2

.field private static final REQUEST_FOCUS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->this$0:Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;Lcom/vlingo/client/core/audio/AudioFocusManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;-><init>(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 110
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_38

    .line 130
    :cond_5
    :goto_5
    return-void

    .line 117
    :pswitch_6
    iget-object v2, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->this$0:Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;

    #getter for: Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->access$200(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;)Landroid/media/AudioManager;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 118
    .local v0, result:I
    if-nez v0, :cond_5

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, retryMsg:Landroid/os/Message;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 127
    .end local v0           #result:I
    .end local v1           #retryMsg:Landroid/os/Message;
    :pswitch_2e
    iget-object v2, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->this$0:Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;

    #getter for: Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->access$200(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_5

    .line 110
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2e
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;->this$0:Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->setAudioFocusRequestState(I)V

    .line 135
    return-void
.end method
