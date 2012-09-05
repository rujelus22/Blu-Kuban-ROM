.class public final Lcom/samsung/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hasData(Ljava/lang/String;)Z
    .registers 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_4

    .line 34
    :cond_3
    :goto_3
    return v0

    .line 32
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 34
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final toLong(Ljava/lang/String;)J
    .registers 4
    .parameter "value"

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 56
    :goto_4
    return-wide v1

    .line 53
    :catch_5
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 56
    const-wide/16 v1, 0x0

    goto :goto_4
.end method
