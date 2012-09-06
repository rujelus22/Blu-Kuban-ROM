.class Lex;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

.field final synthetic a:Lew;


# direct methods
.method constructor <init>(Lew;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lex;->a:Lew;

    iput-object p2, p0, Lex;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lex;->a:Lew;

    iget-object v0, v0, Lew;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->i(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v0

    iget-object v1, p0, Lex;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 449
    iget-object v0, p0, Lex;->a:Lew;

    iget-object v0, v0, Lew;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    .line 450
    return-void
.end method
