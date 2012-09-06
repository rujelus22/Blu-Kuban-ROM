.class public LKr;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, LKr;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, LKr;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKr;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 310
    if-ne p2, p6, :cond_12

    if-ne p4, p8, :cond_12

    if-ne p3, p7, :cond_12

    if-ne p5, p9, :cond_12

    .line 320
    :goto_11
    return-void

    .line 313
    :cond_12
    const-string v0, "KixWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, LKr;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    new-instance v1, LKs;

    invoke-direct {v1, p0}, LKs;-><init>(LKr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method
