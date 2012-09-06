.class public final Lcom/google/api/client/http/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/api/client/http/i;

.field private b:Lcom/google/api/client/http/j;

.field private c:Lcom/google/api/client/http/j;

.field private d:Z

.field private e:I

.field private f:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private g:I

.field private h:Lcom/google/api/client/http/h;

.field private final i:Lcom/google/api/client/http/r;

.field private j:Lcom/google/api/client/http/HttpMethod;

.field private k:Lcom/google/api/client/http/g;

.field private l:I

.field private m:I

.field private n:Lcom/google/api/client/http/s;

.field private final o:Ljava/util/Map;

.field private p:Z

.field private q:Lcom/google/api/client/http/c;

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/http/HttpMethod;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0}, Lcom/google/api/client/http/j;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    .line 88
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0}, Lcom/google/api/client/http/j;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/l;->c:Lcom/google/api/client/http/j;

    .line 95
    iput-boolean v1, p0, Lcom/google/api/client/http/l;->d:Z

    .line 102
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/l;->e:I

    .line 132
    const v0, 0x186a0

    iput v0, p0, Lcom/google/api/client/http/l;->g:I

    .line 147
    iput v2, p0, Lcom/google/api/client/http/l;->l:I

    .line 153
    iput v2, p0, Lcom/google/api/client/http/l;->m:I

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/l;->o:Ljava/util/Map;

    .line 168
    iput-boolean v1, p0, Lcom/google/api/client/http/l;->r:Z

    .line 174
    iput-boolean v1, p0, Lcom/google/api/client/http/l;->s:Z

    .line 181
    iput-object p1, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    .line 183
    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/u;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 915
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 933
    :cond_8
    :goto_8
    return-void

    .line 919
    :cond_9
    instance-of v0, p4, Ljava/lang/Enum;

    if-eqz v0, :cond_40

    check-cast p4, Ljava/lang/Enum;

    invoke-static {p4}, Lcom/google/api/client/util/n;->a(Ljava/lang/Enum;)Lcom/google/api/client/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_17
    if-eqz p1, :cond_3c

    .line 923
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 925
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :goto_37
    sget-object v1, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_3c
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 919
    :cond_40
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 927
    :cond_45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 945
    if-nez p0, :cond_4

    .line 946
    const/4 p0, 0x0

    .line 949
    :cond_3
    :goto_3
    return-object p0

    .line 948
    :cond_4
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 949
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/http/k;
    .registers 4
    .parameter

    .prologue
    .line 612
    invoke-static {p1}, Lcom/google/api/client/http/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/google/api/client/http/l;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/k;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/l;
    .registers 3
    .parameter

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    .line 210
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/g;)Lcom/google/api/client/http/l;
    .registers 3
    .parameter

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/g;

    iput-object v0, p0, Lcom/google/api/client/http/l;->k:Lcom/google/api/client/http/g;

    .line 229
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/api/client/http/l;->h:Lcom/google/api/client/http/h;

    .line 248
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/l;
    .registers 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/http/i;

    .line 515
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/l;
    .registers 2
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/api/client/http/l;->n:Lcom/google/api/client/http/s;

    .line 535
    return-object p0
.end method

.method public final a(Z)Lcom/google/api/client/http/l;
    .registers 3
    .parameter

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/l;->d:Z

    .line 547
    return-object p0
.end method

.method public final a()Lcom/google/api/client/http/r;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/k;)V
    .registers 4
    .parameter

    .prologue
    .line 599
    invoke-interface {p1}, Lcom/google/api/client/http/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/http/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/google/api/client/http/l;->o:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    return-void
.end method

.method public final b()Lcom/google/api/client/http/HttpMethod;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public final b(Z)Lcom/google/api/client/http/l;
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/google/api/client/http/l;->s:Z

    .line 661
    return-object p0
.end method

.method public final c()Lcom/google/api/client/http/g;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/api/client/http/l;->k:Lcom/google/api/client/http/g;

    return-object v0
.end method

.method public final d()Lcom/google/api/client/http/h;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/api/client/http/l;->h:Lcom/google/api/client/http/h;

    return-object v0
.end method

.method public final e()Lcom/google/api/client/http/j;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final f()Lcom/google/api/client/http/j;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/api/client/http/l;->c:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/google/api/client/http/l;->s:Z

    return v0
