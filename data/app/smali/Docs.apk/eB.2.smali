.class LeB;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

.field final synthetic a:Ley;


# direct methods
.method constructor <init>(Ley;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, LeB;->a:Ley;

    iput-object p2, p0, LeB;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, LeB;->a:Ley;

    iget-object v0, v0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->k(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v0

    iget-object v1, p0, LeB;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 474
    iget-object v0, p0, LeB;->a:Ley;

    invoke-static {v0}, Ley;->a(Ley;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 475
    iget-object v0, p0, LeB;->a:Ley;

    invoke-static {v0}, Ley;->b(Ley;)V

    .line 477
    :cond_1a
    iget-object v0, p0, LeB;->a:Ley;

    iget-object v0, v0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 478
    iget-object v0, p0, LeB;->a:Ley;

    iget-object v0, v0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, LeB;->a:Ley;

    iget-object v1, v1, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 480
    :cond_3b
    iget-object v0, p0, LeB;->a:Ley;

    invoke-static {v0}, Ley;->c(Ley;)V

    .line 481
    return-void
.end method
