.class public final Lla$d;
.super Lla$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lla$a",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lla$d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Lla$d;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lla$d;-><init>(Lnd;ZLhu;)V

    sput-object v0, Lla$d;->e:Lla$d;

    return-void
.end method

.method public constructor <init>(Lnd;ZLhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lla$a;-><init>(Ljava/lang/Class;Lnd;ZLhu;)V

    .line 199
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
    .line 203
    new-instance v0, Lla$d;

    iget-object v1, p0, Lla$d;->b:Lnd;

    iget-boolean v2, p0, Lla$d;->a:Z

    invoke-direct {v0, v1, v2, p1}, Lla$d;-><init>(Lnd;ZLhu;)V

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
    .line 190
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

    .line 190
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lla$d;->d:Lhj;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lla$d;->d:Lhj;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b0

    iget-object v2, p0, Lla$d;->c:Lhu;

    :goto_12
    if-ge v3, v1, :cond_b0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_25

    :try_start_1a
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    if-nez v2, :cond_30

    invoke-virtual {v0, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2b

    goto :goto_22

    :catch_2b
    move-exception v4

    invoke-static {v4, p1, v3}, Lla$d;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_22

    :cond_30
    :try_start_30
    invoke-virtual {v0, v4, p2, p3, v2}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_2b

    goto :goto_22

    :cond_34
    iget-object v0, p0, Lla$d;->c:Lhu;

    if-eqz v0, :cond_76

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    iget-object v1, p0, Lla$d;->c:Lhu;

    move-object v4, v2

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    :goto_44
    if-ge v2, v0, :cond_b0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_57

    :try_start_4c
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5a} :catch_b7

    move-result-object v6

    if-ne v6, v3, :cond_67

    move-object v6, v4

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    :goto_61
    :try_start_61
    invoke-virtual {v3, v5, p2, p3, v1}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_6e

    move-object v3, v4

    move-object v4, v6

    goto :goto_54

    :cond_67
    :try_start_67
    invoke-virtual {p3, v6}, Lhs;->a(Ljava/lang/Class;)Lhj;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_b7

    move-result-object v3

    move-object v4, v6

    move-object v6, v3

    goto :goto_61

    :catch_6e
    move-exception v3

    move-object v5, v6

    :goto_70
    invoke-static {v3, p1, v2}, Lla$d;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)V

    move-object v3, v4

    move-object v4, v5

    goto :goto_54

    :cond_76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    move v1, v3

    move-object v3, v2

    :goto_7e
    if-ge v1, v0, :cond_b0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_91

    :try_start_86
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_91
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_94} :catch_b1

    move-result-object v5

    if-ne v5, v2, :cond_a1

    move-object v5, v3

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    :goto_9b
    :try_start_9b
    invoke-virtual {v2, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a8

    move-object v2, v3

    move-object v3, v5

    goto :goto_8e

    :cond_a1
    :try_start_a1
    invoke-virtual {p3, v5}, Lhs;->a(Ljava/lang/Class;)Lhj;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_b1

    move-result-object v2

    move-object v3, v5

    move-object v5, v2

    goto :goto_9b

    :catch_a8
    move-exception v2

    move-object v4, v5

    :goto_aa
    invoke-static {v2, p1, v1}, Lla$d;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)V

    move-object v2, v3

    move-object v3, v4

    goto :goto_8e

    :cond_b0
    return-void

    :catch_b1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_aa

    :catch_b7
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_70
.end method
