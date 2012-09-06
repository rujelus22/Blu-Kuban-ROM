.class public LRC;
.super LRA;
.source "ZippedKixHtmlFileSource.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LXP;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, LRA;-><init>(LXP;Ljava/io/File;)V

    .line 37
    iput-object p3, p0, LRC;->a:Ljava/lang/String;

    .line 38
    iget-object v0, p0, LRC;->a:Ljava/util/Collection;

    invoke-static {v0}, LRC;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LRC;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-static {v0}, LRB;->a(Ljava/lang/String;)LRB;

    move-result-object v2

    .line 54
    sget-object v6, LRB;->a:LRB;

    invoke-virtual {v2, v6}, LRB;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 55
    if-nez v1, :cond_30

    move v2, v3

    :goto_22
    const-string v6, "More than one html entry: %s, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-static {v2, v6, v7}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_2e
    move-object v1, v0

    .line 59
    goto :goto_7

    :cond_30
    move v2, v4

    .line 55
    goto :goto_22

    .line 60
    :cond_32
    if-eqz v1, :cond_3a

    :goto_34
    const-string v0, "No html entry"

    invoke-static {v3, v0}, LafQ;->a(ZLjava/lang/Object;)V

    .line 61
    return-object v1

    :cond_3a
    move v3, v4

    .line 60
    goto :goto_34

    :cond_3c
    move-object v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, LRC;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 67
    iget-object p1, p0, LRC;->b:Ljava/lang/String;

    .line 70
    :cond_a
    invoke-super {p0, p1, p2}, LRA;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 75
    const-string v0, "ZippedKixHtmlFileSource[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LRC;->a:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LRC;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
