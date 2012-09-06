.class public final Lcom/google/zxing/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/google/zxing/a/b/a;

    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/a/b/a;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {v0}, Lcom/google/zxing/a/b/a;->a()Lcom/google/zxing/a/a;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/zxing/a/a;->e()[Lcom/google/zxing/j;

    move-result-object v3

    .line 62
    if-eqz p2, :cond_29

    .line 63
    sget-object v0, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/k;

    .line 64
    if-eqz v0, :cond_29

    .line 65
    const/4 v1, 0x0

    :goto_1e
    array-length v4, v3

    if-ge v1, v4, :cond_29

    .line 66
    aget-object v4, v3, v1

    invoke-interface {v0, v4}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 71
    :cond_29
    new-instance v0, Lcom/google/zxing/a/a/a;

    invoke-direct {v0}, Lcom/google/zxing/a/a/a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/zxing/a/a/a;->a(Lcom/google/zxing/a/a;)Lcom/google/zxing/common/g;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/google/zxing/h;

    invoke-virtual {v0}, Lcom/google/zxing/common/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/common/g;->a()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 75
    invoke-virtual {v0}, Lcom/google/zxing/common/g;->c()Ljava/util/Vector;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_4c

    .line 77
    sget-object v3, Lcom/google/zxing/i;->c:Lcom/google/zxing/i;

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 79
    :cond_4c
    invoke-virtual {v0}, Lcom/google/zxing/common/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_57

    .line 81
    sget-object v2, Lcom/google/zxing/i;->d:Lcom/google/zxing/i;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 84
    :cond_57
    return-object v1
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method
