.class public abstract Lcom/google/zxing/client/result/ParsedResult;
.super Ljava/lang/Object;
.source "ParsedResult.java"


# instance fields
.field private final type:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    .line 38
    return-void
.end method

.method public static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 51
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 54
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    :cond_13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_16
    return-void
.end method

.method public static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "value"
    .parameter "result"

    .prologue
    .line 61
    if-eqz p0, :cond_25

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_25

    .line 63
    aget-object v1, p0, v0

    if-eqz v1, :cond_22

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 65
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    :cond_1d
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 71
    .end local v0           #i:I
    :cond_25
    return-void
.end method


# virtual methods
.method public abstract getDisplayResult()Ljava/lang/String;
.end method

.method public getType()Lcom/google/zxing/client/result/ParsedResultType;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
