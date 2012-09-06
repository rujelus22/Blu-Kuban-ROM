.class Li/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/C;


# instance fields
.field final synthetic a:Li/t;


# direct methods
.method constructor <init>(Li/t;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Li/u;->a:Li/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 37
    const-string v0, "CannedSpeechAlertGenerator"

    const-string v1, "Failed to load bundle"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public a(Li/v;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Li/u;->a:Li/t;

    invoke-static {v0, p1}, Li/t;->a(Li/t;Li/v;)V

    .line 42
    return-void
.end method
