.class public Lcom/google/googlenav/friend/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Hashtable;


# instance fields
.field private final b:Lcom/google/googlenav/friend/aM;

.field private final c:Z

.field private d:Ljava/lang/Long;

.field private final e:Lcom/google/googlenav/ai;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/aK;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/googlenav/friend/aK;->g:I

    .line 95
    iput-object v3, p0, Lcom/google/googlenav/friend/aK;->h:Ljava/lang/Boolean;

    .line 98
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->i:J

    .line 101
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->j:J

    .line 104
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->k:J

    .line 107
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->l:J

    .line 136
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 137
    iput-object v3, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/aK;->c:Z

    .line 139
    iput-object v3, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/friend/aM;ZLcom/google/googlenav/ai;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/googlenav/friend/aK;->g:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/aK;->h:Ljava/lang/Boolean;

    .line 98
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->i:J

    .line 101
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->j:J

    .line 104
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->k:J

    .line 107
    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->l:J

    .line 124
    iput-object p1, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    .line 125
    iput-boolean p2, p0, Lcom/google/googlenav/friend/aK;->c:Z

    .line 126
    iput-object p3, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    .line 127
    invoke-virtual {p3}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/aK;->n:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->n:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 129
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/aK;->n:Ljava/lang/String;

    .line 131
    :cond_32
    return-void
.end method

.method private J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 882
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 885
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aK;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static a(Lcom/google/googlenav/a;)Z
    .registers 5
    .parameter

    .prologue
    .line 795
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->e()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private e(J)V
    .registers 5
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 418
    const/16 v1, 0x82

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 421
    iput-wide p1, p0, Lcom/google/googlenav/friend/aK;->l:J

    .line 422
    return-void
.end method

