.class public final Ldbxyzptlk/n/k;
.super Ldbxyzptlk/n/a;
.source "panda.py"


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    const-class v0, Ldbxyzptlk/n/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldbxyzptlk/n/k;->c:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    .line 29
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "a string"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Number;

    const-string v2, "a number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "a boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    const-string v2, "an object"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    const-string v2, "an array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void

    .line 17
    :cond_40
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/n/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 37
    if-nez p0, :cond_5

    const-string v0, "null"

    .line 40
    :cond_4
    return-object v0

    .line 38
    :cond_5
    sget-object v0, Ldbxyzptlk/n/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    sget-boolean v1, Ldbxyzptlk/n/k;->c:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 44
    if-nez p0, :cond_5

    const-string v0, "null"

    .line 49
    :goto_4
    return-object v0

    .line 45
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    const-string v0, "a number"

    goto :goto_4

    .line 46
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v0, "a string"

    goto :goto_4

    .line 47
    :cond_13
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    const-string v0, "a boolean"

    goto :goto_4

    .line 48
    :cond_1a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_21

    const-string v0, "an object"

    goto :goto_4

    .line 49
    :cond_21
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_28

    const-string v0, "an array"

    goto :goto_4

    .line 50
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid org.json.simple type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    if-nez p0, :cond_3

    .line 163
    :goto_2
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private b(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 59
    sget-boolean v0, Ldbxyzptlk/n/k;->c:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_c
    iget-object v0, p0, Ldbxyzptlk/n/k;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Ldbxyzptlk/n/k;->a:Ljava/lang/Object;

    .line 64
    return-object v0

    .line 67
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ldbxyzptlk/n/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/n/k;->a:Ljava/lang/Object;

    invoke-static {v1}, Ldbxyzptlk/n/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbxyzptlk/n/k;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ldbxyzptlk/n/b;
    .registers 3
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Ldbxyzptlk/n/a;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldbxyzptlk/n/c;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Ldbxyzptlk/n/k;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 183
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1, p0}, Ldbxyzptlk/n/c;->b(Ldbxyzptlk/n/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Ldbxyzptlk/n/k;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b()Ldbxyzptlk/n/g;
    .registers 4

    .prologue
    .line 82
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Ldbxyzptlk/n/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    new-instance v1, Ldbxyzptlk/n/g;

    iget-object v2, p0, Ldbxyzptlk/n/k;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/n/g;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Ldbxyzptlk/n/d;
    .registers 4

    .prologue
    .line 92
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0}, Ldbxyzptlk/n/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    new-instance v1, Ldbxyzptlk/n/d;

    iget-object v2, p0, Ldbxyzptlk/n/k;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/n/d;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ldbxyzptlk/n/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 154
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Ldbxyzptlk/n/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
