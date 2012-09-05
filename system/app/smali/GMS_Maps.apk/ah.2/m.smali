.class public Lah/m;
.super Ljava/lang/Object;

# interfaces
.implements Lah/d;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lah/g;

.field private final c:Lah/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lah/m;->a:[I

    return-void
.end method

.method public constructor <init>(Lah/d;Lah/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lah/m;->c:Lah/d;

    iput-object p2, p0, Lah/m;->b:Lah/g;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lah/m;->c:Lah/d;

    invoke-interface {v0}, Lah/d;->a()I

    move-result v0

    return v0
.end method

.method public a(C)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lah/m;->c:Lah/d;

    invoke-interface {v0, p1}, Lah/d;->a(C)I

    move-result v0

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)I
    .registers 11

    sget-object v8, Lah/m;->a:[I

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lah/m;->c:Lah/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lah/m;->a:[I

    iget-object v6, p0, Lah/m;->b:Lah/g;

    sget-object v7, Lah/r;->b:Lah/c;

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lah/r;->a(Lah/e;Lah/d;Ljava/lang/String;II[ILah/g;Lah/c;)V

    sget-object v0, Lah/m;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v8

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(Ljava/lang/String;II)I
    .registers 15

    sget-object v10, Lah/m;->a:[I

    monitor-enter v10

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lah/m;->c:Lah/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lah/m;->a:[I

    iget-object v8, p0, Lah/m;->b:Lah/g;

    sget-object v9, Lah/r;->b:Lah/c;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lah/r;->a(Lah/e;Lah/d;Ljava/lang/String;IIII[ILah/g;Lah/c;)V

    sget-object v0, Lah/m;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v10

    return v0

    :catchall_1b
    move-exception v0

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public a(Lah/e;Ljava/lang/String;II)V
    .registers 14

    invoke-interface {p1}, Lah/e;->e()Lah/d;

    move-result-object v8

    :try_start_4
    iget-object v1, p0, Lah/m;->c:Lah/d;

    const/4 v5, 0x0

    iget-object v6, p0, Lah/m;->b:Lah/g;

    sget-object v7, Lah/r;->b:Lah/c;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lah/r;->a(Lah/e;Lah/d;Ljava/lang/String;II[ILah/g;Lah/c;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    invoke-interface {p1, v8}, Lah/e;->a(Lah/d;)V

    return-void

    :catchall_16
    move-exception v0

    invoke-interface {p1, v8}, Lah/e;->a(Lah/d;)V

    throw v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lah/m;->c:Lah/d;

    invoke-interface {v0}, Lah/d;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lah/m;->c:Lah/d;

    invoke-interface {v0}, Lah/d;->c()I

    move-result v0

    return v0
.end method
