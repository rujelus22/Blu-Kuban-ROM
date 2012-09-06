.class LC/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/l;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private final c:LF/i;

.field private final d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, LC/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LC/m;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(LC/u;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LC/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, LC/m;->f:Z

    .line 56
    new-instance v0, LC/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LC/p;-><init>(LC/m;LC/n;)V

    invoke-interface {p1, v0}, LC/u;->a(Landroid/os/Handler$Callback;)LF/i;

    move-result-object v0

    iput-object v0, p0, LC/m;->c:LF/i;

    .line 57
    iput-boolean p2, p0, LC/m;->d:Z

    .line 58
    return-void
.end method

.method static synthetic a(LC/m;)V
    .registers 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, LC/m;->c()V

    return-void
.end method

.method static synthetic a(LC/m;LC/R;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, LC/m;->b(LC/R;)V

    return-void
.end method

.method static synthetic a(LC/m;LC/o;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, LC/m;->a(LC/o;)V

    return-void
.end method

.method static synthetic a(LC/m;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, LC/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(LC/m;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, LC/m;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(LC/o;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, LC/m;->d()V

    .line 203
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private b(LC/R;)V
    .registers 6
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, LC/m;->d()V

    .line 220
    invoke-virtual {p1}, LC/R;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 225
    iget-object v0, p0, LC/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 226
    if-lez v0, :cond_1e

    .line 227
    iget v0, p0, LC/m;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LC/m;->g:I

    .line 243
    :cond_1d
    return-void

    .line 230
    :cond_1e
    iget v0, p0, LC/m;->g:I

    if-lez v0, :cond_2b

    .line 231
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 234
    :cond_28
    const/4 v0, 0x0

    iput v0, p0, LC/m;->g:I

    .line 238
    :cond_2b
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/o;

    .line 239
    invoke-virtual {v0}, LC/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 240
    invoke-virtual {v0}, LC/o;->b()LC/T;

    move-result-object v0

    invoke-interface {v0, p1}, LC/T;->a(LC/R;)V

    goto :goto_31
.end method

.method static synthetic b(LC/m;LC/o;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, LC/m;->b(LC/o;)V

    return-void
.end method

.method static synthetic b(LC/m;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, LC/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(LC/o;)V
    .registers 5
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, LC/m;->d()V

    .line 209
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/o;

    .line 212
    invoke-virtual {v0}, LC/o;->b()LC/T;

    move-result-object v0

    invoke-virtual {p1}, LC/o;->b()LC/T;

    move-result-object v2

    if-ne v0, v2, :cond_e

    .line 216
    :cond_24
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, LC/m;->d()V

    .line 265
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/o;

    .line 266
    invoke-virtual {v0}, LC/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 267
    invoke-virtual {v0}, LC/o;->b()LC/T;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    .line 270
    :cond_27
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 191
    invoke-direct {p0}, LC/m;->d()V

    .line 193
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 195
    iget-object v0, p0, LC/m;->c:LF/i;

    invoke-interface {v0}, LF/i;->a()Landroid/os/Looper;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_13

    .line 197
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 199
    :cond_13
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, LC/m;->d()V

    .line 247
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/o;

    .line 248
    invoke-virtual {v0}, LC/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 249
    invoke-virtual {v0}, LC/o;->b()LC/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LC/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 252
    :cond_27
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 276
    iget-boolean v0, p0, LC/m;->d:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 277
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation must be called on the location thread. Called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2b
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, LC/m;->d()V

    .line 256
    iget-object v0, p0, LC/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/o;

    .line 257
    invoke-virtual {v0}, LC/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 258
    invoke-virtual {v0}, LC/o;->b()LC/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 261
    :cond_27
    return-void
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LC/m;->c:LF/i;

    invoke-interface {v1}, LF/i;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a()LF/i;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, LC/m;->c:LF/i;

    return-object v0
.end method

.method public a(LC/R;)V
    .registers 7
    .parameter

    .prologue
    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    .line 88
    invoke-virtual {p1}, LC/R;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 91
    iget-object v1, p0, LC/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 95
    :cond_16
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 97
    :cond_26
    invoke-static {p1}, LF/g;->a(Landroid/location/Location;)Lat/B;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lan/A;->e(Lat/B;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 99
    invoke-static {}, Lan/A;->k()Lan/A;

    move-result-object v1

    invoke-virtual {v1, v0}, Lan/A;->d(Lat/B;)Lat/B;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, LC/R;->setLatitude(D)V

    .line 101
    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, LC/R;->setLongitude(D)V

    .line 104
    :cond_4a
    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 105
    invoke-direct {p0, p1}, LC/m;->b(LC/R;)V

    .line 109
    :goto_53
    return-void

    .line 107
    :cond_54
    iget-object v0, p0, LC/m;->c:LF/i;

    iget-object v1, p0, LC/m;->c:LF/i;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, LF/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LF/i;->a(Landroid/os/Message;)Z

    goto :goto_53
.end method

.method public a(Ljava/lang/String;LC/T;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, LC/o;

    invoke-direct {v0, p1, p2}, LC/o;-><init>(Ljava/lang/String;LC/T;)V

    .line 77
    iget-object v1, p0, LC/m;->c:LF/i;

    iget-object v2, p0, LC/m;->c:LF/i;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, LF/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, LF/i;->a(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    invoke-direct {p0, p1, p2}, LC/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_9
    return-void

    .line 126
    :cond_a
    iget-object v0, p0, LC/m;->c:LF/i;

    iget-object v1, p0, LC/m;->c:LF/i;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, LF/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LF/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-direct {p0, p1, p2, p3}, LC/m;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    :goto_a
    return-void

    .line 136
    :cond_b
    iget-object v0, p0, LC/m;->c:LF/i;

    iget-object v1, p0, LC/m;->c:LF/i;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, p3, v5, v3}, LF/i;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LF/i;->a(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public b()V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    invoke-direct {p0}, LC/m;->c()V

    .line 67
    :goto_9
    return-void

    .line 65
    :cond_a
    iget-object v0, p0, LC/m;->c:LF/i;

    iget-object v1, p0, LC/m;->c:LF/i;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, LF/i;->a(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LF/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, LC/m;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    invoke-direct {p0, p1, p2}, LC/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_9
    return-void

    .line 116
    :cond_a
    iget-object v0, p0, LC/m;->c:LF/i;

    iget-object v1, p0, LC/m;->c:LF/i;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, LF/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LF/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method
