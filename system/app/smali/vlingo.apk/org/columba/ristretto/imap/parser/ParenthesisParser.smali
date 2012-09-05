.class public Lorg/columba/ristretto/imap/parser/ParenthesisParser;
.super Ljava/lang/Object;
.source "ParenthesisParser.java"


# static fields
.field private static final IN_QUOTES:I = 0x1

.field private static final NORMAL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClosingPos(Ljava/lang/CharSequence;I)I
    .registers 8
    .parameter "s"
    .parameter "openPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, mode:I
    const/4 v0, 0x1

    .line 60
    .local v0, depth:I
    add-int/lit8 v1, p1, 0x1

    .line 62
    .local v1, idx:I
    :goto_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_40

    .line 86
    :cond_11
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 66
    :sswitch_14
    xor-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_11

    .line 71
    :sswitch_17
    if-nez v2, :cond_11

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 78
    :sswitch_1c
    if-nez v2, :cond_11

    .line 79
    add-int/lit8 v0, v0, -0x1

    .line 80
    if-nez v0, :cond_11

    return v1

    .line 89
    :cond_23
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No matching Parenthesis found :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :sswitch_data_40
    .sparse-switch
        0x22 -> :sswitch_14
        0x28 -> :sswitch_17
        0x29 -> :sswitch_1c
    .end sparse-switch
.end method
