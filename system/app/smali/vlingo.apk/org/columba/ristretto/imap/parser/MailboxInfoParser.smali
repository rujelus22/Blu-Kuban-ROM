.class public Lorg/columba/ristretto/imap/parser/MailboxInfoParser;
.super Ljava/lang/Object;
.source "MailboxInfoParser.java"


# static fields
.field private static final stringListPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "(\\s|\\()?([^\\s\\)]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/MailboxInfoParser;->stringListPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/message/MailboxInfo;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/columba/ristretto/imap/parser/MailboxInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/message/MailboxInfo;)Lorg/columba/ristretto/message/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/message/MailboxInfo;)Lorg/columba/ristretto/message/MailboxInfo;
    .registers 6
    .parameter "in"
    .parameter "mailboxInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 78
    if-eqz p1, :cond_17

    .line 79
    move-object v1, p1

    .line 83
    .local v1, result:Lorg/columba/ristretto/message/MailboxInfo;
    :goto_3
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, type:Ljava/lang/String;
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 85
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setRecent(I)V

    .line 131
    :cond_16
    :goto_16
    return-object v1

    .line 81
    .end local v1           #result:Lorg/columba/ristretto/message/MailboxInfo;
    .end local v2           #type:Ljava/lang/String;
    :cond_17
    new-instance v1, Lorg/columba/ristretto/message/MailboxInfo;

    invoke-direct {v1}, Lorg/columba/ristretto/message/MailboxInfo;-><init>()V

    .restart local v1       #result:Lorg/columba/ristretto/message/MailboxInfo;
    goto :goto_3

    .line 86
    .restart local v2       #type:Ljava/lang/String;
    :cond_1d
    const-string v3, "EXISTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 87
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setExists(I)V

    goto :goto_16

    .line 88
    :cond_2d
    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 89
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/columba/ristretto/imap/parser/StringListParser;->parse(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setDefinedFlags([Ljava/lang/String;)V

    goto :goto_16

    .line 91
    :cond_41
    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 92
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v0

    .line 93
    .local v0, info:Lorg/columba/ristretto/imap/ResponseTextCode;
    if-eqz v0, :cond_16

    .line 94
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/ResponseTextCode;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_82

    :pswitch_56
    goto :goto_16

    .line 108
    :pswitch_57
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/ResponseTextCode;->getStringArrayValue()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setPermanentFlags([Ljava/lang/String;)V

    goto :goto_16

    .line 96
    :pswitch_5f
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/ResponseTextCode;->getIntValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setFirstUnseen(I)V

    goto :goto_16

    .line 100
    :pswitch_67
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/ResponseTextCode;->getIntValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setUidValidity(I)V

    goto :goto_16

    .line 104
    :pswitch_6f
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/ResponseTextCode;->getIntValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setUidNext(I)V

    goto :goto_16

    .line 115
    :pswitch_77
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setWriteAccess(Z)V

    goto :goto_16

    .line 120
    :pswitch_7c
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/message/MailboxInfo;->setWriteAccess(Z)V

    goto :goto_16

    .line 94
    nop

    :pswitch_data_82
    .packed-switch 0x4
        :pswitch_57
        :pswitch_77
        :pswitch_7c
        :pswitch_56
        :pswitch_67
        :pswitch_6f
        :pswitch_5f
    .end packed-switch
.end method