.end method

.method public final h()Lcom/google/api/client/http/p;
    .registers 15

    .prologue
    .line 683
    iget v0, p0, Lcom/google/api/client/http/l;->e:I

    if-ltz v0, :cond_e2

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 684
    iget v1, p0, Lcom/google/api/client/http/l;->e:I

    .line 685
    iget-object v0, p0, Lcom/google/api/client/http/l;->q:Lcom/google/api/client/http/c;

    if-eqz v0, :cond_10

    .line 687
    iget-object v0, p0, Lcom/google/api/client/http/l;->q:Lcom/google/api/client/http/c;

    .line 689
    :cond_10
    const/4 v0, 0x0

    .line 691
    iget-object v2, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v2, p0, Lcom/google/api/client/http/l;->k:Lcom/google/api/client/http/g;

    invoke-static {v2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v1

    .line 696
    :goto_1c
    if-eqz v0, :cond_21

    .line 697
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->g()V

    .line 700
    :cond_21
    iget-object v0, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/http/i;

    if-eqz v0, :cond_2a

    .line 701
    iget-object v0, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/http/i;

    invoke-interface {v0, p0}, Lcom/google/api/client/http/i;->b(Lcom/google/api/client/http/l;)V

    .line 704
    :cond_2a
    iget-object v0, p0, Lcom/google/api/client/http/l;->k:Lcom/google/api/client/http/g;

    invoke-virtual {v0}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 706
    sget-object v0, Lcom/google/api/client/http/m;->a:[I

    iget-object v2, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2f4

    .line 711
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->b(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    .line 730
    :goto_44
    sget-object v10, Lcom/google/api/client/http/r;->a:Ljava/util/logging/Logger;

    .line 731
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    .line 732
    const/4 v0, 0x0

    .line 734
    if-eqz v11, :cond_2f0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    const-string v2, "-------------- REQUEST  --------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v2, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v0

    .line 740
    :goto_75
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v0}, Lcom/google/api/client/http/j;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_128

    .line 741
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    const-string v1, "Google-HTTP-Java-Client/1.8.3-beta (gzip)"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/j;->b(Ljava/lang/String;)V

    .line 746
    :goto_84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 747
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v0}, Lcom/google/api/client/http/j;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_93
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 749
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "multiple headers of the same name (headers are case insensitive): %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v5, v6, v12}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_93

    .line 754
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 755
    instance-of v5, v0, Ljava/lang/Iterable;

    if-nez v5, :cond_cc

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 756
    :cond_cc
    invoke-static {v0}, Lcom/google/api/client/util/u;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 757
    invoke-static {v10, v7, v8, v1, v4}, Lcom/google/api/client/http/l;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/u;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d4

    .line 683
    :cond_e2
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 708
    :pswitch_e5
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    .line 709
    goto/16 :goto_44

    .line 714
    :pswitch_ee
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->c()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support HEAD"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->c(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    .line 717
    goto/16 :goto_44

    .line 719
    :pswitch_102
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->d()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support PATCH"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    .line 722
    goto/16 :goto_44

    .line 724
    :pswitch_116
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->e(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    .line 725
    goto/16 :goto_44

    .line 727
    :pswitch_11f
    iget-object v0, p0, Lcom/google/api/client/http/l;->i:Lcom/google/api/client/http/r;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->f(Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_44

    .line 743
    :cond_128
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v2}, Lcom/google/api/client/http/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Google-HTTP-Java-Client/1.8.3-beta (gzip)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/j;->b(Ljava/lang/String;)V

    goto/16 :goto_84

    .line 760
    :cond_148
    invoke-static {v10, v7, v8, v1, v0}, Lcom/google/api/client/http/l;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/u;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_93

    .line 765
    :cond_14d
    iget-object v1, p0, Lcom/google/api/client/http/l;->h:Lcom/google/api/client/http/h;

    .line 766
    iget-boolean v0, p0, Lcom/google/api/client/http/l;->d:Z

    if-nez v0, :cond_17d

    iget-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v2, :cond_165

    iget-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v2, :cond_165

    iget-object v0, p0, Lcom/google/api/client/http/l;->j:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    if-ne v0, v2, :cond_17d

    :cond_165
    if-eqz v1, :cond_171

    invoke-interface {v1}, Lcom/google/api/client/http/h;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_17d

    .line 769
    :cond_171
    const-string v0, " "

    new-instance v1, Lcom/google/api/client/http/d;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/google/api/client/util/t;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[B)V

    .line 771
    :cond_17d
    if-eqz v1, :cond_223

    .line 774
    invoke-interface {v1}, Lcom/google/api/client/http/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-interface {v1}, Lcom/google/api/client/http/h;->b()J

    move-result-wide v4

    .line 776
    invoke-interface {v1}, Lcom/google/api/client/http/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 778
    const-wide/16 v12, 0x0

    cmp-long v0, v4, v12

    if-eqz v0, :cond_1ba

    if-nez v3, :cond_1ba

    invoke-static {v2}, Lcom/google/api/client/http/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    if-eqz v11, :cond_19f

    iget-boolean v0, p0, Lcom/google/api/client/http/l;->f:Z

    if-eqz v0, :cond_1a7

    :cond_19f
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 781
    :cond_1a7
    iget v0, p0, Lcom/google/api/client/http/l;->g:I

    int-to-long v12, v0

    cmp-long v0, v4, v12

    if-gtz v0, :cond_1ba

    iget v0, p0, Lcom/google/api/client/http/l;->g:I

    if-eqz v0, :cond_1ba

    .line 782
    new-instance v0, Lcom/google/api/client/http/t;

    iget v6, p0, Lcom/google/api/client/http/l;->g:I

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/http/t;-><init>(Lcom/google/api/client/http/h;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object v1, v0

    .line 787
    :cond_1ba
    iget-boolean v0, p0, Lcom/google/api/client/http/l;->p:Z

    if-eqz v0, :cond_1cc

    .line 788
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/f;-><init>(Lcom/google/api/client/http/h;Ljava/lang/String;)V

    .line 789
    invoke-interface {v0}, Lcom/google/api/client/http/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-interface {v0}, Lcom/google/api/client/http/h;->b()J

    move-result-wide v4

    move-object v1, v0

    .line 793
    :cond_1cc
    if-eqz v11, :cond_220

    .line 794
    if-eqz v2, :cond_1e8

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Content-Type: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_1e8
    if-eqz v3, :cond_202

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Content-Encoding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_202
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_220

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_220
    invoke-virtual {v8, v1}, Lcom/google/api/client/http/u;->a(Lcom/google/api/client/http/h;)V

    :cond_223
    move-object v0, v1

    .line 808
    if-eqz v11, :cond_22d

    .line 809
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 813
    :cond_22d
    iget v1, p0, Lcom/google/api/client/http/l;->l:I

    iget v2, p0, Lcom/google/api/client/http/l;->m:I

    invoke-virtual {v8, v1, v2}, Lcom/google/api/client/http/u;->a(II)V

    .line 814
    new-instance v1, Lcom/google/api/client/http/p;

    invoke-virtual {v8}, Lcom/google/api/client/http/u;->a()Lcom/google/api/client/http/v;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/http/p;-><init>(Lcom/google/api/client/http/l;Lcom/google/api/client/http/v;)V

    .line 818
    if-lez v9, :cond_2af

    if-eqz v0, :cond_247

    invoke-interface {v0}, Lcom/google/api/client/http/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2af

    :cond_247
    const/4 v0, 0x1

    .line 819
    :goto_248
    const/4 v2, 0x0

    .line 821
    invoke-virtual {v1}, Lcom/google/api/client/http/p;->c()Z

    move-result v3

    if-nez v3, :cond_2ed

    .line 822
    const/4 v4, 0x0

    .line 823
    const/4 v3, 0x0

    .line 824
    const/4 v2, 0x0

    .line 825
    iget-object v5, p0, Lcom/google/api/client/http/l;->n:Lcom/google/api/client/http/s;

    if-eqz v5, :cond_2ea

    .line 829
    iget-object v4, p0, Lcom/google/api/client/http/l;->n:Lcom/google/api/client/http/s;

    invoke-interface {v4, p0, v1}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/l;Lcom/google/api/client/http/p;)Z

    move-result v4

    move v5, v4

    .line 831
    :goto_25d
    if-nez v5, :cond_28b

    .line 832
    iget-boolean v4, p0, Lcom/google/api/client/http/l;->r:Z

    if-eqz v4, :cond_2bf

    invoke-virtual {v1}, Lcom/google/api/client/http/p;->d()I

    move-result v4

    packed-switch v4, :pswitch_data_302

    :pswitch_26a
    const/4 v4, 0x0

    :goto_26b
    if-eqz v4, :cond_2bf

    .line 834
    invoke-virtual {v1}, Lcom/google/api/client/http/p;->b()Lcom/google/api/client/http/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/j;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/api/client/http/g;

    invoke-direct {v4, v3}, Lcom/google/api/client/http/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/g;)Lcom/google/api/client/http/l;

    invoke-virtual {v1}, Lcom/google/api/client/http/p;->d()I

    move-result v3

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_28a

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0, v3}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/l;

    .line 835
    :cond_28a
    const/4 v3, 0x1

    .line 849
    :cond_28b
    :goto_28b
    if-nez v5, :cond_291

    if-nez v3, :cond_291

    if-eqz v2, :cond_2e1

    :cond_291
    const/4 v3, 0x1

    .line 852
    :goto_292
    add-int/lit8 v2, v9, -0x1

    .line 854
    if-eqz v3, :cond_29b

    if-eqz v0, :cond_29b

    .line 855
    invoke-virtual {v1}, Lcom/google/api/client/http/p;->g()V

    .line 858
    :cond_29b
    :goto_29b
    if-eqz v3, :cond_29f

    if-nez v0, :cond_2e6

    .line 860
    :cond_29f
    iget-boolean v0, p0, Lcom/google/api/client/http/l;->s:Z

    if-eqz v0, :cond_2e5

    invoke-virtual {v1}, Lcom/google/api/client/http/p;->c()Z

    move-result v0

    if-nez v0, :cond_2e5

    .line 861
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/p;)V

    throw v0

    .line 818
    :cond_2af
    const/4 v0, 0x0

    goto :goto_248

    .line 832
    :pswitch_2b1
    invoke-virtual {v1}, Lcom/google/api/client/http/p;->b()Lcom/google/api/client/http/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/j;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2bd

    const/4 v4, 0x1

    goto :goto_26b

    :cond_2bd
    const/4 v4, 0x0

    goto :goto_26b

    .line 836
    :cond_2bf
    if-eqz v0, :cond_28b

    iget-object v4, p0, Lcom/google/api/client/http/l;->q:Lcom/google/api/client/http/c;

    if-eqz v4, :cond_28b

    iget-object v4, p0, Lcom/google/api/client/http/l;->q:Lcom/google/api/client/http/c;

    invoke-virtual {v1}, Lcom/google/api/client/http/p;->d()I

    invoke-interface {v4}, Lcom/google/api/client/http/c;->a()Z

    move-result v4

    if-eqz v4, :cond_28b

    .line 840
    iget-object v4, p0, Lcom/google/api/client/http/l;->q:Lcom/google/api/client/http/c;

    invoke-interface {v4}, Lcom/google/api/client/http/c;->b()J

    move-result-wide v6

    .line 841
    const-wide/16 v10, -0x1

    cmp-long v4, v6, v10

    if-eqz v4, :cond_28b

    .line 842
    :try_start_2dc
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2df
    .catch Ljava/lang/InterruptedException; {:try_start_2dc .. :try_end_2df} :catch_2e3

    .line 843
    :goto_2df
    const/4 v2, 0x1

    goto :goto_28b

    .line 849
    :cond_2e1
    const/4 v3, 0x0

    goto :goto_292

    :catch_2e3
    move-exception v2

    goto :goto_2df

    .line 863
    :cond_2e5
    return-object v1

    :cond_2e6
    move-object v0, v1

    move v9, v2

    goto/16 :goto_1c

    :cond_2ea
    move v5, v4

    goto/16 :goto_25d

    :cond_2ed
    move v3, v2

    move v2, v9

    goto :goto_29b

    :cond_2f0
    move-object v7, v0

    goto/16 :goto_75

    .line 706
    nop

    :pswitch_data_2f4
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_ee
        :pswitch_102
        :pswitch_116
        :pswitch_11f
    .end packed-switch

    .line 832
    :pswitch_data_302
    .packed-switch 0x12d
        :pswitch_2b1
        :pswitch_2b1
        :pswitch_2b1
        :pswitch_26a
        :pswitch_26a
        :pswitch_26a
        :pswitch_2b1
    .end packed-switch
.end method
