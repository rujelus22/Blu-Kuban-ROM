.class public final Lcom/google/api/client/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/api/client/http/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Lcom/google/api/client/http/n;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/http/n;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/api/client/http/m;->a:Lcom/google/api/client/http/p;

    .line 69
    iput-object p2, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/n;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/f;Lcom/google/api/client/http/g;)Lcom/google/api/client/http/k;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/api/client/http/m;->a:Lcom/google/api/client/http/p;

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Lcom/google/api/client/http/k;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/n;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/n;

    invoke-interface {v0, v1}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/k;)V

    .line 108
    :cond_f
    invoke-virtual {v1, p1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/k;

    .line 109
    if-eqz p2, :cond_1c

    .line 110
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/f;

    iput-object v0, v1, Lcom/google/api/client/http/k;->i:Lcom/google/api/client/http/f;

    .line 112
    :cond_1c
    if-eqz p3, :cond_20

    .line 113
    iput-object p3, v1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    .line 115
    :cond_20
    return-object v1
.end method
