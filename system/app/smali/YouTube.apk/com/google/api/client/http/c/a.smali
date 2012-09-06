.class public final Lcom/google/api/client/http/c/a;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/api/client/json/c;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 53
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->a:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->c:Lcom/google/api/client/json/c;

    .line 68
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->b:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/c/a;->c:Lcom/google/api/client/json/c;

    sget-object v1, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/api/client/http/c/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/api/client/json/d;->a()V

    .line 79
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
