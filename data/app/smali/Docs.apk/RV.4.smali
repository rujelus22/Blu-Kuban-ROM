.class public LRV;
.super LRW;
.source "DocsListFeedClientImpl.java"

# interfaces
.implements LRU;


# direct methods
.method public constructor <init>(LarP;LRY;LIG;)V
    .registers 4
    .parameter
        .annotation runtime Laqa;
            value = "DocFeed"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, LRW;-><init>(LarP;LRY;LIG;)V

    .line 39
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSs;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const-class v0, LSs;

    invoke-virtual {p0, v0, p1, p2, p3}, LRV;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;

    move-result-object v0

    .line 74
    instance-of v1, v0, LSs;

    if-eqz v1, :cond_d

    .line 75
    check-cast v0, LSs;

    return-object v0

    .line 77
    :cond_d
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected DocEntry, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)LSs;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, LRV;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSs;
    :try_end_4
    .catch Lasd; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :catch_6
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSs;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p3, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 64
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, LRV;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSs;
    :try_end_9
    .catch Lasd; {:try_start_6 .. :try_end_9} :catch_d

    move-result-object v0

    .line 67
    :goto_a
    return-object v0

    .line 62
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 66
    :catch_d
    move-exception v0

    .line 67
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const-class v0, LSs;

    invoke-virtual {p0, v0, p1, p2, p3}, LRV;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;

    move-result-object v0

    return-object v0
.end method

.method public a(Lld;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://docs.google.com/feeds/default/private/full/document:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lld;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p1, Lld;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LRV;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, LSs;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
