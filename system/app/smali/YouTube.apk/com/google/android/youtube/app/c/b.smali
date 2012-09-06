.class final Lcom/google/android/youtube/app/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/plus1/b;

.field final synthetic b:Lcom/google/android/youtube/app/c/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/c/a;Lcom/google/android/youtube/plus1/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/app/c/b;->b:Lcom/google/android/youtube/app/c/a;

    iput-object p2, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    if-eqz v0, :cond_d

    .line 104
    instance-of v0, p1, Landroid/accounts/OperationCanceledException;

    if-eqz v0, :cond_e

    .line 105
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    .line 112
    :cond_d
    :goto_d
    return-void

    .line 108
    :cond_e
    const-string v0, "AccountManager error when authorizing +1"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    goto :goto_d
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->b:Lcom/google/android/youtube/app/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/c/a;->a(Lcom/google/android/youtube/app/c/a;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->b:Lcom/google/android/youtube/app/c/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/c/a;->a(Lcom/google/android/youtube/app/c/a;)Lcom/google/android/plus1/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/plus1/w;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/c/b;->a:Lcom/google/android/youtube/plus1/b;

    :cond_18
    return-void
.end method
