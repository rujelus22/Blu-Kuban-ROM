.class public final Les;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lei",
        "<",
        "Ler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a([Lorg/apache/http/Header;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Leq;
        }
    .end annotation

    .prologue
    .line 11
    const-string v0, "ETag"

    invoke-static {p1, v0}, Lp;->a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ler;

    invoke-static {p2}, Ls;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    const-string v0, "text/plain"

    return-object v0
.end method
