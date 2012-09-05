.class Lo/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field final synthetic a:Lo/d;


# direct methods
.method private constructor <init>(Lo/d;)V
    .registers 2

    iput-object p1, p0, Lo/i;->a:Lo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/d;Lo/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lo/i;-><init>(Lo/d;)V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lo/i;->a:Lo/d;

    invoke-static {v0, p1}, Lo/d;->a(Lo/d;Ljava/lang/String;)V

    return-void
.end method
