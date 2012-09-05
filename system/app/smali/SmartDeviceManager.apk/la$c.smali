.class public final Lla$c;
.super Lla$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lla$a",
        "<",
        "Ljava/util/EnumSet",
        "<+",
        "Ljava/lang/Enum",
        "<*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 5
    .parameter

    .prologue
    .line 514
    const-class v0, Ljava/util/EnumSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lla$a;-><init>(Ljava/lang/Class;Lnd;ZLhu;)V

    .line 515
    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 2
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
    .line 520
    return-object p0
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
    .line 509
    invoke-super {p0, p1}, Lla$a;->a(Lhs;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 7
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
    .line 509
    check-cast p1, Ljava/util/EnumSet;

    iget-object v0, p0, Lla$c;->d:Lhj;

    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v0

    :cond_1e
    invoke-virtual {v0, p0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_8

    :cond_22
    return-void
.end method
