.class final Lcom/google/android/youtube/app/ui/cs;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cr;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cr;Lcom/google/android/youtube/core/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/cr;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/cr;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "CreatePlaylist"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/cr;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 419
    return-void
.end method
