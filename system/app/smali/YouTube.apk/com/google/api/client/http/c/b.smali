.class public final Lcom/google/api/client/http/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/api/client/json/c;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/c;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    const-string v0, "application/json"

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/c/b;-><init>(Lcom/google/api/client/json/c;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/json/c;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/http/c/b;->b:Lcom/google/api/client/json/c;

    .line 79
    iput-object p2, p0, Lcom/google/api/client/http/c/b;->a:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static a(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/json/e;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->f()Ljava/io/InputStream;

    move-result-object v1

    .line 117
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 122
    return-object v0

    :catchall_c
    move-exception v0

    if-eqz v1, :cond_12

    .line 123
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_12
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/p;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/api/client/http/c/b;->b:Lcom/google/api/client/json/c;

    invoke-static {v0, p1}, Lcom/google/api/client/http/c/b;->a(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/json/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/e;->a(Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/http/c/b;->a:Ljava/lang/String;

    return-object v0
.end method
