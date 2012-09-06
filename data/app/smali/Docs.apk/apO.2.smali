.class final LapO;
.super Ljava/lang/Object;
.source "SingleParameterInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final a:Laoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final a:Laqk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqk",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LapO;->a:[Ljava/lang/Object;

    return-void
.end method

.method private a(Laoy;Lapb;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, LapO;->a:Laqk;

    iget-object v1, p0, LapO;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lapb;->a(Laqk;Ljava/lang/Object;)Laqk;

    move-result-object v1

    .line 38
    :try_start_c
    iget-object v0, p0, LapO;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lapc;

    move-result-object v0

    iget-object v2, p0, LapO;->a:Laqk;

    invoke-virtual {p1, v2}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v2

    iget-object v3, p0, LapO;->a:Laqk;

    const/4 v4, 0x0

    invoke-interface {v0, v2, p2, v3, v4}, Lapc;->a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_23

    move-result-object v0

    .line 40
    invoke-virtual {p2, v1}, Lapb;->a(Laqk;)V

    return-object v0

    :catchall_23
    move-exception v0

    invoke-virtual {p2, v1}, Lapb;->a(Laqk;)V

    throw v0
.end method

.method static a(Laoy;Lapb;[LapO;)[Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "[",
            "LapO",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 49
    if-nez p2, :cond_5

    .line 50
    sget-object v0, LapO;->a:[Ljava/lang/Object;

    .line 69
    :goto_4
    return-object v0

    .line 53
    :cond_5
    invoke-virtual {p0}, Laoy;->a()I

    move-result v3

    .line 55
    array-length v4, p2

    .line 56
    new-array v0, v4, [Ljava/lang/Object;

    .line 59
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v4, :cond_25

    .line 60
    aget-object v1, p2, v2

    .line 62
    :try_start_12
    invoke-direct {v1, p0, p1}, LapO;->a(Laoy;Lapb;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_18
    .catch LaoE; {:try_start_12 .. :try_end_18} :catch_1c

    .line 59
    :goto_18
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    .line 63
    :catch_1c
    move-exception v1

    .line 64
    invoke-virtual {v1}, LaoE;->a()Laoy;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoy;->a(Laoy;)Laoy;

    goto :goto_18

    .line 68
    :cond_25
    invoke-virtual {p0, v3}, Laoy;->a(I)V

    goto :goto_4
.end method
