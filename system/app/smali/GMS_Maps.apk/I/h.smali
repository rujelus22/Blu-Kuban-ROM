.class Li/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field final synthetic a:Li/d;


# direct methods
.method private constructor <init>(Li/d;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Li/h;->a:Li/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li/d;Li/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Li/h;-><init>(Li/d;)V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Li/h;->a:Li/d;

    invoke-static {v0, p1}, Li/d;->a(Li/d;Ljava/lang/String;)V

    .line 108
    return-void
.end method
