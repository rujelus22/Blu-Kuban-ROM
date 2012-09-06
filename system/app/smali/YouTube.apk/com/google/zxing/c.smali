.class public final Lcom/google/zxing/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/b;

.field private b:Lcom/google/zxing/common/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_d

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_d
    iput-object p1, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/e;->b()I

    move-result v0

    return v0
.end method

.method public final a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/b;->a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/e;->c()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/zxing/common/b;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    if-nez v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->b()Lcom/google/zxing/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    .line 86
    :cond_c
    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/e;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/zxing/c;
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/e;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This luminance source does not support rotation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
