.class public Lorg/columba/ristretto/parser/MimeTypeParser;
.super Ljava/lang/Object;
.source "MimeTypeParser.java"


# static fields
.field private static final mimetypePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "([^/\\s]+)/([^\\s;]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/MimeTypeParser;->mimetypePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/MimeType;
    .registers 5
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p0, :cond_a

    new-instance v1, Lorg/columba/ristretto/parser/ParserException;

    const-string v2, "Input is null"

    invoke-direct {v1, v2}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_a
    sget-object v1, Lorg/columba/ristretto/parser/MimeTypeParser;->mimetypePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 68
    new-instance v1, Lorg/columba/ristretto/message/MimeType;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 69
    :cond_2e
    new-instance v1, Lorg/columba/ristretto/parser/ParserException;

    invoke-direct {v1}, Lorg/columba/ristretto/parser/ParserException;-><init>()V

    throw v1
.end method
