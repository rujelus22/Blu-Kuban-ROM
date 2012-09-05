.class final Lcom/google/android/youtube/plus1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/plus1/g;

.field final synthetic b:Lcom/google/android/youtube/plus1/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/plus1/d;Lcom/google/android/youtube/plus1/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/plus1/e;->b:Lcom/google/android/youtube/plus1/d;

    iput-object p2, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    if-eqz v0, :cond_d

    .line 221
    instance-of v0, p1, Landroid/accounts/OperationCanceledException;

    if-eqz v0, :cond_e

    .line 222
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    .line 229
    :cond_d
    :goto_d
    return-void

    .line 225
    :cond_e
    const-string v0, "AccountManager error when authorizing +1"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    goto :goto_d
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->b:Lcom/google/android/youtube/plus1/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/plus1/d;->a(Lcom/google/android/youtube/plus1/d;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->b:Lcom/google/android/youtube/plus1/d;

    invoke-static {v0}, Lcom/google/android/youtube/plus1/d;->a(Lcom/google/android/youtube/plus1/d;)Lcom/google/android/plus1/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/plus1/w;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/plus1/e;->a:Lcom/google/android/youtube/plus1/g;

    :cond_18
    return-void
.end method
