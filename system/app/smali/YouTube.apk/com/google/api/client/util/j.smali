.class final Lcom/google/api/client/util/j;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/api/client/util/g;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    .line 47
    iget-object v0, p0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    invoke-virtual {v0}, Lcom/google/api/client/util/g;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 48
    return-void

    .line 47
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public final a()Lcom/google/api/client/util/m;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/api/client/util/m;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/m;-><init>(Lcom/google/api/client/util/j;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/api/client/util/j;->a()Lcom/google/api/client/util/m;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_6

    .line 69
    :cond_5
    :goto_5
    return-object v0

    .line 65
    :cond_6
    iget-object v1, p0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    .line 69
    iget-object v0, p0, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no field of key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
