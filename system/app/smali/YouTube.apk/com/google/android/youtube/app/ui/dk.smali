.class final Lcom/google/android/youtube/app/ui/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/google/android/youtube/app/ui/dj;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dj;Landroid/widget/RadioButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/dk;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dj;->a(Lcom/google/android/youtube/app/ui/dj;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_40

    const v0, 0x7f0b002b

    :goto_11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dj;->b(Lcom/google/android/youtube/app/ui/dj;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "upload_policy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dj;->a(Lcom/google/android/youtube/app/ui/dj;Z)Z

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dj;->c(Lcom/google/android/youtube/app/ui/dj;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->b:Lcom/google/android/youtube/app/ui/dj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dj;->c(Lcom/google/android/youtube/app/ui/dj;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 66
    :cond_3f
    return-void

    .line 57
    :cond_40
    const v0, 0x7f0b0142

    goto :goto_11
.end method
