.class public final Lcom/samsung/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isXMLFileName(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/samsung/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 76
    const/4 v1, 0x0

    .line 78
    :goto_7
    return v1

    .line 77
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, lowerName:Ljava/lang/String;
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method
