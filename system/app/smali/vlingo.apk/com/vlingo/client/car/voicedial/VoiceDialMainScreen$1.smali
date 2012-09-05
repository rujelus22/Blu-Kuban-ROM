.class Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;
.super Ljava/lang/Object;
.source "VoiceDialMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #getter for: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$000(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    move-result-object v0

    if-nez v0, :cond_16

    .line 88
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #calls: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->showRecents()V
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$100(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)V

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$1;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #getter for: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->recentAdaptor:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$000(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->populateAsync()V

    .line 91
    :cond_16
    return-void
.end method
