.class final Lcom/google/android/youtube/app/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/Analytics;

.field final synthetic b:Lcom/google/android/youtube/app/p;

.field final synthetic c:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/p;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ay;->c:Lcom/google/android/youtube/app/ui/at;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ay;->a:Lcom/google/android/youtube/core/Analytics;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ay;->b:Lcom/google/android/youtube/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->c:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/at;->d(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlayVideo"

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ay;->c:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/at;->d(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_17
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->b:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ay;->c:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/ui/at;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->c:Lcom/google/android/youtube/app/ui/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/ui/at;Z)Z

    .line 158
    return-void

    .line 154
    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlayVideo"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_17
.end method
