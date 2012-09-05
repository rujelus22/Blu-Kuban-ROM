.class final Lcom/google/android/youtube/app/honeycomb/d;
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
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/d;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/d;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->g()V

    .line 78
    return-void
.end method
