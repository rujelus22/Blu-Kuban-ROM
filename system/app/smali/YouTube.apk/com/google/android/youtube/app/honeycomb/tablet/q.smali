.class final Lcom/google/android/youtube/app/honeycomb/tablet/q;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Lcom/google/android/youtube/core/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/q;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/q;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Upload"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/q;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;)V

    .line 407
    return-void
.end method
