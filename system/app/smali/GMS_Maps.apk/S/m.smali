.class public LS/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/d;


# static fields
.field private static final a:[I


# instance fields
.field private final b:LS/g;

.field private final c:LS/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, LS/m;->a:[I

    return-void
.end method

.method public constructor <init>(LS/d;LS/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, LS/m;->c:LS/d;

    .line 29
    iput-object p2, p0, LS/m;->b:LS/g;

    .line 30
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LS/m;->c:LS/d;

    invoke-interface {v0}, LS/d;->a()I

    move-result v0

    return v0
.end method

.method public a(C)I
    .registers 3
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, LS/m;->c:LS/d;

    invoke-interface {v0, p1}, LS/d;->a(C)I

    move-result v0

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)I
    .registers 11
    .parameter

    .prologue
    .line 48
    sget-object v8, LS/m;->a:[I

    monitor-enter v8

    .line 51
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, LS/m;->c:LS/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, LS/m;->a:[I

    iget-object v6, p0, LS/m;->b:LS/g;

    sget-object v7, LS/r;->b:LS/c;

    move-object v2, p1

    invoke-static/range {v0 .. v7}, LS/r;->a(LS/e;LS/d;Ljava/lang/String;II[ILS/g;LS/c;)V

    .line 53
    sget-object v0, LS/m;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v8

    return v0

    .line 54
    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(Ljava/lang/String;II)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    sget-object v10, LS/m;->a:[I

    monitor-enter v10

    .line 62
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, LS/m;->c:LS/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, LS/m;->a:[I

    iget-object v8, p0, LS/m;->b:LS/g;

    sget-object v9, LS/r;->b:LS/c;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, LS/r;->a(LS/e;LS/d;Ljava/lang/String;IIII[ILS/g;LS/c;)V

    .line 64
    sget-object v0, LS/m;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v10

    return v0

    .line 65
    :catchall_1b
    move-exception v0

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public a(LS/e;Ljava/lang/String;II)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-interface {p1}, LS/e;->e()LS/d;

    move-result-object v8

    .line 78
    :try_start_4
    iget-object v1, p0, LS/m;->c:LS/d;

    const/4 v5, 0x0

    iget-object v6, p0, LS/m;->b:LS/g;

    sget-object v7, LS/r;->b:LS/c;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, LS/r;->a(LS/e;LS/d;Ljava/lang/String;II[ILS/g;LS/c;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 81
    invoke-interface {p1, v8}, LS/e;->a(LS/d;)V

    .line 83
    return-void

    .line 81
    :catchall_16
    move-exception v0

    invoke-interface {p1, v8}, LS/e;->a(LS/d;)V

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, LS/m;->c:LS/d;

    invoke-interface {v0}, LS/d;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, LS/m;->c:LS/d;

    invoke-interface {v0}, LS/d;->c()I

    move-result v0

    return v0
.end method
