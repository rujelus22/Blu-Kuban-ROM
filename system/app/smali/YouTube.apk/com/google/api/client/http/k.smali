.class public final Lcom/google/api/client/http/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/api/client/http/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lcom/google/api/client/http/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Lcom/google/api/client/http/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Lcom/google/api/client/http/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final g:Lcom/google/api/client/http/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Lcom/google/api/client/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Lcom/google/api/client/http/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Lcom/google/api/client/http/q;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final n:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/http/HttpMethod;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x4e20

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0}, Lcom/google/api/client/http/i;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    .line 95
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0}, Lcom/google/api/client/http/i;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/k;->c:Lcom/google/api/client/http/i;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/k;->d:I

    .line 167
    iput v1, p0, Lcom/google/api/client/http/k;->j:I

    .line 181
    iput v1, p0, Lcom/google/api/client/http/k;->k:I

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/k;->n:Ljava/util/Map;

    .line 212
    iput-object p1, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    .line 214
    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/s;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 734
    :cond_8
    :goto_8
    return-void

    .line 720
    :cond_9
    instance-of v0, p4, Ljava/lang/Enum;

    if-eqz v0, :cond_40

    check-cast p4, Ljava/lang/Enum;

    invoke-static {p4}, Lcom/google/api/client/util/o;->a(Ljava/lang/Enum;)Lcom/google/api/client/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/o;->b()Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_17
    if-eqz p1, :cond_3c

    .line 724
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 726
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :goto_37
    sget-object v1, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_3c
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 720
    :cond_40
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 728
    :cond_45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 746
    if-nez p0, :cond_4

    .line 747
    const/4 p0, 0x0

    .line 750
    :cond_3
    :goto_3
    return-object p0

    .line 749
    :cond_4
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 750
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/http/j;
    .registers 4
    .parameter

    .prologue
    .line 550
    invoke-static {p1}, Lcom/google/api/client/http/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/google/api/client/http/k;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/k;
    .registers 3
    .parameter

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    .line 241
    return-object p0
.end method

