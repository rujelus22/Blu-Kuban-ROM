.class public Lcom/android/contacts/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri1"
    .parameter "uri2"

    .prologue
    .line 30
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 31
    const/4 v0, 0x1

    .line 36
    :goto_5
    return v0

    .line 33
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 34
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 36
    :cond_c
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "uriString"

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 49
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
