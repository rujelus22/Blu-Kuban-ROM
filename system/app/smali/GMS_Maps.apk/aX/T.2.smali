.class Lax/T;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic f:Lax/S;


# direct methods
.method constructor <init>(Lax/S;LY/c;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lax/T;->f:Lax/S;

    iput p3, p0, Lax/T;->a:I

    iput-object p4, p0, Lax/T;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lax/T;->f:Lax/S;

    invoke-static {v0}, Lax/S;->a(Lax/S;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/Q;

    .line 203
    iget v2, p0, Lax/T;->a:I

    iget-object v3, p0, Lax/T;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lax/Q;->a_(ILjava/lang/String;)V

    goto :goto_a

    .line 205
    :cond_1e
    return-void
.end method
