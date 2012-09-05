.class final Lcom/google/android/youtube/app/honeycomb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/e;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v0

    aget-object v0, v0, p2

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/e;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->E()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/utils/SafeSearch;->a(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V

    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    return-void
.end method
