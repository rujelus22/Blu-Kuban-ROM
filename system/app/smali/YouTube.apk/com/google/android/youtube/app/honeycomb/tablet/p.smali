.class final Lcom/google/android/youtube/app/honeycomb/tablet/p;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/core/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/p;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/p;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Upload"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/p;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/app/Activity;)V

    .line 403
    return-void
.end method
