.class final LL/h;
.super Lbk/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lbk/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbk/f;Lbk/i;)LL/g;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, LL/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LL/g;-><init>(Lbk/f;Lbk/i;LL/h;)V

    return-object v0
.end method

.method public synthetic b(Lbk/f;Lbk/i;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, LL/h;->a(Lbk/f;Lbk/i;)LL/g;

    move-result-object v0

    return-object v0
.end method
