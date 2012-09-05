.class final Lcom/google/android/plus1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 428
    const-string v0, "+1 authorization failed."

    invoke-static {v0, p1}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->b(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 430
    const-string v0, "Can\'t continue click: user did not authorize +1"

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->b(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 432
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    iget-object v1, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-virtual {v1}, Lcom/google/android/plus1/BasePlusOneButton;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->c(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 435
    :cond_2e
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->c(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 436
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    const-string v0, "+1 authorization successful."

    invoke-static {v0}, Lcom/google/android/plus1/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/plus1/b;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;)V

    return-void
.end method
