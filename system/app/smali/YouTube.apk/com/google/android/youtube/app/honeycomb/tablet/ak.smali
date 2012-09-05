.class final Lcom/google/android/youtube/app/honeycomb/tablet/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ak;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ak;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->d(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    return v0
.end method
