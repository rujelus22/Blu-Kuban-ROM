.class public final Lcom/google/api/client/util/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/api/client/util/a/b;

.field private static final b:Lcom/google/api/client/util/a/b;

.field private static final c:Lcom/google/api/client/util/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->a:Lcom/google/api/client/util/a/b;

    .line 31
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.!~*\'()@:$&,;="

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->b:Lcom/google/api/client/util/a/b;

    .line 34
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->c:Lcom/google/api/client/util/a/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/google/api/client/util/a/a;->a:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 81
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 82
    :catch_7
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/google/api/client/util/a/a;->b:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/google/api/client/util/a/a;->c:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
