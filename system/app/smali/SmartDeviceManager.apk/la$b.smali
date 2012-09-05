.class public final Lla$b;
.super Lla$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lla$a",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lla$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 318
    new-instance v0, Lla$b;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lla$b;-><init>(Lnd;ZLhu;)V

    sput-object v0, Lla$b;->e:Lla$b;

    return-void
.end method

.method public constructor <init>(Lnd;ZLhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    const-class v0, Ljava/util/Collection;

    invoke-direct {p0, v0, p1, p2, p3}, Lla$a;-><init>(Ljava/lang/Class;Lnd;ZLhu;)V

    .line 324
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
    .line 328
    new-instance v0, Lla$b;

    iget-object v1, p0, Lla$b;->b:Lnd;

    iget-boolean v2, p0, Lla$b;->a:Z

    invoke-direct {v0, v1, v2, p1}, Lla$b;-><init>(Lnd;ZLhu;)V

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
    .line 314
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
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 314
    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lla$b;->d:Lhj;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lla$b;->d:Lhj;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lla$b;->c:Lhu;

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2d

    :try_start_1c
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_33

    :goto_24
    add-int/lit8 v3, v3, 0x1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    if-nez v2, :cond_38

    :try_start_2f
    invoke-virtual {v0, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_24

    :catch_33
    move-exception v4

    invoke-static {v4, p1, v3}, Lla$b;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_26

    :cond_38
    :try_start_38
    invoke-virtual {v0, v4, p2, p3, v2}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_33

    goto :goto_24

    :cond_3c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lla$b;->c:Lhu;

    move-object v4, v2

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_63

    :try_start_52
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_8a

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_2c

    :cond_63
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_8a

    move-result-object v6

    if-ne v6, v3, :cond_75

    move-object v6, v4

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    :goto_6d
    if-nez v1, :cond_7c

    :try_start_6f
    invoke-virtual {v3, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_82

    move-object v3, v4

    move-object v4, v6

    goto :goto_5a

    :cond_75
    :try_start_75
    invoke-virtual {p3, v6}, Lhs;->a(Ljava/lang/Class;)Lhj;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_8a

    move-result-object v3

    move-object v4, v6

    move-object v6, v3

    goto :goto_6d

    :cond_7c
    :try_start_7c
    invoke-virtual {v3, v5, p2, p3, v1}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_82

    move-object v3, v4

    move-object v4, v6

    goto :goto_5a

    :catch_82
    move-exception v3

    move-object v5, v6

    :goto_84
    invoke-static {v3, p1, v2}, Lla$b;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)V

    move-object v3, v4

    move-object v4, v5

    goto :goto_5a

    :catch_8a
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_84
.end method
