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
    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/e;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/e;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->h()V

    .line 82
    return-void
.end method
