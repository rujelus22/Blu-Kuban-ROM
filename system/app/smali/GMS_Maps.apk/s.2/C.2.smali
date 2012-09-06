.class Ls/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ls/B;


# direct methods
.method constructor <init>(Ls/B;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Ls/C;->a:Ls/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Ls/C;->a:Ls/B;

    invoke-static {v0}, Ls/B;->a(Ls/B;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 43
    iget-object v0, p0, Ls/C;->a:Ls/B;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls/B;->c:Z

    .line 44
    iget-object v0, p0, Ls/C;->a:Ls/B;

    invoke-virtual {v0}, Ls/B;->c()V

    .line 48
    :goto_12
    return-void

    .line 46
    :cond_13
    iget-object v0, p0, Ls/C;->a:Ls/B;

    invoke-static {v0}, Ls/B;->b(Ls/B;)V

    goto :goto_12
.end method
