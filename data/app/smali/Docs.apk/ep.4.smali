.class public Lep;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lep;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lep;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v0

    iget-object v1, p0, Lep;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lep;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)LpB;

    move-result-object v0

    invoke-interface {v0}, LpB;->a()V

    .line 204
    const/4 v0, 0x1

    return v0
.end method
