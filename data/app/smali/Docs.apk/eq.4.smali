.class public Leq;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Leq;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iput-object p2, p0, Leq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 254
    new-instance v0, Ler;

    invoke-direct {v0, p0}, Ler;-><init>(Leq;)V

    invoke-virtual {v0}, Ler;->start()V

    .line 263
    const/4 v0, 0x1

    return v0
.end method
