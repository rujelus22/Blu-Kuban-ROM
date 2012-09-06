.class public LEy;
.super Ljava/lang/Object;
.source "TrixNativeDemoActivity.java"

# interfaces
.implements LIH;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Lck;

    iget-object v1, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access confirmed."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 58
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;Z)Z

    .line 59
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V

    .line 61
    :cond_2d
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Lck;

    iget-object v1, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access requested."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 73
    iget-object v0, p0, LEy;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_27
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access denied: "

    invoke-static {v0, v1, p1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    return-void
.end method
