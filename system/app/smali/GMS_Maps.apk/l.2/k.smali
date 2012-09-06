.class final LL/k;
.super Lbk/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lbk/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbk/f;Lbk/i;)LL/j;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, LL/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LL/j;-><init>(Lbk/f;Lbk/i;LL/k;)V

    return-object v0
.end method

.method public synthetic b(Lbk/f;Lbk/i;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, LL/k;->a(Lbk/f;Lbk/i;)LL/j;

    move-result-object v0

    return-object v0
.end method
