.class public LEv;
.super Ljava/lang/Object;
.source "TrixDemoActivity.java"

# interfaces
.implements LIH;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Lck;

    iget-object v1, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access confirmed."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 59
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;Z)Z

    .line 60
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V

    .line 62
    :cond_2d
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Lck;

    iget-object v1, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access requested."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 74
    iget-object v0, p0, LEv;->a:Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_27
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access denied: "

    invoke-static {v0, v1, p1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-void
.end method
