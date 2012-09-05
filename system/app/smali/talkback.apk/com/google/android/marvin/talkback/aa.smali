.class final Lcom/google/android/marvin/talkback/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/aa;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aa;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/l;->a(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V

    return-void
.end method
