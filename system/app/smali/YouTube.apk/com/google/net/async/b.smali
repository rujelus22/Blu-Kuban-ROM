.class public Lcom/google/net/async/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:Lcom/google/net/async/c;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/net/async/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/b;->a:Z

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/net/async/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 25
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(JJLcom/google/net/async/c;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/google/net/async/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/google/net/async/b;->c:I

    .line 139
    sget-boolean v0, Lcom/google/net/async/b;->a:Z

    if-nez v0, :cond_1b

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_1b
    sget-boolean v0, Lcom/google/net/async/b;->a:Z

    if-nez v0, :cond_29

    cmp-long v0, p1, p3

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_29
    sget-boolean v0, Lcom/google/net/async/b;->a:Z

    if-nez v0, :cond_35

    if-nez p5, :cond_35

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_35
    iput-wide p1, p0, Lcom/google/net/async/b;->d:J

    .line 144
    iput-wide p3, p0, Lcom/google/net/async/b;->e:J

    .line 145
    iput-object p5, p0, Lcom/google/net/async/b;->f:Lcom/google/net/async/c;

    .line 146
    iput-object p6, p0, Lcom/google/net/async/b;->g:Ljava/lang/Object;

    .line 147
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/net/async/b;->d:J

    return-wide v0
.end method

.method public final b()Lcom/google/net/async/c;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/net/async/b;->f:Lcom/google/net/async/c;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/net/async/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1
    check-cast p1, Lcom/google/net/async/b;

    iget-wide v2, p0, Lcom/google/net/async/b;->d:J

    iget-wide v4, p1, Lcom/google/net/async/b;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-wide v2, p0, Lcom/google/net/async/b;->d:J

    iget-wide v4, p1, Lcom/google/net/async/b;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    move v0, v1

    goto :goto_c

    :cond_17
    iget v2, p0, Lcom/google/net/async/b;->c:I

    iget v3, p1, Lcom/google/net/async/b;->c:I

    if-lt v2, v3, :cond_c

    iget v0, p0, Lcom/google/net/async/b;->c:I

    iget v2, p1, Lcom/google/net/async/b;->c:I

    if-le v0, v2, :cond_25

    move v0, v1

    goto :goto_c

    :cond_25
    sget-boolean v0, Lcom/google/net/async/b;->a:Z

    if-nez v0, :cond_31

    if-eq p0, p1, :cond_31

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expiration-time("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/net/async/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-wide v1, p0, Lcom/google/net/async/b;->d:J

    iget-wide v3, p0, Lcom/google/net/async/b;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + Creation-time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-wide v1, p0, Lcom/google/net/async/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); time is msec since epoch, hash code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
