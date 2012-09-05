.class public Lorg/columba/ristretto/parser/BodyParser;
.super Ljava/lang/Object;
.source "BodyParser.java"


# static fields
.field private static final headerEndPattern:Ljava/util/regex/Pattern;

.field private static final lineEndPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "\r\n\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/BodyParser;->headerEndPattern:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "\r?\n|\r\n?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/BodyParser;->lineEndPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static parseMimePart(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/LocalMimePart;
    .registers 23
    .parameter "header"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v8, 0x0

    .line 106
    .local v8, endBoundaryFound:Z
    invoke-virtual/range {p0 .. p0}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v17

    .line 108
    .local v17, type:Lorg/columba/ristretto/message/MimeType;
    invoke-virtual/range {v17 .. v17}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "multipart"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1f

    .line 109
    new-instance v11, Lorg/columba/ristretto/message/LocalMimePart;

    invoke-interface/range {p1 .. p1}, Lorg/columba/ristretto/io/Source;->fromActualPosition()Lorg/columba/ristretto/io/Source;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lorg/columba/ristretto/message/LocalMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)V

    .line 245
    :cond_1e
    :goto_1e
    return-object v11

    .line 114
    :cond_1f
    new-instance v11, Lorg/columba/ristretto/message/LocalMimePart;

    invoke-interface/range {p1 .. p1}, Lorg/columba/ristretto/io/Source;->fromActualPosition()Lorg/columba/ristretto/io/Source;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lorg/columba/ristretto/message/LocalMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)V

    .line 116
    .local v11, multipart:Lorg/columba/ristretto/message/LocalMimePart;
    const-string v18, "boundary"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, boundary:Ljava/lang/String;
    if-nez v3, :cond_40

    .line 118
    new-instance v18, Lorg/columba/ristretto/parser/ParserException;

    const-string v19, "Content-Type is multipart, but no boundary specified!"

    invoke-direct/range {v18 .. v19}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 121
    :cond_40
    new-instance v5, Lorg/columba/ristretto/parser/CharSequenceSearcher;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/columba/ristretto/parser/CharSequenceSearcher;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, boundarySearcher:Lorg/columba/ristretto/parser/CharSequenceSearcher;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/columba/ristretto/parser/CharSequenceSearcher;->match(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v9

    .line 126
    .local v9, foundBoundaries:Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 127
    .local v10, it:Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 128
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v16

    .line 130
    .local v16, suffix:C
    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_66

    const/16 v18, 0xa

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_66

    const/16 v18, 0x2d

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_66

    .line 131
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_66

    .line 136
    .end local v16           #suffix:C
    :cond_a2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_c9

    .line 137
    new-instance v18, Lorg/columba/ristretto/parser/ParserException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "No startboundary found: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v18

    .line 141
    :cond_c9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 145
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    add-int/lit8 v12, v18, 0x2

    .line 148
    .local v12, start:I
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1a8

    .line 164
    :cond_e8
    :goto_e8
    :pswitch_e8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_183

    .line 165
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 166
    .local v6, boundaryStart:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v6

    add-int/lit8 v4, v18, 0x2

    .line 169
    .local v4, boundaryEnd:I
    add-int/lit8 v18, v6, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1b4

    .line 184
    :cond_10d
    :goto_10d
    :pswitch_10d
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    sparse-switch v18, :sswitch_data_1c0

    .line 210
    :cond_116
    :goto_116
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v6}, Lorg/columba/ristretto/io/Source;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v15

    .line 213
    .local v15, subSource:Lorg/columba/ristretto/io/Source;
    invoke-static {v15}, Lorg/columba/ristretto/parser/HeaderParser;->parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Header;

    move-result-object v13

    .line 216
    .local v13, subHeader:Lorg/columba/ristretto/message/Header;
    new-instance v18, Lorg/columba/ristretto/message/MimeHeader;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/columba/ristretto/message/MimeHeader;-><init>(Lorg/columba/ristretto/message/Header;)V

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lorg/columba/ristretto/parser/BodyParser;->parseMimePart(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/LocalMimePart;

    move-result-object v14

    .line 220
    .local v14, subPart:Lorg/columba/ristretto/message/LocalMimePart;
    invoke-virtual {v14, v15}, Lorg/columba/ristretto/message/LocalMimePart;->setSource(Lorg/columba/ristretto/io/Source;)V

    .line 221
    invoke-virtual {v11, v14}, Lorg/columba/ristretto/message/LocalMimePart;->addChild(Lorg/columba/ristretto/message/MimePart;)V

    .line 222
    move v12, v4

    .line 223
    goto :goto_e8

    .line 150
    .end local v4           #boundaryEnd:I
    .end local v6           #boundaryStart:I
    .end local v13           #subHeader:Lorg/columba/ristretto/message/Header;
    .end local v14           #subPart:Lorg/columba/ristretto/message/LocalMimePart;
    .end local v15           #subSource:Lorg/columba/ristretto/io/Source;
    :pswitch_135
    add-int/lit8 v12, v12, 0x1

    .line 151
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e8

    .line 152
    add-int/lit8 v12, v12, 0x1

    goto :goto_e8

    .line 158
    :pswitch_148
    add-int/lit8 v12, v12, 0x1

    goto :goto_e8

    .line 171
    .restart local v4       #boundaryEnd:I
    .restart local v6       #boundaryStart:I
    :pswitch_14b
    add-int/lit8 v6, v6, -0x1

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10d

    .line 173
    add-int/lit8 v6, v6, -0x1

    goto :goto_10d

    .line 179
    :pswitch_15e
    add-int/lit8 v6, v6, -0x1

    goto :goto_10d

    .line 188
    :sswitch_161
    add-int/lit8 v4, v4, 0x4

    .line 189
    const/4 v8, 0x1

    .line 190
    goto :goto_116

    .line 194
    :sswitch_165
    add-int/lit8 v4, v4, 0x1

    .line 195
    invoke-interface/range {p1 .. p1}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v4, :cond_116

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_116

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    .line 203
    :sswitch_180
    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    .line 226
    .end local v4           #boundaryEnd:I
    .end local v6           #boundaryStart:I
    :cond_183
    if-nez v8, :cond_1e

    .line 228
    invoke-interface/range {p1 .. p1}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v7

    .line 231
    .local v7, end:I
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/columba/ristretto/io/Source;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v15

    .line 234
    .restart local v15       #subSource:Lorg/columba/ristretto/io/Source;
    invoke-static {v15}, Lorg/columba/ristretto/parser/HeaderParser;->parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Header;

    move-result-object v13

    .line 237
    .restart local v13       #subHeader:Lorg/columba/ristretto/message/Header;
    new-instance v18, Lorg/columba/ristretto/message/MimeHeader;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/columba/ristretto/message/MimeHeader;-><init>(Lorg/columba/ristretto/message/Header;)V

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lorg/columba/ristretto/parser/BodyParser;->parseMimePart(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/LocalMimePart;

    move-result-object v14

    .line 241
    .restart local v14       #subPart:Lorg/columba/ristretto/message/LocalMimePart;
    invoke-virtual {v14, v15}, Lorg/columba/ristretto/message/LocalMimePart;->setSource(Lorg/columba/ristretto/io/Source;)V

    .line 242
    invoke-virtual {v11, v14}, Lorg/columba/ristretto/message/LocalMimePart;->addChild(Lorg/columba/ristretto/message/MimePart;)V

    goto/16 :goto_1e

    .line 148
    :pswitch_data_1a8
    .packed-switch 0xa
        :pswitch_148
        :pswitch_e8
        :pswitch_e8
        :pswitch_135
    .end packed-switch

    .line 169
    :pswitch_data_1b4
    .packed-switch 0xa
        :pswitch_14b
        :pswitch_10d
        :pswitch_10d
        :pswitch_15e
    .end packed-switch

    .line 184
    :sswitch_data_1c0
    .sparse-switch
        0xa -> :sswitch_180
        0xd -> :sswitch_165
        0x2d -> :sswitch_161
    .end sparse-switch
.end method

.method public static skipHeader(Lorg/columba/ristretto/io/Source;)V
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lorg/columba/ristretto/parser/BodyParser;->headerEndPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 75
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 76
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/columba/ristretto/io/Source;->seek(I)V

    .line 78
    :cond_13
    return-void
.end method
