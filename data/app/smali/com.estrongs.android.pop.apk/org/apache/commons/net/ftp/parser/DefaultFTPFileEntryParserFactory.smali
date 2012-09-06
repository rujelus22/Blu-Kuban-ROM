.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/lang/String; = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_10} :catch_5c

    move-result-object v2

    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_17} :catch_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_5e
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_11 .. :try_end_17} :catch_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_17} :catch_5c

    move-object v1, v0

    :cond_18
    :goto_18
    if-nez v1, :cond_2d

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_70

    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_2d
    :goto_2d
    instance-of v0, v1, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, p2}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_37
    return-object v1

    :catch_38
    move-exception v0

    :try_start_39
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not implement the interface "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5c
    move-exception v0

    goto :goto_18

    :catch_5e
    move-exception v0

    new-instance v2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v3, "Error initializing parser"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_67
    move-exception v0

    new-instance v2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v3, "Error initializing parser"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_70} :catch_5c

    :cond_70
    const-string v1, "VMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7e

    new-instance v1, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_2d

    :cond_7e
    const-string v1, "WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8b

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    goto :goto_2d

    :cond_8b
    const-string v1, "OS/2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_99

    new-instance v1, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_2d

    :cond_99
    const-string v1, "OS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_a9

    const-string v1, "AS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_ae

    :cond_a9
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    goto :goto_2d

    :cond_ae
    const-string v1, "MVS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_bd

    new-instance v1, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    goto/16 :goto_2d

    :cond_bd
    const-string v1, "NETWARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_cc

    new-instance v1, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_2d

    :cond_cc
    const-string v1, "TYPE: L8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_db

    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_2d

    :cond_db
    new-instance v0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parser type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 6

    if-eqz p1, :cond_14

    const-string v0, "WINDOWS"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    goto :goto_13
.end method

.method private createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 6

    if-eqz p1, :cond_14

    const-string v0, "OS/400"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    goto :goto_13
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v1, "Parser key cannot be null"

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 3

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    return-object v0
.end method
