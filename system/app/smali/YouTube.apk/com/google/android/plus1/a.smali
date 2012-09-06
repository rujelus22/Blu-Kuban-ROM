.class final Lcom/google/android/plus1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/ac;

.field final synthetic b:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;Lcom/google/android/plus1/ac;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/plus1/a;->b:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iput-object p2, p0, Lcom/google/android/plus1/a;->a:Lcom/google/android/plus1/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 4
    .parameter

    .prologue
    .line 437
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 444
    iget-object v0, p0, Lcom/google/android/plus1/a;->a:Lcom/google/android/plus1/ac;

    if-eqz v0, :cond_d

    .line 445
    iget-object v0, p0, Lcom/google/android/plus1/a;->a:Lcom/google/android/plus1/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Object;)V

    .line 447
    :cond_d
    :goto_d
    return-void

    .line 438
    :catch_e
    move-exception v0

    .line 439
    iget-object v1, p0, Lcom/google/android/plus1/a;->a:Lcom/google/android/plus1/ac;

    if-eqz v1, :cond_d

    .line 440
    iget-object v1, p0, Lcom/google/android/plus1/a;->a:Lcom/google/android/plus1/ac;

    invoke-interface {v1, v0}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Exception;)V

    goto :goto_d
.end method
