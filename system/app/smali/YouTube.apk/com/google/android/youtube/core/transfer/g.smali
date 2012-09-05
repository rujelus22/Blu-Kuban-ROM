.class public final Lcom/google/android/youtube/core/transfer/g;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;I)I

    .line 210
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;I)I

    .line 202
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/d;)Z
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/d;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/d;)Z
    .registers 3
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/d;)Z

    move-result v0

    return v0
.end method
