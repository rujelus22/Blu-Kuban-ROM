.class public final Ldj;
.super Lct;
.source "a"

# interfaces
.implements Lep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lct;",
        "Lep",
        "<",
        "Lbj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lct;-><init>()V

    .line 25
    iput-object p1, p0, Ldj;->c:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Ldj;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Ldj;->b:Ljava/lang/String;

    .line 28
    sget-object v0, Ldg;->k:Ldg;

    invoke-virtual {v0}, Ldg;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Ldg;->q:Ldg;

    invoke-virtual {v0}, Ldg;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 30
    :cond_25
    const-string v0, "v3"

    iput-object v0, p0, Ldj;->d:Ljava/lang/String;

    .line 35
    :goto_29
    return-void

    .line 32
    :cond_2a
    const-string v0, "v2"

    iput-object v0, p0, Ldj;->d:Ljava/lang/String;

    goto :goto_29
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 1

    .prologue
    .line 21
    return-object p0
.end method

.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/client/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/features/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Lds;

    iget-object v2, p0, Ldj;->a:Ljava/lang/String;

    invoke-static {v2}, Ldg;->a(Ljava/lang/String;)Ldg;

    move-result-object v2

    invoke-direct {v1, v2}, Lds;-><init>(Ldg;)V

    invoke-interface {p1, v0, p2, p3, v1}, Lea;->a(Ljava/net/URI;Lda;Lcq;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbj;

    return-object p0
.end method
