.class final Lcom/google/zxing/c/a/a/a/n;
.super Lcom/google/zxing/c/a/a/a/q;
.source "SourceFile"


# instance fields
.field private final b:C


# direct methods
.method constructor <init>(IC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/q;-><init>(I)V

    .line 41
    iput-char p2, p0, Lcom/google/zxing/c/a/a/a/n;->b:C

    .line 42
    return-void
.end method


# virtual methods
.method final a()C
    .registers 2

    .prologue
    .line 45
    iget-char v0, p0, Lcom/google/zxing/c/a/a/a/n;->b:C

    return v0
.end method

.method final b()Z
    .registers 3

    .prologue
    .line 49
    iget-char v0, p0, Lcom/google/zxing/c/a/a/a/n;->b:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
