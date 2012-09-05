.class final Lcom/google/android/youtube/app/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cf;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cf;Landroid/widget/RadioButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cg;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cf;->a(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_46

    const v0, 0x7f0a0025

    :goto_12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cf;->b(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "upload_policy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upload_policy_dialog_shown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    invoke-static {v0, v3}, Lcom/google/android/youtube/app/ui/cf;->a(Lcom/google/android/youtube/app/ui/cf;Z)Z

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cf;->c(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/cf;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cf;->c(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 68
    :cond_45
    return-void

    .line 57
    :cond_46
    const v0, 0x7f0a0101

    goto :goto_12
.end method
