.class public Ldy;
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
        "Ldz;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lcg;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lct;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcg;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lct;-><init>()V

    .line 20
    iput-object p1, p0, Ldy;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Ldy;->a:Lcg;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Ldy;->a:Lcg;

    return-object v0
.end method

.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 12
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

    iget-object v1, p0, Ldy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/client/v3/notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v4, "application/json; charset=UTF-8"

    invoke-virtual {p0}, Ldy;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ldt;

    invoke-direct {v6}, Ldt;-><init>()V

    const/4 v7, 0x1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v7}, Lea;->a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldz;

    return-object p0
.end method
