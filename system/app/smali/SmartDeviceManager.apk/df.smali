.class public final Ldf;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a([Lorg/apache/http/Header;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Leq;
        }
    .end annotation

    .prologue
    .line 8
    const-string v0, "200 OK"

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    const-string v0, "application/json; charset=UTF-8"

    return-object v0
.end method