.method public static x()V
    .registers 1

    .prologue
    .line 696
    sget-object v0, Lcom/google/googlenav/friend/aK;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 697
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 732
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 733
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_2a
    return-object v0

    .line 736
    :cond_2b
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->l()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 741
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public B()[Lcom/google/googlenav/a;
    .registers 8

    .prologue
    const/16 v6, 0x9c

    .line 752
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 753
    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 754
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 755
    new-array v3, v2, [Lcom/google/googlenav/a;

    .line 756
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_25

    .line 757
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 759
    new-instance v5, Lcom/google/googlenav/a;

    invoke-direct {v5, v4}, Lcom/google/googlenav/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v5, v3, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 761
    :cond_25
    return-object v3
.end method

.method public C()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v1

    .line 813
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->j()Z

    move-result v2

    if-eqz v2, :cond_1b

    array-length v2, v1

    if-lez v2, :cond_1b

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/googlenav/friend/aK;->a(Lcom/google/googlenav/a;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public D()Lcom/google/googlenav/a;
    .registers 3

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v0

    .line 826
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public E()Lat/B;
    .registers 3

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 841
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    .line 843
    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    goto :goto_15
.end method

.method public F()J
    .registers 6

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v0

    .line 902
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/googlenav/a;->b()J

    move-result-wide v3

    sub-long v0, v1, v3

    :goto_1f
    return-wide v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->p()J

    move-result-wide v0

    goto :goto_1f
.end method

.method public G()Z
    .registers 3

    .prologue
    .line 999
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/aK;->d(J)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1012
    const/16 v1, 0xaa

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public a(ZZ)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 859
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-direct {p0}, Lcom/google/googlenav/friend/aK;->J()Ljava/lang/String;

    move-result-object v1

    .line 862
    if-eqz p1, :cond_31

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 863
    const/16 v2, 0x98

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    :cond_31
    :goto_31
    return-object v0

    :cond_32
    invoke-virtual {p0, p2}, Lcom/google/googlenav/friend/aK;->g(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 244
    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 245
    iput p1, p0, Lcom/google/googlenav/friend/aK;->g:I

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    if-eqz v0, :cond_1c

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->h()V

    .line 251
    :cond_1c
    return-void
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->k:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 443
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/aK;->k:J

    .line 447
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 451
    const/16 v1, 0x79

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 454
    iput-wide p1, p0, Lcom/google/googlenav/friend/aK;->i:J

    .line 458
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3e

    .line 459
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->l:J

    .line 463
    :goto_36
    const/16 v1, 0x82

    iget-wide v2, p0, Lcom/google/googlenav/friend/aK;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 466
    return-void

    .line 461
    :cond_3e
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/googlenav/friend/aK;->l:J

    goto :goto_36
.end method

.method public a(Lat/g;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ai;->c(Lat/g;)V

    .line 182
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    if-eqz v0, :cond_e

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->h()V

    .line 185
    :cond_e
    return-void
.end method

.method public a(Lcom/google/googlenav/a;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 769
    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 770
    const/16 v1, 0x9c

    invoke-virtual {p1}, Lcom/google/googlenav/a;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 772
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ai;->f(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public a(Ln/B;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ai;->a(Ln/B;)V

    .line 203
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 294
    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 296
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v11, 0x9

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    const/high16 v8, -0x8000

    .line 917
    const/4 v1, 0x5

    invoke-static {p1, v1, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 919
    const/4 v3, 0x6

    invoke-static {p1, v3, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 924
    if-eq v1, v8, :cond_7a

    if-eq v3, v8, :cond_7a

    .line 926
    const/4 v4, 0x7

    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    .line 930
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_24

    .line 989
    :goto_23
    return v0

    .line 934
    :cond_24
    cmp-long v6, v4, v9

    if-eqz v6, :cond_2b

    .line 935
    invoke-virtual {p0, v4, v5}, Lcom/google/googlenav/friend/aK;->a(J)V

    .line 938
    :cond_2b
    new-instance v4, Lat/B;

    invoke-direct {v4, v1, v3}, Lat/B;-><init>(II)V

    .line 939
    invoke-virtual {p0, v4}, Lcom/google/googlenav/friend/aK;->a(Lat/g;)V

    .line 942
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->t()V

    .line 943
    invoke-virtual {p1, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v1, v0

    .line 944
    :goto_3b
    if-ge v1, v3, :cond_47

    .line 945
    invoke-virtual {p1, v11, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/friend/aK;->a(Ljava/lang/String;)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 949
    :cond_47
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    .line 951
    cmp-long v1, v3, v9

    if-eqz v1, :cond_54

    .line 952
    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/friend/aK;->c(J)V

    .line 956
    :cond_54
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    .line 958
    cmp-long v1, v3, v9

    if-eqz v1, :cond_61

    .line 959
    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/friend/aK;->b(J)V

    .line 963
    :cond_61
    const/16 v1, 0xe

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    .line 965
    cmp-long v1, v3, v9

    if-eqz v1, :cond_6e

    .line 966
    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/friend/aK;->e(J)V

    .line 969
    :cond_6e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 970
    iput-boolean v0, p0, Lcom/google/googlenav/friend/aK;->m:Z

    .line 971
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aK;->h(Z)V

    .line 972
    const/4 v0, 0x1

    .line 976
    :cond_7a
    const/16 v1, 0x1b

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 977
    const/16 v3, 0x1c

    invoke-static {p1, v3, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 981
    if-eqz v1, :cond_9b

    .line 982
    invoke-static {v1}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v1

    .line 984
    :goto_8c
    if-eqz v1, :cond_97

    .line 985
    new-instance v2, Ln/B;

    invoke-direct {v2, v1, v3}, Ln/B;-><init>(Ln/p;I)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/aK;->a(Ln/B;)V

    goto :goto_23

    .line 987
    :cond_97
    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/aK;->a(Ln/B;)V

    goto :goto_23

    :cond_9b
    move-object v1, v2

    goto :goto_8c
.end method

.method public b(J)V
    .registers 5
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 481
    const/16 v1, 0x83

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 484
    iput-wide p1, p0, Lcom/google/googlenav/friend/aK;->j:J

    .line 485
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 319
    const/16 v1, 0x84

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 321
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/googlenav/friend/aK;->c:Z

    return v0
.end method

.method public c(Z)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 544
    .line 545
    if-eqz p1, :cond_15

    .line 546
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 548
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_14
    :goto_14
    return-object v0

    .line 551
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public c(J)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0x7a

    .line 506
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 508
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_18

    .line 509
    invoke-virtual {v0, v3, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 515
    :goto_17
    return-void

    .line 512
    :cond_18
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_17
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Lat/B;
    .registers 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->m()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->r()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2a

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    .line 174
    :cond_2a
    return-object v0
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/google/googlenav/friend/aK;->f:Z

    .line 577
    return-void
.end method

.method public d(J)Z
    .registers 7
    .parameter

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public e(Z)I
    .registers 3
    .parameter

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 612
    if-eqz p1, :cond_c

    const v0, 0x600000ff

    .line 617
    :goto_b
    return v0

    .line 612
    :cond_c
    const v0, 0x500000ff

    goto :goto_b

    .line 617
    :cond_10
    if-eqz p1, :cond_16

    const v0, 0x40800080

    goto :goto_b

    :cond_16
    const v0, 0x20800080

    goto :goto_b
.end method

.method public e()Ln/B;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 194
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 197
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public f(Z)I
    .registers 3
    .parameter

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 627
    if-eqz p1, :cond_c

    const v0, 0x180000ff

    .line 632
    :goto_b
    return v0

    .line 627
    :cond_c
    const v0, 0x100000ff

    goto :goto_b

    .line 632
    :cond_10
    if-eqz p1, :cond_16

    const v0, 0x20800080

    goto :goto_b

    :cond_16
    const v0, 0x10800080

    goto :goto_b
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aK;->c(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 5

    .prologue
    .line 230
    iget v0, p0, Lcom/google/googlenav/friend/aK;->g:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x80

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;III)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/aK;->g:I

    .line 235
    :cond_16
    iget v0, p0, Lcom/google/googlenav/friend/aK;->g:I

    return v0
.end method

.method public h(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1025
    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1028
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->h()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 285
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    :cond_7
    :goto_7
    return v0

    .line 304
    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 307
    const/16 v2, 0x84

    .line 309
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public m()Z
    .registers 4

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    const/4 v0, 0x0

    .line 339
    :goto_7
    return v0

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 331
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 334
    const/16 v1, 0x85

    .line 336
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    iput-object v0, p0, Lcom/google/googlenav/friend/aK;->h:Ljava/lang/Boolean;

    .line 339
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7

    .line 336
    :cond_31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28
.end method

.method public n()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->d:Ljava/lang/Long;

    if-nez v0, :cond_1c

    .line 345
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 348
    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/aK;->d:Ljava/lang/Long;

    .line 350
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public o()J
    .registers 5

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->i:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 372
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x79

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/aK;->i:J

    .line 376
    :cond_18
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->i:J

    return-wide v0
.end method

.method public p()J
    .registers 5

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->l:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x82

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/aK;->l:J

    .line 409
    :cond_18
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->l:J

    return-wide v0
.end method

.method public q()J
    .registers 5

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->k:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 489
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/aK;->k:J

    .line 491
    :cond_e
    iget-wide v0, p0, Lcom/google/googlenav/friend/aK;->k:J

    return-wide v0
.end method

.method public r()J
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x7a

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 558
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 559
    :goto_7
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lez v1, :cond_12

    .line 560
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    goto :goto_7

    .line 562
    :cond_12
    return-void
.end method

.method public u()Z
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 583
    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 670
    :cond_8
    :goto_8
    return v0

    .line 655
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 656
    goto :goto_8

    .line 660
    :cond_11
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    .line 661
    goto :goto_8

    .line 666
    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/googlenav/friend/aK;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 667
    goto :goto_8
.end method

.method public w()Z
    .registers 5

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v0

    .line 680
    sget-object v1, Lcom/google/googlenav/friend/aK;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v1

    if-eq v1, v0, :cond_24

    const/4 v0, 0x1

    .line 683
    :goto_18
    if-eqz v0, :cond_23

    .line 686
    iget-object v1, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    if-eqz v1, :cond_23

    .line 687
    iget-object v1, p0, Lcom/google/googlenav/friend/aK;->b:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aM;->h()V

    .line 691
    :cond_23
    return v0

    .line 681
    :cond_24
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public y()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 703
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(B)V

    .line 709
    :goto_e
    return-void

    .line 706
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(B)V

    .line 707
    iget-object v0, p0, Lcom/google/googlenav/friend/aK;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->c(Z)V

    goto :goto_e
.end method

.method public z()C
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 723
    sget-char v0, Lcom/google/googlenav/ui/bn;->C:C

    .line 725
    :goto_8
    return v0

    :cond_9
    sget-char v0, Lcom/google/googlenav/ui/bn;->B:C

    goto :goto_8
.end method
