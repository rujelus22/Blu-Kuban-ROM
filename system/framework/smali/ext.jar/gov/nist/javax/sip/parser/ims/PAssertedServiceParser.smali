.class public Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAssertedServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "pas"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v5, :cond_9

    .line 58
    const-string v5, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 61
    :cond_9
    :try_start_9
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x861

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    .line 67
    .local v2, pps:Lgov/nist/javax/sip/header/ims/PAssertedService;
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, urn:Ljava/lang/String;
    const-string v5, "urn:urn-7:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 70
    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 72
    const-string v5, "3gpp-service."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .line 74
    .local v3, serviceID:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_77

    move-result v5

    if-eqz v5, :cond_6a

    .line 76
    :try_start_51
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-service"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_77
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_51 .. :try_end_59} :catch_59

    .line 77
    :catch_59
    move-exception v1

    .line 79
    .local v1, e:Ljavax/sip/InvalidArgumentException;
    :try_start_5a
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 107
    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    .end local v3           #serviceID:Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_77

    .line 111
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v5, :cond_69

    .line 112
    const-string v5, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 108
    :cond_69
    return-object v2

    .line 82
    .restart local v3       #serviceID:Ljava/lang/String;
    :cond_6a
    :try_start_6a
    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_77

    goto :goto_5d

    .line 111
    .end local v2           #pps:Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v3           #serviceID:Ljava/lang/String;
    .end local v4           #urn:Ljava/lang/String;
    :catchall_77
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v6, :cond_81

    .line 112
    const-string v6, "PAssertedServiceParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 111
    :cond_81
    throw v5

    .line 84
    .restart local v2       #pps:Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4       #urn:Ljava/lang/String;
    :cond_82
    :try_start_82
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 86
    const-string v5, "3gpp-application."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 87
    .local v0, appID:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_77

    move-result v5

    if-eqz v5, :cond_ac

    .line 89
    :try_start_9f
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-application"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_77
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_9f .. :try_end_a7} :catch_a7

    .line 90
    :catch_a7
    move-exception v1

    .line 91
    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_a8
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_5d

    .line 94
    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    :cond_ac
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_77

    goto :goto_5d

    .line 99
    .end local v0           #appID:Ljava/lang/String;
    :cond_b9
    :try_start_b9
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN is not well formed"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_77
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_b9 .. :try_end_c1} :catch_c1

    .line 101
    :catch_c1
    move-exception v1

    .line 102
    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_c2
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_77

    goto :goto_5d
.end method