.method public final a()Lcom/google/api/client/http/o;
    .registers 15

    .prologue
    .line 571
    iget v0, p0, Lcom/google/api/client/http/k;->d:I

    if-ltz v0, :cond_dc

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 572
    iget v1, p0, Lcom/google/api/client/http/k;->d:I

    .line 573
    const/4 v0, 0x0

    .line 575
    iget-object v2, p0, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v2, p0, Lcom/google/api/client/http/k;->i:Lcom/google/api/client/http/f;

    invoke-static {v2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v1

    .line 580
    :goto_16
    if-eqz v0, :cond_1b

    .line 581
    invoke-virtual {v0}, Lcom/google/api/client/http/o;->b()V

    .line 584
    :cond_1b
    iget-object v0, p0, Lcom/google/api/client/http/k;->a:Lcom/google/api/client/http/h;

    if-eqz v0, :cond_24

    .line 585
    iget-object v0, p0, Lcom/google/api/client/http/k;->a:Lcom/google/api/client/http/h;

    invoke-interface {v0, p0}, Lcom/google/api/client/http/h;->b(Lcom/google/api/client/http/k;)V

    .line 588
    :cond_24
    iget-object v0, p0, Lcom/google/api/client/http/k;->i:Lcom/google/api/client/http/f;

    invoke-virtual {v0}, Lcom/google/api/client/http/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 590
    sget-object v0, Lcom/google/api/client/http/l;->a:[I

    iget-object v2, p0, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_248

    .line 595
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->b(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    .line 614
    :goto_3e
    sget-object v9, Lcom/google/api/client/http/p;->a:Ljava/util/logging/Logger;

    .line 615
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    .line 616
    const/4 v0, 0x0

    .line 618
    if-eqz v10, :cond_244

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    const-string v2, "-------------- REQUEST  --------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v2, p0, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    .line 624
    :goto_6f
    iget-object v0, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_122

    .line 625
    iget-object v0, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    const-string v1, "Google-HTTP-Java-Client/1.5.0-beta-SNAPSHOT (gzip)"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;)V

    .line 630
    :goto_7e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 631
    iget-object v0, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8d
    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "multiple headers of the same name (headers are case insensitive): %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v5, v11, v12}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_8d

    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 639
    instance-of v5, v0, Ljava/lang/Iterable;

    if-nez v5, :cond_c6

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 640
    :cond_c6
    invoke-static {v0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ce
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 641
    invoke-static {v9, v6, v7, v1, v4}, Lcom/google/api/client/http/k;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/s;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ce

    .line 571
    :cond_dc
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 592
    :pswitch_df
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->a(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    .line 593
    goto/16 :goto_3e

    .line 598
    :pswitch_e8
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->c()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support HEAD"

    invoke-static {v0, v2}, Lcom/google/common/base/t;->a(ZLjava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->c(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    .line 601
    goto/16 :goto_3e

    .line 603
    :pswitch_fc
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->d()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support PATCH"

    invoke-static {v0, v2}, Lcom/google/common/base/t;->a(ZLjava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->d(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    .line 606
    goto/16 :goto_3e

    .line 608
    :pswitch_110
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->e(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    .line 609
    goto/16 :goto_3e

    .line 611
    :pswitch_119
    iget-object v0, p0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->f(Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_3e

    .line 627
    :cond_122
    iget-object v0, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    invoke-virtual {v2}, Lcom/google/api/client/http/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Google-HTTP-Java-Client/1.5.0-beta-SNAPSHOT (gzip)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;)V

    goto/16 :goto_7e

    .line 644
    :cond_148
    invoke-static {v9, v6, v7, v1, v0}, Lcom/google/api/client/http/k;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/s;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8d

    .line 649
    :cond_14d
    iget-object v1, p0, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    .line 650
    if-eqz v1, :cond_242

    .line 653
    invoke-interface {v1}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 654
    invoke-interface {v1}, Lcom/google/api/client/http/g;->b()J

    move-result-wide v4

    .line 655
    invoke-interface {v1}, Lcom/google/api/client/http/g;->e()Ljava/lang/String;

    move-result-object v2

    .line 657
    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-eqz v0, :cond_17f

    if-nez v3, :cond_17f

    invoke-static {v2}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17f

    if-eqz v10, :cond_171

    iget-boolean v0, p0, Lcom/google/api/client/http/k;->e:Z

    if-eqz v0, :cond_179

    :cond_171
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 660
    :cond_179
    new-instance v0, Lcom/google/api/client/http/r;

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/http/r;-><init>(Lcom/google/api/client/http/g;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v1, v0

    .line 663
    :cond_17f
    iget-boolean v0, p0, Lcom/google/api/client/http/k;->m:Z

    if-eqz v0, :cond_191

    .line 664
    new-instance v0, Lcom/google/api/client/http/e;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/e;-><init>(Lcom/google/api/client/http/g;Ljava/lang/String;)V

    .line 665
    invoke-interface {v0}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-interface {v0}, Lcom/google/api/client/http/g;->b()J

    move-result-wide v4

    move-object v1, v0

    .line 669
    :cond_191
    if-eqz v10, :cond_1f1

    .line 670
    if-eqz v2, :cond_1b1

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_1b1
    if-eqz v3, :cond_1cf

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_1cf
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1f1

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_1f1
    invoke-virtual {v7, v1}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/g;)V

    move-object v0, v1

    .line 683
    :goto_1f5
    if-eqz v10, :cond_1fe

    .line 684
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 688
    :cond_1fe
    iget v1, p0, Lcom/google/api/client/http/k;->j:I

    iget v2, p0, Lcom/google/api/client/http/k;->k:I

    invoke-virtual {v7, v1, v2}, Lcom/google/api/client/http/s;->a(II)V

    .line 689
    new-instance v1, Lcom/google/api/client/http/o;

    invoke-virtual {v7}, Lcom/google/api/client/http/s;->a()Lcom/google/api/client/http/t;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/http/o;-><init>(Lcom/google/api/client/http/k;Lcom/google/api/client/http/t;)V

    .line 693
    if-lez v8, :cond_239

    if-eqz v0, :cond_218

    invoke-interface {v0}, Lcom/google/api/client/http/g;->c()Z

    move-result v0

    if-eqz v0, :cond_239

    :cond_218
    const/4 v0, 0x1

    .line 694
    :goto_219
    const/4 v2, 0x0

    .line 699
    iget-boolean v3, v1, Lcom/google/api/client/http/o;->d:Z

    if-nez v3, :cond_240

    iget-object v3, p0, Lcom/google/api/client/http/k;->l:Lcom/google/api/client/http/q;

    if-eqz v3, :cond_240

    .line 700
    iget-object v2, p0, Lcom/google/api/client/http/k;->l:Lcom/google/api/client/http/q;

    invoke-interface {v2, p0, v1}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/k;Lcom/google/api/client/http/o;)Z

    move-result v2

    move v3, v2

    .line 704
    :goto_229
    add-int/lit8 v2, v8, -0x1

    .line 705
    if-eqz v3, :cond_22f

    if-nez v0, :cond_23c

    .line 707
    :cond_22f
    iget-boolean v0, v1, Lcom/google/api/client/http/o;->d:Z

    if-nez v0, :cond_23b

    .line 708
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/o;)V

    throw v0

    .line 693
    :cond_239
    const/4 v0, 0x0

    goto :goto_219

    .line 710
    :cond_23b
    return-object v1

    :cond_23c
    move-object v0, v1

    move v8, v2

    goto/16 :goto_16

    :cond_240
    move v3, v2

    goto :goto_229

    :cond_242
    move-object v0, v1

    goto :goto_1f5

    :cond_244
    move-object v6, v0

    goto/16 :goto_6f

    .line 590
    nop

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_df
        :pswitch_e8
        :pswitch_fc
        :pswitch_110
        :pswitch_119
    .end packed-switch
.end method

.method public final a(Lcom/google/api/client/http/j;)V
    .registers 4
    .parameter

    .prologue
    .line 537
    invoke-interface {p1}, Lcom/google/api/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/http/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/google/api/client/http/k;->n:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method
