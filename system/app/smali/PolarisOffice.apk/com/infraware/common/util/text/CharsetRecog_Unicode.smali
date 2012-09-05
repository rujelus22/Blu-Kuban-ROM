.class abstract Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.super Lcom/infraware/common/util/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;,
        Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/infraware/common/util/text/CharsetDetector;)I
.end method
