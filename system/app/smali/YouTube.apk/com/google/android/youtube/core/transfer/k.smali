.class final Lcom/google/android/youtube/core/transfer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/k;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->e(Lcom/google/android/youtube/core/transfer/TransferService;)V

    .line 427
    :cond_11
    :goto_11
    return-void

    .line 420
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 421
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->f(Lcom/google/android/youtube/core/transfer/TransferService;)V

    goto :goto_11

    .line 422
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->g(Lcom/google/android/youtube/core/transfer/TransferService;)V

    goto :goto_11

    .line 424
    :cond_36
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 425
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/k;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->h(Lcom/google/android/youtube/core/transfer/TransferService;)V

    goto :goto_11
.end method
