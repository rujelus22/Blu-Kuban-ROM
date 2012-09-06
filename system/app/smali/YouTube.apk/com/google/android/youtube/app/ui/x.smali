.class final Lcom/google/android/youtube/app/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/google/android/youtube/app/ui/z;

.field final synthetic d:Lcom/google/android/youtube/app/ui/w;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/w;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/google/android/youtube/app/ui/z;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/x;->d:Lcom/google/android/youtube/app/ui/w;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/x;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/x;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/google/android/youtube/app/ui/x;->c:Lcom/google/android/youtube/app/ui/z;

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
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/x;->a:Landroid/widget/EditText;

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
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/x;->d:Lcom/google/android/youtube/app/ui/w;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/w;->b(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/x;->d:Lcom/google/android/youtube/app/ui/w;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/w;->a(Lcom/google/android/youtube/app/ui/w;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/y;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/x;->d:Lcom/google/android/youtube/app/ui/w;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/x;->b:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/x;->c:Lcom/google/android/youtube/app/ui/z;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/youtube/app/ui/y;-><init>(Lcom/google/android/youtube/app/ui/w;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/z;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    goto :goto_17
.end method
