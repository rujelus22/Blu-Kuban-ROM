.class public final Leo;
.super Lct;
.source "a"

# interfaces
.implements Lep;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lct;",
        "Lep",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lbh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "/client/v2/error"

    .line 42
    sput-object v0, Leo;->c:Ljava/lang/String;

    invoke-static {v0}, Ldm;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lct;-><init>()V

    .line 30
    iput-object p1, p0, Leo;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Leo;->b:Lbh;

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Leo;->b:Lbh;

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
    .line 11
    iget-object v0, p0, Leo;->b:Lbh;

    invoke-virtual {v0, p2, p3}, Lbh;->addIdentifyingInfo(Lda;Lcq;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Leo;->c:Ljava/lang/String;

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

.method public final e()Lbh;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Leo;->b:Lbh;

    return-object v0
.end method
