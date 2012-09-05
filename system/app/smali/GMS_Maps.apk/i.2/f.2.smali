.class public final Li/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Li/z;

.field private final c:Lm/b;

.field private final d:Ljava/io/PrintWriter;

.field private final e:Ljava/util/Date;

.field private final f:Ljava/lang/StringBuffer;

.field private final g:Ljava/text/FieldPosition;

.field private final h:Ljava/text/SimpleDateFormat;

.field private final i:Ljava/util/EnumSet;

.field private final j:[Li/y;

.field private final k:[I

.field private final l:[J

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(Li/z;Lm/b;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Li/f;->e:Ljava/util/Date;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Li/f;->f:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Li/f;->g:Ljava/text/FieldPosition;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li/f;->h:Ljava/text/SimpleDateFormat;

    sget-object v0, Li/d;->h:Li/d;

    sget-object v1, Li/d;->w:Li/d;

    sget-object v2, Li/d;->x:Li/d;

    sget-object v3, Li/d;->M:Li/d;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Li/f;->i:Ljava/util/EnumSet;

    invoke-static {}, Li/d;->values()[Li/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Li/y;

    iput-object v0, p0, Li/f;->j:[Li/y;

    invoke-static {}, Li/d;->values()[Li/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Li/f;->k:[I

    invoke-static {}, Li/d;->values()[Li/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Li/f;->l:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/f;->m:J

    const/4 v0, -0x1

    iput v0, p0, Li/f;->n:I

    iput-object p1, p0, Li/f;->b:Li/z;

    iput-object p2, p0, Li/f;->c:Lm/b;

    iput-object p3, p0, Li/f;->d:Ljava/io/PrintWriter;

    iget-object v0, p0, Li/f;->l:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private declared-synchronized a(Li/y;)V
    .registers 3

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Li/f;->a(Li/y;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Li/y;I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    iget-object v1, p0, Li/f;->l:[J

    iget-object v0, v0, Li/y;->e:Li/d;

    invoke-virtual {v0}, Li/d;->ordinal()I

    move-result v0

    iget-wide v2, p1, Li/y;->f:J

    aput-wide v2, v1, v0

    :cond_1d
    iget-object v0, p0, Li/f;->j:[Li/y;

    iget-object v1, p1, Li/y;->e:Li/d;

    invoke-virtual {v1}, Li/d;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    iget-object v0, p0, Li/f;->k:[I

    iget-object v1, p1, Li/y;->e:Li/d;

    invoke-virtual {v1}, Li/d;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p1, Li/y;->e:Li/d;

    sget-object v1, Li/d;->n:Li/d;

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6d

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    iget-object v0, v0, Li/y;->e:Li/d;

    sget-object v1, Li/d;->n:Li/d;

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    iget-object v1, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    iget-object v0, v0, Li/y;->e:Li/d;

    sget-object v1, Li/d;->n:Li/d;

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_6d
    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_72
    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_85

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_82

    goto :goto_72

    :catchall_82
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_85
    :try_start_85
    iget-object v0, p1, Li/y;->e:Li/d;

    iget-object v0, v0, Li/d;->Q:Li/e;

    sget-object v1, Li/e;->a:Li/e;

    if-ne v0, v1, :cond_91

    iget-wide v0, p1, Li/y;->f:J

    iput-wide v0, p0, Li/f;->m:J

    :cond_91
    iget-object v0, p1, Li/y;->e:Li/d;

    sget-object v1, Li/d;->u:Li/d;

    if-eq v0, v1, :cond_a7

    sget-object v1, Li/d;->t:Li/d;

    if-eq v0, v1, :cond_a7

    sget-object v1, Li/d;->e:Li/d;

    if-eq v0, v1, :cond_a7

    sget-object v1, Li/d;->N:Li/d;

    if-eq v0, v1, :cond_a7

    sget-object v1, Li/d;->O:Li/d;

    if-ne v0, v1, :cond_112

    :cond_a7
    iput p2, p0, Li/f;->n:I

    :goto_a9
    iget-object v0, p0, Li/f;->c:Lm/b;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Li/f;->i:Ljava/util/EnumSet;

    iget-object v1, p1, Li/y;->e:Li/d;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    iget-object v0, p0, Li/f;->c:Lm/b;

    const-string v1, "gmmNlpEventLog"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lm/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_dd

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Li/y;->b(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li/f;->c:Lm/b;

    const-string v2, "gmmNlpEventLog"

    invoke-interface {v1, v2, v0}, Lm/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    iget-object v0, p0, Li/f;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_110

    iget-object v0, p0, Li/f;->e:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Li/f;->f:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Li/f;->h:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Li/f;->e:Ljava/util/Date;

    iget-object v2, p0, Li/f;->f:Ljava/lang/StringBuffer;

    iget-object v3, p0, Li/f;->g:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Li/f;->d:Ljava/io/PrintWriter;

    iget-object v1, p0, Li/f;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li/f;->d:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Li/y;->b(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Li/f;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_110
    .catchall {:try_start_85 .. :try_end_110} :catchall_82

    :cond_110
    monitor-exit p0

    return-void

    :cond_112
    const/4 v0, -0x1

    :try_start_113
    iput v0, p0, Li/f;->n:I
    :try_end_115
    .catchall {:try_start_113 .. :try_end_115} :catchall_82

    goto :goto_a9
.end method


# virtual methods
.method public a(I)V
    .registers 8

    new-instance v0, Li/r;

    sget-object v2, Li/d;->e:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/r;-><init>(Li/f;Li/d;JI)V

    invoke-direct {p0, v0, p1}, Li/f;->a(Li/y;I)V

    return-void
.end method

.method public a(IIZ)V
    .registers 12

    new-instance v0, Li/s;

    sget-object v2, Li/d;->f:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Li/s;-><init>(Li/f;Li/d;JIIZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(IJ)V
    .registers 12

    new-instance v0, Li/k;

    sget-object v2, Li/d;->t:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Li/k;-><init>(Li/f;Li/d;JIJ)V

    invoke-direct {p0, v0, p1}, Li/f;->a(Li/y;I)V

    return-void
.end method

.method public a(IZ)V
    .registers 10

    new-instance v0, Li/g;

    sget-object v2, Li/d;->c:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Li/g;-><init>(Li/f;Li/d;JIZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(Le/L;)V
    .registers 8

    new-instance v0, Li/i;

    sget-object v2, Li/d;->r:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/i;-><init>(Li/f;Li/d;JLe/L;)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(Le/b;)V
    .registers 8

    new-instance v0, Li/t;

    sget-object v2, Li/d;->g:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/t;-><init>(Li/f;Li/d;JLe/b;)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(Le/u;)V
    .registers 8

    new-instance v0, Li/l;

    sget-object v2, Li/d;->L:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/l;-><init>(Li/f;Li/d;JLe/u;)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(Li/B;)V
    .registers 8

    new-instance v0, Li/x;

    sget-object v2, Li/d;->n:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/x;-><init>(Li/f;Li/d;JLi/B;)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(Li/d;)V
    .registers 5

    new-instance v0, Li/y;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Li/y;-><init>(Li/d;J)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/io/PrintWriter;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    iget-object v2, v0, Li/y;->e:Li/d;

    iget-object v2, v2, Li/d;->Q:Li/e;

    sget-object v3, Li/e;->a:Li/e;

    if-ne v2, v3, :cond_20

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_20
    invoke-virtual {v0, p1}, Li/y;->b(Ljava/io/PrintWriter;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_7

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Li/p;

    sget-object v2, Li/d;->M:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Li/p;-><init>(Li/f;Li/d;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/text/Format;JJLjava/io/PrintWriter;)V
    .registers 14

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-wide/32 v2, 0x927c0

    sub-long v2, p4, v2

    iget-object v0, p0, Li/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    iget-wide v5, v0, Li/y;->f:J

    cmp-long v5, v5, v2

    if-ltz v5, :cond_13

    iget-object v5, v0, Li/y;->e:Li/d;

    iget-object v5, v5, Li/d;->Q:Li/e;

    sget-object v6, Li/e;->a:Li/e;

    if-ne v5, v6, :cond_32

    const/16 v5, 0xa

    invoke-virtual {p6, v5}, Ljava/io/PrintWriter;->print(C)V

    :cond_32
    invoke-virtual {v1, p2, p3}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v0, p1, v1, p6}, Li/y;->a(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_39

    goto :goto_13

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3c
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .registers 8

    new-instance v0, Li/q;

    sget-object v2, Li/d;->d:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/q;-><init>(Li/f;Li/d;JZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public a(ZZ)V
    .registers 10

    new-instance v0, Li/w;

    sget-object v2, Li/d;->o:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Li/w;-><init>(Li/f;Li/d;JZZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public b(I)V
    .registers 8

    new-instance v0, Li/u;

    sget-object v2, Li/d;->h:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/u;-><init>(Li/f;Li/d;JI)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public b(Z)V
    .registers 8

    new-instance v0, Li/v;

    sget-object v2, Li/d;->i:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/v;-><init>(Li/f;Li/d;JZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public c(I)V
    .registers 8

    new-instance v0, Li/n;

    sget-object v2, Li/d;->N:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/n;-><init>(Li/f;Li/d;JI)V

    invoke-direct {p0, v0, p1}, Li/f;->a(Li/y;I)V

    return-void
.end method

.method public c(Z)V
    .registers 8

    new-instance v0, Li/h;

    sget-object v2, Li/d;->q:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/h;-><init>(Li/f;Li/d;JZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public d(I)V
    .registers 8

    new-instance v0, Li/o;

    sget-object v2, Li/d;->O:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/o;-><init>(Li/f;Li/d;JI)V

    invoke-direct {p0, v0, p1}, Li/f;->a(Li/y;I)V

    return-void
.end method

.method public d(Z)V
    .registers 8

    new-instance v0, Li/j;

    sget-object v2, Li/d;->s:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/j;-><init>(Li/f;Li/d;JZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public e(Z)V
    .registers 8

    new-instance v0, Li/m;

    sget-object v2, Li/d;->J:Li/d;

    iget-object v1, p0, Li/f;->b:Li/z;

    invoke-interface {v1}, Li/z;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Li/m;-><init>(Li/f;Li/d;JZ)V

    invoke-direct {p0, v0}, Li/f;->a(Li/y;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Li/f;->a(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
