.class public final Lcom/google/zxing/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private c:[Lcom/google/zxing/j;

.field private final d:Lcom/google/zxing/a;

.field private e:Ljava/util/Hashtable;

.field private final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;J)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/h;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/zxing/h;->b:[B

    .line 50
    iput-object p3, p0, Lcom/google/zxing/h;->c:[Lcom/google/zxing/j;

    .line 51
    iput-object p4, p0, Lcom/google/zxing/h;->d:Lcom/google/zxing/a;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    .line 53
    iput-wide p5, p0, Lcom/google/zxing/h;->f:J

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/zxing/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/zxing/i;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    .line 99
    :cond_c
    iget-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final a(Ljava/util/Hashtable;)V
    .registers 6
    .parameter

    .prologue
    .line 103
    if-eqz p1, :cond_8

    .line 104
    iget-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    if-nez v0, :cond_9

    .line 105
    iput-object p1, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    .line 115
    :cond_8
    return-void

    .line 107
    :cond_9
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 108
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/i;

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public final a([Lcom/google/zxing/j;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/zxing/h;->c:[Lcom/google/zxing/j;

    .line 119
    if-nez v0, :cond_8

    .line 120
    iput-object p1, p0, Lcom/google/zxing/h;->c:[Lcom/google/zxing/j;

    .line 127
    :cond_7
    :goto_7
    return-void

    .line 121
    :cond_8
    if-eqz p1, :cond_7

    array-length v1, p1

    if-lez v1, :cond_7

    .line 122
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/zxing/j;

    .line 123
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v1, p0, Lcom/google/zxing/h;->c:[Lcom/google/zxing/j;

    goto :goto_7
.end method

.method public final b()[Lcom/google/zxing/j;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/zxing/h;->c:[Lcom/google/zxing/j;

    return-object v0
.end method

.method public final c()Lcom/google/zxing/a;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/zxing/h;->d:Lcom/google/zxing/a;

    return-object v0
.end method

.method public final d()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/zxing/h;->e:Ljava/util/Hashtable;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/zxing/h;->a:Ljava/lang/String;

    return-object v0
.end method
