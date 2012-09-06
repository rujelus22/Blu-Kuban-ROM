.class public Les;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

.field final synthetic a:LpB;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;LpB;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Les;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iput-object p2, p0, Les;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Les;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->d(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v0

    iget-object v1, p0, Les;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 299
    iget-object v0, p0, Les;->a:LpB;

    invoke-interface {v0}, LpB;->a()V

    .line 300
    const/4 v0, 0x1

    return v0
.end method
