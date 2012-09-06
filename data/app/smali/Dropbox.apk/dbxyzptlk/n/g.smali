.class public final Ldbxyzptlk/n/g;
.super Ldbxyzptlk/n/a;
.source "panda.py"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-static {p0, p1}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(C)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x22

    .line 40
    .line 41
    invoke-static {p1}, Ldbxyzptlk/n/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_1d
    invoke-static {p0, p1}, Ldbxyzptlk/n/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)Z
    .registers 2
    .parameter

    .prologue
    .line 36
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    move v1, v2

    .line 28
    :cond_9
    :goto_9
    return v1

    .line 23
    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ldbxyzptlk/n/g;->a(C)Z

    move-result v0

    if-nez v0, :cond_16

    move v1, v2

    goto :goto_9

    :cond_16
    move v0, v1

    .line 24
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 26
    invoke-static {v3}, Ldbxyzptlk/n/g;->a(C)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-static {v3}, Ldbxyzptlk/n/g;->b(C)Z

    move-result v3

    if-nez v3, :cond_2f

    move v1, v2

    goto :goto_9

    .line 24
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ldbxyzptlk/n/b;
    .registers 3
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Ldbxyzptlk/n/a;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ldbxyzptlk/n/k;
    .registers 5
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ldbxyzptlk/n/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting object to have field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", but it does not"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbxyzptlk/n/g;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    throw v0

    .line 51
    :cond_28
    new-instance v1, Ldbxyzptlk/n/k;

    iget-object v0, p0, Ldbxyzptlk/n/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ldbxyzptlk/n/g;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 95
    new-instance v1, Ldbxyzptlk/n/j;

    iget-object v2, p0, Ldbxyzptlk/n/g;->b:Ljava/lang/String;

    iget-object v0, p0, Ldbxyzptlk/n/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ldbxyzptlk/n/j;-><init>(Ljava/lang/String;Ljava/util/Iterator;Ldbxyzptlk/n/h;)V

    return-object v1
.end method
