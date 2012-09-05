.class public Lorg/columba/ristretto/coder/EncodedWord;
.super Ljava/lang/Object;
.source "EncodedWord.java"


# static fields
.field public static final BASE64:I = 0x1

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final QUOTED_PRINTABLE:I

.field private static final encodedWordPattern:Ljava/util/regex/Pattern;

.field private static final spacePattern:Ljava/util/regex/Pattern;

.field private static final whitespacePattern:Ljava/util/regex/Pattern;

.field private static final wordTokenizerPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "org.columba.ristretto.coder"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/EncodedWord;->LOG:Ljava/util/logging/Logger;

    .line 73
    const-string v0, "=\\?([^?]+)\\?([bBqQ])\\?([^?]+)\\?="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/EncodedWord;->encodedWordPattern:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/EncodedWord;->spacePattern:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "\\b([^\\s]+[\\s]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/EncodedWord;->wordTokenizerPattern:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/EncodedWord;->whitespacePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 11
    .parameter "input"

    .prologue
    .line 93
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    .local v6, result:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 95
    .local v4, lastMatchEnd:I
    sget-object v8, Lorg/columba/ristretto/coder/EncodedWord;->encodedWordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 100
    .local v5, matcher:Ljava/util/regex/Matcher;
    :goto_10
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 101
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {p0, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 103
    .local v3, inbetween:Ljava/lang/CharSequence;
    sget-object v8, Lorg/columba/ristretto/coder/EncodedWord;->spacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 104
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 109
    :cond_2d
    const/4 v8, 0x1

    :try_start_2e
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_35
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2e .. :try_end_35} :catch_61

    move-result-object v0

    .line 113
    .local v0, charset:Ljava/nio/charset/Charset;
    :goto_36
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 114
    .local v7, type:C
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, encodedPart:Ljava/lang/String;
    const/16 v8, 0x71

    if-ne v7, v8, :cond_6d

    .line 117
    const/16 v8, 0x5f

    const/16 v9, 0x20

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2, v0}, Lorg/columba/ristretto/coder/QuotedPrintable;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 124
    :goto_5c
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 125
    goto :goto_10

    .line 110
    .end local v0           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encodedPart:Ljava/lang/String;
    .end local v7           #type:C
    :catch_61
    move-exception v1

    .line 111
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v8, "file.encoding"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .restart local v0       #charset:Ljava/nio/charset/Charset;
    goto :goto_36

    .line 121
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v2       #encodedPart:Ljava/lang/String;
    .restart local v7       #type:C
    :cond_6d
    invoke-static {v2}, Lorg/columba/ristretto/coder/Base64;->decode(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 127
    .end local v0           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encodedPart:Ljava/lang/String;
    .end local v3           #inbetween:Ljava/lang/CharSequence;
    .end local v7           #type:C
    :cond_79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p0, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 129
    return-object v6
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)Ljava/lang/StringBuffer;
    .registers 23
    .parameter "input"
    .parameter "charset"
    .parameter "type"

    .prologue
    .line 154
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    .local v13, result:Ljava/lang/StringBuffer;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v15, words:Ljava/util/LinkedList;
    if-nez p2, :cond_82

    .line 158
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "=?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "?q?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, encodedWordPrototype:Ljava/lang/String;
    :goto_2f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x2

    rsub-int/lit8 v11, v17, 0x4b

    .line 165
    .local v11, maxLength:I
    sget-object v17, Lorg/columba/ristretto/coder/EncodedWord;->wordTokenizerPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 166
    .local v10, matcher:Ljava/util/regex/Matcher;
    :cond_41
    :goto_41
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_a3

    .line 167
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, word:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_50
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_41

    .line 169
    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a0

    .line 170
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    aput v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 160
    .end local v5           #encodedWordPrototype:Ljava/lang/String;
    .end local v6           #i:I
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v11           #maxLength:I
    .end local v14           #word:Ljava/lang/String;
    :cond_82
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "=?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "?b?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #encodedWordPrototype:Ljava/lang/String;
    goto :goto_2f

    .line 168
    .restart local v6       #i:I
    .restart local v10       #matcher:Ljava/util/regex/Matcher;
    .restart local v11       #maxLength:I
    .restart local v14       #word:Ljava/lang/String;
    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 177
    .end local v6           #i:I
    .end local v14           #word:Ljava/lang/String;
    :cond_a3
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-nez v17, :cond_b0

    .line 178
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 225
    .end local v13           #result:Ljava/lang/StringBuffer;
    :goto_af
    return-object v13

    .line 182
    .restart local v13       #result:Ljava/lang/StringBuffer;
    :cond_b0
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 183
    .local v7, it:Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    move-object/from16 v8, v17

    check-cast v8, [I

    .line 184
    .local v8, last:[I
    :goto_be
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_108

    .line 185
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    move-object/from16 v3, v17

    check-cast v3, [I

    .line 186
    .local v3, act:[I
    const/16 v17, 0x1

    aget v17, v8, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    sub-int v17, v17, v18

    const/16 v18, 0x1

    aget v18, v3, v18

    add-int v17, v17, v18

    const/16 v18, 0x0

    aget v18, v3, v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-gt v0, v11, :cond_106

    const/16 v17, 0x0

    aget v17, v3, v17

    const/16 v18, 0x1

    aget v18, v8, v18

    sub-int v17, v17, v18

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_106

    .line 188
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 189
    const/16 v17, 0x1

    const/16 v18, 0x1

    aget v18, v3, v18

    aput v18, v8, v17

    goto :goto_be

    .line 191
    :cond_106
    move-object v8, v3

    goto :goto_be

    .line 196
    .end local v3           #act:[I
    :cond_108
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 197
    const/4 v9, 0x0

    .line 198
    .local v9, lastWordEnd:I
    :goto_10d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_179

    .line 199
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    move-object/from16 v3, v17

    check-cast v3, [I

    .line 202
    .restart local v3       #act:[I
    const/16 v17, 0x0

    aget v17, v3, v17

    const/16 v18, 0x1

    aget v18, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 204
    .local v12, rawWord:Ljava/lang/CharSequence;
    if-nez p2, :cond_168

    .line 206
    sget-object v17, Lorg/columba/ristretto/coder/EncodedWord;->whitespacePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 207
    .local v16, wsMatcher:Ljava/util/regex/Matcher;
    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 209
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lorg/columba/ristretto/coder/QuotedPrintable;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 216
    .end local v16           #wsMatcher:Ljava/util/regex/Matcher;
    .local v4, encodedPart:Ljava/lang/CharSequence;
    :goto_145
    const/16 v17, 0x0

    aget v17, v3, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 219
    const-string v17, "?="

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const/16 v17, 0x1

    aget v9, v3, v17

    .line 222
    goto :goto_10d

    .line 211
    .end local v4           #encodedPart:Ljava/lang/CharSequence;
    :cond_168
    invoke-static {v12}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    .restart local v4       #encodedPart:Ljava/lang/CharSequence;
    goto :goto_145

    .line 223
    .end local v3           #act:[I
    .end local v4           #encodedPart:Ljava/lang/CharSequence;
    .end local v12           #rawWord:Ljava/lang/CharSequence;
    :cond_179
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto/16 :goto_af
.end method
