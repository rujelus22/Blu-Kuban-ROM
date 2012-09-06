.class public Ldbxyzptlk/l/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected final b:Ldbxyzptlk/o/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    invoke-static {}, Ldbxyzptlk/l/v;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/l/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/m;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_d

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_d
    iput-object p1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/p;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1727
    if-eqz p1, :cond_c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1728
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_14
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1733
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1737
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/files_put/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    if-nez p6, :cond_53

    .line 1740
    const-string p6, ""

    .line 1743
    :cond_53
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "overwrite"

    aput-object v2, v1, v4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "parent_rev"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    const/4 v2, 0x4

    const-string v3, "locale"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v3}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1749
    iget-object v2, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v0, v1}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0, v2}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 1755
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 1756
    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 1761
    if-eqz p7, :cond_ad

    .line 1762
    new-instance v0, Ldbxyzptlk/l/r;

    invoke-direct {v0, v1, p7}, Ldbxyzptlk/l/r;-><init>(Lorg/apache/http/HttpEntity;Ldbxyzptlk/l/q;)V

    .line 1765
    :goto_a2
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1767
    new-instance v0, Ldbxyzptlk/l/d;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-direct {v0, v2, v1}, Ldbxyzptlk/l/d;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V

    return-object v0

    :cond_ad
    move-object v0, v1

    goto :goto_a2
.end method

.method protected static a(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1678
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_11

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 1680
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1682
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected static b(Ljava/util/Map;Ljava/lang/String;)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2055
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2056
    const-wide/16 v1, 0x0

    .line 2057
    if-eqz v0, :cond_20

    .line 2058
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_13

    .line 2059
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2066
    :goto_12
    return-wide v0

    .line 2060
    :cond_13
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 2063
    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_12

    :cond_20
    move-wide v0, v1

    goto :goto_12
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/h;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/l/i;

    move-result-object v0

    .line 929
    invoke-virtual {v0, p3, p4}, Ldbxyzptlk/l/i;->a(Ljava/io/OutputStream;Ldbxyzptlk/l/q;)V

    .line 930
    invoke-virtual {v0}, Ldbxyzptlk/l/i;->a()Ldbxyzptlk/l/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ldbxyzptlk/l/o;Ldbxyzptlk/l/n;)Ldbxyzptlk/l/i;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1215
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1218
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "size"

    aput-object v1, v4, v0

    invoke-virtual {p2}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "format"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p3}, Ldbxyzptlk/l/n;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1221
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->b(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ldbxyzptlk/l/m;

    move-result-object v0

    .line 1224
    new-instance v1, Ldbxyzptlk/l/i;

    iget-object v2, v0, Ldbxyzptlk/l/m;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v0, v0, Ldbxyzptlk/l/m;->b:Lorg/apache/http/HttpResponse;

    invoke-direct {v1, v2, v0}, Ldbxyzptlk/l/i;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/l/i;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 964
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 966
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 970
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rev"

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    const/4 v2, 0x2

    const-string v3, "locale"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v3}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 975
    iget-object v2, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v0, v1}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0, v1}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 980
    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static {v0, v1}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 982
    new-instance v2, Ldbxyzptlk/l/i;

    invoke-direct {v2, v1, v0}, Ldbxyzptlk/l/i;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v2
.end method

.method public final a(Ljava/lang/String;Z)Ldbxyzptlk/l/j;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1613
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1617
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "locale"

    aput-object v6, v4, v5

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v5}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1623
    new-instance v1, Ldbxyzptlk/l/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Ldbxyzptlk/l/j;-><init>(Ljava/util/Map;ZLdbxyzptlk/l/b;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ldbxyzptlk/l/k;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1502
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1504
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/o/n;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1509
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/create_folder"

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1513
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ldbxyzptlk/l/k;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1267
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1269
    if-gtz p2, :cond_8

    .line 1270
    const/16 p2, 0x2710

    .line 1273
    :cond_8
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "hash"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p3, v4, v0

    const/4 v0, 0x4

    const-string v1, "list"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "rev"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object p5, v4, v0

    const/16 v0, 0x8

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/metadata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1284
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1288
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/l/p;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1139
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Ldbxyzptlk/l/a;->a(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/p;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldbxyzptlk/l/a;->a(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/p;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ldbxyzptlk/o/m;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1368
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1370
    if-gtz p3, :cond_8

    .line 1371
    const/16 p3, 0x2710

    .line 1374
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/search/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1376
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "query"

    aput-object v1, v4, v0

    aput-object p2, v4, v3

    const/4 v0, 0x2

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "include_deleted"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1383
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    .line 1386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    instance-of v2, v0, Ldbxyzptlk/B/a;

    if-eqz v2, :cond_90

    .line 1388
    check-cast v0, Ldbxyzptlk/B/a;

    .line 1389
    invoke-virtual {v0}, Ldbxyzptlk/B/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1390
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_77

    .line 1392
    new-instance v3, Ldbxyzptlk/l/k;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    .line 1393
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 1398
    :cond_90
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/l/k;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1425
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1427
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/o/n;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "from_path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p2, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1433
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/move"

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1438
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 2040
    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->d()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2041
    new-instance v0, Ldbxyzptlk/m/i;

    invoke-direct {v0}, Ldbxyzptlk/m/i;-><init>()V

    throw v0

    .line 2043
    :cond_e
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1537
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1539
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/o/n;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1543
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/delete"

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    .line 1545
    return-void
.end method

.method public final c(Ljava/lang/String;)Ldbxyzptlk/l/j;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1647
    invoke-virtual {p0}, Ldbxyzptlk/l/a;->b()V

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/shares/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1652
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "locale"

    aput-object v6, v4, v5

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-interface {v5}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Ldbxyzptlk/l/a;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1658
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1659
    const-string v2, "expires"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1661
    if-eqz v1, :cond_5d

    if-nez v2, :cond_65

    .line 1662
    :cond_5d
    new-instance v0, Ldbxyzptlk/m/d;

    const-string v1, "Could not parse share response."

    invoke-direct {v0, v1}, Ldbxyzptlk/m/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_65
    new-instance v1, Ldbxyzptlk/l/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/l/j;-><init>(Ljava/util/Map;Ldbxyzptlk/l/b;)V

    return-object v1
.end method
