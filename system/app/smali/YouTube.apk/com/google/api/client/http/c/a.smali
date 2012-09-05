.class public final Lcom/google/api/client/http/c/a;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Lcom/google/api/client/json/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 57
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->a:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 57
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->a:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->c:Lcom/google/api/client/json/c;

    .line 91
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/c/a;->b:Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/client/http/c/a;->c:Lcom/google/api/client/json/c;

    sget-object v1, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/api/client/http/c/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lcom/google/api/client/json/d;->a()V

    .line 102
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/client/http/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
