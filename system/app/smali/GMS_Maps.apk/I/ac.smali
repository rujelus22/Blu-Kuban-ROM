.class Li/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic a:Li/ad;

.field final synthetic b:Li/ab;


# direct methods
.method constructor <init>(Li/ab;Li/ad;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Li/ac;->b:Li/ab;

    iput-object p2, p0, Li/ac;->a:Li/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 4
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Li/ac;->b:Li/ab;

    iget-object v1, p0, Li/ac;->a:Li/ad;

    invoke-static {v0, p1, v1}, Li/ab;->a(Li/ab;ILi/ad;)V

    .line 91
    return-void
.end method
