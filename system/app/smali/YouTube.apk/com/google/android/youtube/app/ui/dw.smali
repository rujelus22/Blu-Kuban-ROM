.class final Lcom/google/android/youtube/app/ui/dw;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dv;Lcom/google/android/youtube/core/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dw;->a:Lcom/google/android/youtube/app/ui/dv;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dw;->a:Lcom/google/android/youtube/app/ui/dv;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "CreatePlaylist"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dw;->a:Lcom/google/android/youtube/app/ui/dv;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dv;->b:Lcom/google/android/youtube/app/ui/du;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/du;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 610
    return-void
.end method
