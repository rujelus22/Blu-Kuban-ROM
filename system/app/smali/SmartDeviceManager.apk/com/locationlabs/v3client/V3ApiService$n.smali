.class abstract Lcom/locationlabs/v3client/V3ApiService$n;
.super Laj;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x420
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        "Request::",
        "Lep",
        "<TResponse;>;>",
        "Laj",
        "<TResponse;TRequest;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Lep;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$n;->e:Lcom/locationlabs/v3client/V3ApiService;

    .line 67
    new-instance v2, Lz;

    invoke-direct {v2, p3}, Lz;-><init>(Ljava/lang/String;)V

    new-instance v3, Ldm;

    invoke-direct {v3}, Ldm;-><init>()V

    iget-object v0, p1, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v0}, Lw;->a()Lda;

    move-result-object v4

    iget-object v0, p1, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Laj;-><init>(Lep;Lz;Lea;Lda;Lcq;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$n;->e:Lcom/locationlabs/v3client/V3ApiService;

    .line 61
    new-instance v3, Lz;

    invoke-direct {v3, p4}, Lz;-><init>(Ljava/lang/String;)V

    new-instance v4, Ldm;

    invoke-direct {v4}, Ldm;-><init>()V

    iget-object v0, p1, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v0}, Lw;->a()Lda;

    move-result-object v5

    iget-object v0, p1, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Laj;-><init>(Ljava/lang/String;Ljava/lang/String;Lz;Lea;Lda;Lcq;)V

    .line 63
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TRequest;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    :try_start_1
    invoke-static {p2}, Lk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lep;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_11

    move-object v0, p0

    .line 84
    :goto_8
    return-object v0

    .line 79
    :catch_9
    move-exception v0

    .line 80
    const-string v1, "base64 decoding error: "

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 81
    goto :goto_8

    .line 82
    :catch_11
    move-exception v0

    .line 83
    const-string v1, "base64 decoding error: "

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 84
    goto :goto_8
.end method

.method protected final b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/locationlabs/v3client/V3ApiService$n;->b()Lz;

    move-result-object v1

    invoke-virtual {v1}, Lz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/V3ApiService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
