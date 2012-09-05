.class final Lcom/google/android/youtube/app/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/google/android/youtube/app/ui/t;

.field final synthetic d:Lcom/google/android/youtube/app/ui/q;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/q;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/google/android/youtube/app/ui/t;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/r;->d:Lcom/google/android/youtube/app/ui/q;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/r;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/r;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/google/android/youtube/app/ui/r;->c:Lcom/google/android/youtube/app/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/r;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 71
    :cond_17
    :goto_17
    return-void

    .line 68
    :cond_18
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/r;->d:Lcom/google/android/youtube/app/ui/q;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/q;->b(Lcom/google/android/youtube/app/ui/q;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/r;->d:Lcom/google/android/youtube/app/ui/q;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/q;->a(Lcom/google/android/youtube/app/ui/q;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/s;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/r;->d:Lcom/google/android/youtube/app/ui/q;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/r;->b:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/r;->c:Lcom/google/android/youtube/app/ui/t;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/youtube/app/ui/s;-><init>(Lcom/google/android/youtube/app/ui/q;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/t;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    goto :goto_17
.end method
