.class final Lcom/google/android/youtube/app/honeycomb/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/m;Z)Z

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->c(Lcom/google/android/youtube/app/honeycomb/ui/m;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "UploadStarted"

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v5}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Lcom/google/android/youtube/app/honeycomb/ui/m;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/n;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->d(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    .line 186
    return-void
.end method
