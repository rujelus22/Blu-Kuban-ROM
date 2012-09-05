.class final Lcom/google/android/youtube/app/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/u;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->b(Lcom/google/android/youtube/app/ui/u;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->c(Lcom/google/android/youtube/app/ui/u;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/u;->a(Lcom/google/android/youtube/app/ui/u;Z)V

    .line 132
    :goto_25
    return-void

    .line 127
    :cond_26
    invoke-static {}, Lcom/google/android/youtube/app/ui/u;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->d(Lcom/google/android/youtube/app/ui/u;)V

    goto :goto_25

    .line 130
    :cond_3e
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->e(Lcom/google/android/youtube/app/ui/u;)V

    goto :goto_25
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    return-void
.end method
