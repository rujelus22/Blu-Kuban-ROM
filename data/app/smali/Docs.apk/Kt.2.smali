.class public LKt;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements LKE;


# instance fields
.field private a:I

.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-object p1, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput v0, p0, LKt;->a:I

    .line 325
    iput v0, p0, LKt;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 331
    const-string v0, "KixWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update page range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x1

    add-int/lit8 v1, p1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 333
    iget-object v1, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LKF;

    move-result-object v1

    invoke-interface {v1}, LKF;->c()I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 334
    iget v2, p0, LKt;->a:I

    if-ne v0, v2, :cond_50

    iget v2, p0, LKt;->b:I

    if-eq v1, v2, :cond_59

    .line 335
    :cond_50
    iget-object v2, p0, LKt;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;II)V

    .line 336
    iput v0, p0, LKt;->a:I

    .line 337
    iput v1, p0, LKt;->b:I

    .line 340
    :cond_59
    return-void
.end method
