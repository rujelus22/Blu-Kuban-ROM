.class public Lorg/apache/james/mime4j/field/structured/parser/ParseException;
.super Lorg/apache/james/mime4j/field/ParseException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/structured/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "Cannot parse field"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/Token;[[I[Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->specialConstructor:Z

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    iput-object p3, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->tokenImage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_93

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_98

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x7e

    if-le v2, v3, :cond_8f

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5c
    :sswitch_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_5f
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_65
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_6b
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_71
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_77
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_7d
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_83
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :sswitch_89
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :cond_8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5c

    :cond_93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_5c
        0x8 -> :sswitch_5f
        0x9 -> :sswitch_65
        0xa -> :sswitch_6b
        0xc -> :sswitch_71
        0xd -> :sswitch_77
        0x22 -> :sswitch_7d
        0x27 -> :sswitch_83
        0x5c -> :sswitch_89
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->specialConstructor:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    move v2, v1

    :goto_11
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_62

    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_22

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    :cond_22
    move v3, v1

    :goto_23
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_40

    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_40
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-eqz v3, :cond_54

    const-string v3, "..."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_54
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_62
    const-string v3, "Encountered \""

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-object v4, v0

    move-object v0, v3

    move v3, v1

    :goto_6b
    if-ge v3, v2, :cond_9b

    if-eqz v3, :cond_82

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_82
    iget v5, v4, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    if-nez v5, :cond_11d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginColumn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->expectedTokenSequences:[[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Was expecting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_11d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v4, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto/16 :goto_6b

    :cond_13c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Was expecting one of:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_106
.end method
