.class public Lcom/samsung/util/UriBuilder;
.super Ljava/lang/Object;
.source "UriBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .parameter "baseUri"
    .parameter "path"

    .prologue
    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 10
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/net/Uri;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 37
    .end local v4           #tempUri:Landroid/net/Uri;
    :goto_12
    return-object v4

    .line 13
    .restart local v4       #tempUri:Landroid/net/Uri;
    :cond_13
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 15
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 16
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_12

    .line 21
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2c
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, originPath:Ljava/lang/String;
    if-eqz v3, :cond_3a

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 24
    :cond_3a
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 25
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_12

    .line 29
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_46
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, lastPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, lastPathLeng:I
    if-eqz v1, :cond_51

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 33
    :cond_51
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 35
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_12
.end method
