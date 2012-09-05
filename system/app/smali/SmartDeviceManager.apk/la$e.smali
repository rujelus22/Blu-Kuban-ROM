.class public final Lla$e;
.super Lla$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lla$a",
        "<",
        "Ljava/lang/Iterable",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lla$e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 461
    new-instance v0, Lla$e;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lla$e;-><init>(Lnd;ZLhu;)V

    sput-object v0, Lla$e;->e:Lla$e;

    return-void
.end method

.method public constructor <init>(Lnd;ZLhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    const-class v0, Ljava/lang/Iterable;

    invoke-direct {p0, v0, p1, p2, p3}, Lla$a;-><init>(Ljava/lang/Class;Lnd;ZLhu;)V

    .line 466
    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu;",
            ")",
            "Lkz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lla$e;

    iget-object v1, p0, Lla$e;->b:Lnd;

    iget-boolean v2, p0, Lla$e;->a:Z

    invoke-direct {v0, v1, v2, p1}, Lla$e;-><init>(Lnd;ZLhu;)V

    return-object v0
.end method

.method public final bridge synthetic a(Lhs;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0, p1}, Lla$a;->a(Lhs;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 457
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lla$e;->c:Lhu;

    move-object v2, v6

    move-object v3, v6

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_25

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    invoke-virtual {v4, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_24
    return-void

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v2, :cond_37

    move-object v5, v3

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    :goto_2f
    if-nez v1, :cond_3e

    invoke-virtual {v2, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    move-object v2, v3

    move-object v3, v5

    goto :goto_1e

    :cond_37
    invoke-virtual {p3, v5}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v2

    move-object v3, v5

    move-object v5, v2

    goto :goto_2f

    :cond_3e
    invoke-virtual {v2, v4, p2, p3, v1}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V

    move-object v2, v3

    move-object v3, v5

    goto :goto_1e
.end method
