.class public LadP;
.super Ljava/lang/Object;
.source "JsonObjectParser.java"

# interfaces
.implements Laex;


# instance fields
.field private final a:LadN;


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, LadP;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LadP;->a:LadN;

    invoke-virtual {v0, p1, p2}, LadN;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)LadQ;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, LadQ;->a(Ljava/lang/reflect/Type;ZLadK;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
