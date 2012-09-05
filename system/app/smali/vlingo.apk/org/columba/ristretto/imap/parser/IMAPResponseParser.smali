.class public Lorg/columba/ristretto/imap/parser/IMAPResponseParser;
.super Ljava/lang/Object;
.source "IMAPResponseParser.java"


# static fields
.field private static final mailbox_data:Ljava/util/regex/Pattern;

.field private static final message_data:Ljava/util/regex/Pattern;

.field private static final resp_cond:Ljava/util/regex/Pattern;

.field private static final resp_cont:Ljava/util/regex/Pattern;

.field private static final response:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "^((\\*)|([0-9a-zA-Z]+)|(\\+)) ([^\r\n]*)\r?\n?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->response:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "^(OK|BAD|NO|BYE|PREAUTH) (\\[(\\w+[^\\]]+)\\])? ?([^\r\n]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->resp_cond:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "^((FLAGS|LIST|LSUB|SEARCH|STATUS|CAPABILITY|NAMESPACE)|((\\d+) (EXISTS|RECENT))) ?([^\r\n]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->mailbox_data:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "^(\\d+) (EXPUNGE|FETCH) ?([^\r\n]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->message_data:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "^(\\[(\\w+[^\\]]+)\\] )?([^\r\n]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->resp_cont:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/IMAPResponse;
    .registers 14
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x3

    .line 101
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->response:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 104
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 105
    new-instance v5, Lorg/columba/ristretto/imap/IMAPResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;-><init>(Ljava/lang/String;)V

    .line 108
    .local v5, result:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_da

    .line 111
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->resp_cond:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 112
    .local v3, respCode:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 113
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseType(I)V

    .line 114
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseSubType(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4c

    .line 118
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseTextCode(Lorg/columba/ristretto/imap/ResponseTextCode;)V

    .line 122
    :cond_4c
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 203
    .end local v3           #respCode:Ljava/util/regex/Matcher;
    :goto_53
    return-object v5

    .line 128
    .restart local v3       #respCode:Ljava/util/regex/Matcher;
    :cond_54
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->mailbox_data:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 129
    .local v0, mailboxData:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 130
    invoke-virtual {v5, v11}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseType(I)V

    .line 133
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 134
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseSubType(Ljava/lang/String;)V

    .line 140
    :goto_74
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    goto :goto_53

    .line 136
    :cond_7d
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setPreNumber(I)V

    .line 137
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseSubType(Ljava/lang/String;)V

    goto :goto_74

    .line 146
    :cond_90
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->message_data:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 147
    .local v2, messageData:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 148
    invoke-virtual {v5, v9}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseType(I)V

    .line 150
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setPreNumber(I)V

    .line 151
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseSubType(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    goto :goto_53

    .line 159
    :cond_bd
    new-instance v6, Lorg/columba/ristretto/parser/ParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unkown subytpe : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    .end local v0           #mailboxData:Ljava/util/regex/Matcher;
    .end local v2           #messageData:Ljava/util/regex/Matcher;
    .end local v3           #respCode:Ljava/util/regex/Matcher;
    :cond_da
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_139

    .line 165
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setTag(Ljava/lang/String;)V

    .line 168
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->resp_cond:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 169
    .restart local v3       #respCode:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 170
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseType(I)V

    .line 171
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseSubType(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_113

    .line 175
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseTextCode(Lorg/columba/ristretto/imap/ResponseTextCode;)V

    .line 179
    :cond_113
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 185
    :cond_11c
    new-instance v6, Lorg/columba/ristretto/parser/ParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unkown subytpe :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    .end local v3           #respCode:Ljava/util/regex/Matcher;
    :cond_139
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16c

    .line 191
    invoke-virtual {v5, v8}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseType(I)V

    .line 193
    sget-object v6, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->resp_cont:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 194
    .local v4, respCont:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 196
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_163

    .line 197
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseTextCode(Lorg/columba/ristretto/imap/ResponseTextCode;)V

    .line 201
    :cond_163
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 210
    .end local v4           #respCont:Ljava/util/regex/Matcher;
    .end local v5           #result:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_16c
    new-instance v6, Lorg/columba/ristretto/parser/ParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Not a valid IMAP response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
