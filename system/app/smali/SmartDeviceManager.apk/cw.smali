.class public final Lcw;
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
.field private a:Lcm;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lct;-><init>()V

    .line 22
    iput-object p1, p0, Lcw;->b:Ljava/lang/String;

    .line 23
    new-instance v0, Lcm;

    invoke-direct {v0}, Lcm;-><init>()V

    iput-object v0, p0, Lcw;->a:Lcm;

    .line 24
    iget-object v0, p0, Lcw;->a:Lcm;

    invoke-virtual {v0, p2}, Lcm;->setNumber(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcw;->a:Lcm;

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
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/client/v3/number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v4, "application/json; charset=UTF-8"

    invoke-super {p0}, Lct;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ldf;

    invoke-direct {v6}, Ldf;-><init>()V

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lea;->a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
