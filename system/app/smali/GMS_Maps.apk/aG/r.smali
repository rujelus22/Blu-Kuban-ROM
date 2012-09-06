.class Lag/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/f;


# instance fields
.field final synthetic a:Lag/g;

.field final synthetic b:Lag/q;


# direct methods
.method constructor <init>(Lag/q;Lag/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lag/r;->b:Lag/q;

    iput-object p2, p0, Lag/r;->a:Lag/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lag/r;->a:Lag/g;

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, p0, Lag/r;->a:Lag/g;

    invoke-virtual {v0}, Lag/g;->a()Lag/f;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_f

    .line 173
    invoke-interface {v0, p1}, Lag/f;->a(Lag/c;)V

    .line 176
    :cond_f
    return-void
.end method
