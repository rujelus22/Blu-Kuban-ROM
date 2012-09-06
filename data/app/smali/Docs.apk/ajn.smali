.class final Lajn;
.super Lajo;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lajo",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:LafH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafH",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lajl;LafH;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajl;",
            "LafH",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lajo;-><init>(Lajl;)V

    .line 925
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafH;

    iput-object v0, p0, Lajn;->a:LafH;

    .line 926
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 939
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :try_start_3
    iget-object v0, p0, Lajn;->a:LafH;

    invoke-interface {v0, p1}, LafH;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Laib; {:try_start_3 .. :try_end_8} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_c

    move-result-object v0

    return-object v0

    .line 942
    :catch_a
    move-exception v0

    .line 943
    throw v0

    .line 944
    :catch_c
    move-exception v0

    .line 945
    new-instance v1, Laib;

    invoke-direct {v1, v0}, Laib;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 931
    .line 932
    invoke-direct {p0, p1}, Lajn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lajn;->a:LafH;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p0, p1, v0}, Lajn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    return-object v0
.end method
