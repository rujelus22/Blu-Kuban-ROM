.class public final Lcom/google/api/client/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/http/r;

.field private final b:Lcom/google/api/client/http/o;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/http/o;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/api/client/http/n;->a:Lcom/google/api/client/http/r;

    .line 54
    iput-object p2, p0, Lcom/google/api/client/http/n;->b:Lcom/google/api/client/http/o;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/g;Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/client/http/n;->a:Lcom/google/api/client/http/r;

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->b()Lcom/google/api/client/http/l;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/api/client/http/n;->b:Lcom/google/api/client/http/o;

    if-eqz v1, :cond_f

    .line 91
    iget-object v1, p0, Lcom/google/api/client/http/n;->b:Lcom/google/api/client/http/o;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/l;)V

    .line 93
    :cond_f
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/l;

    .line 94
    if-eqz p2, :cond_17

    .line 95
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/g;)Lcom/google/api/client/http/l;

    .line 97
    :cond_17
    if-eqz p3, :cond_1c

    .line 98
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;

    .line 100
    :cond_1c
    return-object v0
.end method
