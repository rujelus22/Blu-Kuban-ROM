.class public LZB;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# direct methods
.method public static a(LFX;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "invalidMimeTypePattern"

    const-string v1, ".*\\*.*|[^/]*"

    invoke-interface {p0, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
