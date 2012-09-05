.class public final Lcom/google/api/client/http/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/j;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lcom/google/api/client/json/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/c/b;->a:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/json/c;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/c/b;->a:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/http/c/b;->b:Lcom/google/api/client/json/c;

    .line 84
    return-void
.end method

.method private static a(Lcom/google/api/client/json/c;Lcom/google/api/client/http/o;)Lcom/google/api/client/json/e;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/google/api/client/http/o;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 131
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 136
    return-object v0

    :catchall_c
    move-exception v0

    if-eqz v1, :cond_12

    .line 137
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_12
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/o;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/http/c/b;->b:Lcom/google/api/client/json/c;

    invoke-static {v0, p1}, Lcom/google/api/client/http/c/b;->a(Lcom/google/api/client/json/c;Lcom/google/api/client/http/o;)Lcom/google/api/client/json/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/e;->a(Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/api/client/http/c/b;->a:Ljava/lang/String;

    return-object v0
.end method
