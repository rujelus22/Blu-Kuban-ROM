.class final Lcom/google/android/youtube/app/remote/av;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/at;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/at;)V
    .registers 2
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/av;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/at;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/av;-><init>(Lcom/google/android/youtube/app/remote/at;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->fromString(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentAction;

    move-result-object v0

    .line 759
    sget-object v1, Lcom/google/android/youtube/app/remote/au;->c:[I

    invoke-virtual {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_38

    .line 773
    :goto_13
    return-void

    .line 762
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/av;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_13

    .line 765
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/av;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->o(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/core/utils/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v0

    if-nez v0, :cond_30

    .line 767
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/av;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_13

    .line 769
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/av;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/as;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_13

    .line 759
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method
