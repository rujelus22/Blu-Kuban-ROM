.class final Lcom/dropbox/android/activity/bp;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TextEditActivity;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->f(Lcom/dropbox/android/activity/TextEditActivity;)Z

    move-result v0

    if-nez v0, :cond_12

    if-ne p3, p4, :cond_12

    .line 294
    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/bp;->b:Ljava/lang/CharSequence;

    .line 296
    :cond_12
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v0, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->g(Lcom/dropbox/android/activity/TextEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->f(Lcom/dropbox/android/activity/TextEditActivity;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 302
    if-ne p4, p3, :cond_2f

    .line 303
    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/bp;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 305
    iget-object v0, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0, v2}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;Z)Z

    .line 311
    :cond_2e
    :goto_2e
    return-void

    .line 308
    :cond_2f
    iget-object v0, p0, Lcom/dropbox/android/activity/bp;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0, v2}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;Z)Z

    goto :goto_2e
.end method
