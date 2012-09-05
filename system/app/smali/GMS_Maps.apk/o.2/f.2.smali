.class Lo/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic a:Lo/j;

.field final synthetic b:Lo/d;


# direct methods
.method constructor <init>(Lo/d;Lo/j;)V
    .registers 3

    iput-object p1, p0, Lo/f;->b:Lo/d;

    iput-object p2, p0, Lo/f;->a:Lo/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 4

    iget-object v0, p0, Lo/f;->b:Lo/d;

    iget-object v1, p0, Lo/f;->a:Lo/j;

    invoke-static {v0, p1, v1}, Lo/d;->a(Lo/d;ILo/j;)V

    return-void
.end method
