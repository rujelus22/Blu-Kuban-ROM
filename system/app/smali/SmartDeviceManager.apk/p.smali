.class public final Lp;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 11
    if-nez p1, :cond_5

    move-object v0, v3

    .line 23
    :goto_4
    return-object v0

    .line 14
    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 15
    aget-object v1, p0, v0

    .line 16
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 19
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 14
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1d
    move-object v0, v3

    .line 23
    goto :goto_4
.end method
