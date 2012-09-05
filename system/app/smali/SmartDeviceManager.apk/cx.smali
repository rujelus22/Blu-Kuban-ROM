.class public final Lcx;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcn;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lct;-><init>()V

    .line 24
    iput-object p1, p0, Lcx;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    iput-object v0, p0, Lcx;->a:Lcn;

    .line 26
    iget-object v0, p0, Lcx;->a:Lcn;

    invoke-virtual {v0, p2}, Lcn;->setPush(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private e()Ljava/net/URI;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/client/v2/push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcx;->a:Lcn;

    return-object v0
.end method

.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 11
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
    iget-object v0, p0, Lcx;->a:Lcn;

    invoke-virtual {v0}, Lcn;->getPush()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcx;->e()Ljava/net/URI;

    move-result-object v1

    const-string v4, "application/json; charset=UTF-8"

    invoke-virtual {p0}, Lcx;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ldf;

    invoke-direct {v6}, Ldf;-><init>()V

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lea;->a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_21
    return-object v0

    :cond_22
    invoke-direct {p0}, Lcx;->e()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lea;->a(Ljava/net/URI;Lda;Lcq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_21
.end method
