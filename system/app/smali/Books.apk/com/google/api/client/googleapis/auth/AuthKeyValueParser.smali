.class public final Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;
.super Ljava/lang/Object;
.source "AuthKeyValueParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# static fields
.field public static final INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;->INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "text/plain"

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v4

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpResponse;->setDisableContentLogging(Z)Lcom/google/api/client/http/HttpResponse;

    .line 50
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 52
    :try_start_10
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    :cond_1a
    :goto_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_4f

    move-result-object v1

    .line 55
    if-nez v1, :cond_24

    .line 82
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 84
    return-object v2

    .line 58
    :cond_24
    const/16 v3, 0x3d

    :try_start_26
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 59
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 60
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v4, v7}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 63
    if-eqz v8, :cond_56

    .line 64
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 66
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v7, :cond_47

    const-class v7, Ljava/lang/Boolean;

    if-ne v1, v7, :cond_54

    .line 67
    :cond_47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 71
    :goto_4b
    invoke-static {v8, v2, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_4f

    goto :goto_1a

    .line 82
    :catchall_4f
    move-exception v1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_54
    move-object v1, v3

    .line 69
    goto :goto_4b

    .line 72
    :cond_56
    :try_start_56
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 73
    move-object v0, v2

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v1, v0

    .line 74
    invoke-virtual {v1, v7, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 75
    :cond_66
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 77
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 78
    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_4f

    goto :goto_1a
.end method
