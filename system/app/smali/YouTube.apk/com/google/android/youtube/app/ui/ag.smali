.class final Lcom/google/android/youtube/app/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/youtube/app/ui/aa;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/aa;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    iput-boolean p2, p0, Lcom/google/android/youtube/app/ui/ag;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .registers 4
    .parameter

    .prologue
    .line 212
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const-string v1, "hint"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/aa;->i(Lcom/google/android/youtube/app/ui/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 188
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ag;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ag;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_27

    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const-string v2, "hint"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/aa;->b(Lcom/google/android/youtube/app/ui/aa;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/aa;->h(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/aa;->c(Lcom/google/android/youtube/app/ui/aa;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Ljava/util/List;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ag;->a:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ag;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ag;->b:Lcom/google/android/youtube/app/ui/aa;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/ag;->a:Z

    invoke-virtual {v0, p2, v1}, Lcom/google/android/youtube/app/ui/aa;->a(Ljava/util/List;Z)V

    :cond_1f
    return-void
.end method
