.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;
.super Landroid/os/FileObserver;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/16 v0, 0x202

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4

    sparse-switch p1, :sswitch_data_10

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    invoke-static {v0, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    invoke-static {v0, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_data_10
    .sparse-switch
        0x2 -> :sswitch_a
        0x200 -> :sswitch_4
    .end sparse-switch
.end method
