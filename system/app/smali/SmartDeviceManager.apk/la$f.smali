.class public final Lla$f;
.super Lla$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lla$a",
        "<",
        "Ljava/util/Iterator",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lla$f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 411
    new-instance v0, Lla$f;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lla$f;-><init>(Lnd;ZLhu;)V

    sput-object v0, Lla$f;->e:Lla$f;

    return-void
.end method

.method public constructor <init>(Lnd;ZLhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    const-class v0, Ljava/util/Iterator;

    invoke-direct {p0, v0, p1, p2, p3}, Lla$a;-><init>(Ljava/lang/Class;Lnd;ZLhu;)V

    .line 416
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
    .line 420
    new-instance v0, Lla$f;

    iget-object v1, p0, Lla$f;->b:Lnd;

    iget-boolean v2, p0, Lla$f;->a:Z

    invoke-direct {v0, v1, v2, p1}, Lla$f;-><init>(Lnd;ZLhu;)V

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
    .line 407
    invoke-super {p0, p1}, Lla$a;->a(Lhs;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 11
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
    const/4 v5, 0x0

    .line 407
    check-cast p1, Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lla$f;->c:Lhu;

    move-object v1, v5

    move-object v2, v5

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v3

    invoke-virtual {v3, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_20
    return-void

    :cond_21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_33

    move-object v4, v2

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    :goto_2b
    if-nez v0, :cond_3a

    invoke-virtual {v1, v3, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    move-object v1, v2

    move-object v2, v4

    goto :goto_1a

    :cond_33
    invoke-virtual {p3, v4}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v1

    move-object v2, v4

    move-object v4, v1

    goto :goto_2b

    :cond_3a
    invoke-virtual {v1, v3, p2, p3, v0}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V

    move-object v1, v2

    move-object v2, v4

    goto :goto_1a
.end method
