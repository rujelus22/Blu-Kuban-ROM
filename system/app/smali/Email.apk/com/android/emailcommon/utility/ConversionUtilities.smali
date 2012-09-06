.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 43
    if-nez p1, :cond_3

    .line 54
    :goto_2
    return-object p0

    .line 46
    :cond_3
    if-nez p0, :cond_b

    .line 47
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_2

    .line 49
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 50
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .registers 20
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    .local p2, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, sbHtml:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 68
    .local v11, sbText:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 69
    .local v9, sbHtmlReply:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 70
    .local v12, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 72
    .local v10, sbIntroText:Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/emailcommon/mail/Part;

    .line 73
    .local v14, viewable:Lcom/android/emailcommon/mail/Part;
    invoke-static {v14}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, text:Ljava/lang/String;
    const-string v15, "X-Android-Body-Quoted-Part"

    invoke-interface {v14, v15}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, replyTags:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, replyTag:Ljava/lang/String;
    if-eqz v7, :cond_30

    array-length v15, v7

    if-lez v15, :cond_30

    .line 77
    const/4 v15, 0x0

    aget-object v6, v7, v15

    .line 80
    :cond_30
    const-string v15, "text/html"

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 82
    .local v2, isHtml:Z
    if-eqz v6, :cond_80

    .line 83
    const-string v15, "quoted-reply"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 84
    .local v5, isQuotedReply:Z
    const-string v15, "quoted-forward"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 85
    .local v3, isQuotedForward:Z
    const-string v15, "quoted-intro"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 87
    .local v4, isQuotedIntro:Z
    if-nez v5, :cond_52

    if-eqz v3, :cond_79

    .line 88
    :cond_52
    if-eqz v2, :cond_72

    .line 89
    invoke-static {v9, v13}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 94
    :goto_58
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v15, v15, -0x4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 95
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v16, v0

    if-eqz v5, :cond_77

    const/4 v15, 0x1

    :goto_6b
    or-int v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto :goto_11

    .line 91
    :cond_72
    invoke-static {v12, v13}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_58

    .line 95
    :cond_77
    const/4 v15, 0x2

    goto :goto_6b

    .line 100
    :cond_79
    if-eqz v4, :cond_80

    .line 101
    invoke-static {v10, v13}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 102
    goto :goto_11

    .line 107
    .end local v3           #isQuotedForward:Z
    .end local v4           #isQuotedIntro:Z
    .end local v5           #isQuotedReply:Z
    :cond_80
    if-eqz v2, :cond_87

    .line 108
    invoke-static {v8, v13}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_11

    .line 110
    :cond_87
    invoke-static {v11, v13}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto :goto_11

    .line 115
    .end local v2           #isHtml:Z
    .end local v6           #replyTag:Ljava/lang/String;
    .end local v7           #replyTags:[Ljava/lang/String;
    .end local v13           #text:Ljava/lang/String;
    .end local v14           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_8c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a2

    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 117
    .restart local v13       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 118
    invoke-static {v13}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 120
    .end local v13           #text:Ljava/lang/String;
    :cond_a2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_be

    .line 121
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 122
    .restart local v13       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    if-nez v15, :cond_be

    .line 124
    invoke-static {v13}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 127
    .end local v13           #text:Ljava/lang/String;
    :cond_be
    if-eqz v9, :cond_ce

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v15, :cond_ce

    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 130
    :cond_ce
    if-eqz v12, :cond_de

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v15, :cond_de

    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 133
    :cond_de
    if-eqz v10, :cond_ee

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v15, :cond_ee

    .line 134
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 136
    :cond_ee
    const/4 v15, 0x1

    return v15
.end method
