.class public final Lcom/google/net/async/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/c;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/net/async/p;


# direct methods
.method private constructor <init>(Lcom/google/net/async/p;)V
    .registers 4
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-nez p1, :cond_d

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatcher cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_d
    iput-object p1, p0, Lcom/google/net/async/w;->a:Lcom/google/net/async/p;

    .line 202
    return-void
.end method

.method public static a(Lcom/google/net/async/p;J)Lcom/google/net/async/w;
    .registers 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 184
    cmp-long v0, p1, v1

    if-gez v0, :cond_1b

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delayMs cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1b
    new-instance v0, Lcom/google/net/async/w;

    invoke-direct {v0, p0}, Lcom/google/net/async/w;-><init>(Lcom/google/net/async/p;)V

    .line 189
    cmp-long v1, p1, v1

    if-nez v1, :cond_28

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/net/async/p;->execute(Ljava/lang/Runnable;)V

    .line 194
    :goto_27
    return-object v0

    .line 192
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/net/async/p;->a(JLjava/lang/Object;Lcom/google/net/async/c;)Lcom/google/net/async/b;

    goto :goto_27
.end method


# virtual methods
.method public final a(Lcom/google/net/async/b;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/net/async/w;->a:Lcom/google/net/async/p;

    invoke-virtual {v0}, Lcom/google/net/async/p;->b()V

    .line 210
    return-void
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/net/async/w;->a:Lcom/google/net/async/p;

    invoke-virtual {v0}, Lcom/google/net/async/p;->b()V

    .line 206
    return-void
.end method
