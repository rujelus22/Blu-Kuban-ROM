.class public final Lir;
.super Lja;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja",
        "<",
        "Ljava/util/EnumSet",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio;


# direct methods
.method public constructor <init>(Liq;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    const-class v0, Ljava/util/EnumSet;

    invoke-direct {p0, v0}, Lja;-><init>(Ljava/lang/Class;)V

    .line 32
    new-instance v0, Lio;

    invoke-direct {v0, p1}, Lio;-><init>(Liq;)V

    iput-object v0, p0, Lir;->b:Lio;

    .line 34
    invoke-virtual {p1}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lir;->a:Ljava/lang/Class;

    .line 35
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v0, v1, :cond_f

    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v0, p0, Lir;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_15
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    sget-object v2, Lfg;->END_ARRAY:Lfg;

    if-eq v1, v2, :cond_32

    sget-object v2, Lfg;->VALUE_NULL:Lfg;

    if-ne v1, v2, :cond_28

    iget-object v0, p0, Lir;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_28
    iget-object v1, p0, Lir;->b:Lio;

    invoke-virtual {v1, p1, p2}, Lio;->b(Lfd;Lhc;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_32
    return-object v0
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p3, p1, p2}, Lht;->b(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
