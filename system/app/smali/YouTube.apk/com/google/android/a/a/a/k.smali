.class final Lcom/google/android/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/Exception;

.field private c:Lcom/google/android/a/a/a/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/google/android/a/a/a/l;->a:Lcom/google/android/a/a/a/l;

    iput-object v0, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Lcom/google/android/a/a/a/l;->c:Lcom/google/android/a/a/a/l;

    iput-object v0, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    .line 210
    iput-object p1, p0, Lcom/google/android/a/a/a/k;->b:Ljava/lang/Exception;

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-object v0, Lcom/google/android/a/a/a/l;->b:Lcom/google/android/a/a/a/l;

    iput-object v0, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    .line 204
    iput-object p1, p0, Lcom/google/android/a/a/a/k;->a:Ljava/nio/ByteBuffer;

    .line 205
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 219
    sget-object v0, Lcom/google/android/a/a/a/l;->b:Lcom/google/android/a/a/a/l;

    iget-object v1, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data accessed when state was not DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_12
    iget-object v0, p0, Lcom/google/android/a/a/a/k;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .registers 3

    .prologue
    .line 231
    sget-object v0, Lcom/google/android/a/a/a/l;->c:Lcom/google/android/a/a/a/l;

    iget-object v1, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data accessed when state was not ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_12
    iget-object v0, p0, Lcom/google/android/a/a/a/k;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/a/a/a/l;->a:Lcom/google/android/a/a/a/l;

    iget-object v1, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 3

    .prologue
    .line 250
    sget-object v0, Lcom/google/android/a/a/a/l;->c:Lcom/google/android/a/a/a/l;

    iget-object v1, p0, Lcom/google/android/a/a/a/k;->c:Lcom/google/android/a/a/a/l;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
