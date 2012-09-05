.class public final Lku$i;
.super Lku$a;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku$a",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lhp;"
    }
.end annotation


# static fields
.field public static final b:Lku$i;


# instance fields
.field protected final c:Z

.field protected final d:Lnd;

.field protected e:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Lku$i;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lku$i;-><init>(Lnd;ZLhu;)V

    sput-object v0, Lku$i;->b:Lku$i;

    return-void
.end method

.method public constructor <init>(Lnd;ZLhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3}, Lku$a;-><init>(Ljava/lang/Class;Lhu;)V

    .line 116
    iput-object p1, p0, Lku$i;->d:Lnd;

    .line 117
    iput-boolean p2, p0, Lku$i;->c:Z

    .line 118
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
    .line 123
    new-instance v0, Lku$i;

    iget-object v1, p0, Lku$i;->d:Lnd;

    iget-boolean v2, p0, Lku$i;->c:Z

    invoke-direct {v0, v1, v2, p1}, Lku$i;-><init>(Lnd;ZLhu;)V

    return-object v0
.end method

.method public final a(Lhs;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 289
    iget-boolean v0, p0, Lku$i;->c:Z

    if-eqz v0, :cond_c

    .line 290
    iget-object v0, p0, Lku$i;->d:Lnd;

    invoke-virtual {p1, v0}, Lhs;->a(Lnd;)Lhj;

    move-result-object v0

    iput-object v0, p0, Lku$i;->e:Lhj;

    .line 292
    :cond_c
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 13
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

    const/4 v7, 0x0

    .line 94
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-eqz v0, :cond_e5

    iget-object v1, p0, Lku$i;->e:Lhj;

    if-eqz v1, :cond_4a

    iget-object v0, p0, Lku$i;->e:Lhj;

    array-length v1, p1

    iget-object v2, p0, Lku$i;->a:Lhu;

    :goto_10
    if-ge v3, v1, :cond_e5

    aget-object v4, p1, v3

    if-nez v4, :cond_20

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    invoke-virtual {v4, v7, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    if-nez v2, :cond_28

    :try_start_22
    invoke-virtual {v0, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_2c

    goto :goto_1d

    :catch_26
    move-exception v0

    throw v0

    :cond_28
    :try_start_28
    invoke-virtual {v0, v4, p2, p3, v2}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_26
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1d

    :catch_2c
    move-exception v0

    move-object p0, v0

    :goto_2e
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_2e

    :cond_3e
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_45

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_45
    invoke-static {p0, v4, v3}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lhg;

    move-result-object v0

    throw v0

    :cond_4a
    iget-object v1, p0, Lku$i;->a:Lhu;

    if-eqz v1, :cond_9b

    array-length v0, p1

    iget-object v1, p0, Lku$i;->a:Lhu;

    move v2, v3

    move-object v4, v7

    move-object v3, v7

    :goto_54
    if-ge v2, v0, :cond_e5

    aget-object v5, p1, v2

    if-nez v5, :cond_64

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v5

    invoke-virtual {v5, v7, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v3, :cond_74

    move-object v6, v4

    move-object v8, v3

    move-object v3, v4

    move-object v4, v8

    :goto_6e
    :try_start_6e
    invoke-virtual {v3, v5, p2, p3, v1}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_7d

    move-object v3, v4

    move-object v4, v6

    goto :goto_61

    :cond_74
    invoke-virtual {p3, v6}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v3

    move-object v4, v6

    move-object v6, v3

    goto :goto_6e

    :catch_7b
    move-exception v0

    throw v0

    :catch_7d
    move-exception v0

    move-object p0, v0

    :goto_7f
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_7f

    :cond_8f
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_96

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_96
    invoke-static {p0, v5, v2}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lhg;

    move-result-object v0

    throw v0

    :cond_9b
    move v1, v3

    move-object v2, v7

    move-object v3, v7

    :goto_9e
    if-ge v1, v0, :cond_e5

    aget-object v4, p1, v1

    if-nez v4, :cond_ae

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v4

    invoke-virtual {v4, v7, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_ae
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v2, :cond_be

    move-object v5, v3

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    :goto_b8
    :try_start_b8
    invoke-virtual {v2, v4, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_c7

    move-object v2, v3

    move-object v3, v5

    goto :goto_ab

    :cond_be
    invoke-virtual {p3, v5}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v2

    move-object v3, v5

    move-object v5, v2

    goto :goto_b8

    :catch_c5
    move-exception v0

    throw v0

    :catch_c7
    move-exception v0

    move-object p0, v0

    :goto_c9
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_d9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_c9

    :cond_d9
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_e0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_e0
    invoke-static {p0, v4, v1}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lhg;

    move-result-object v0

    throw v0

    :cond_e5
    return-void
.end method
