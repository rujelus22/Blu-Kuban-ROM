.class public final Ldi;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lep",
        "<",
        "Lcz;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ldi;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 6
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
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/client/v2/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Ldq;

    invoke-direct {v1}, Ldq;-><init>()V

    invoke-interface {p1, v0, p2, p3, v1}, Lea;->a(Ljava/net/URI;Lda;Lcq;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method
