.class final Lcom/google/android/youtube/app/ui/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/di;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/di;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dj;->a:Lcom/google/android/youtube/app/ui/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dj;->a:Lcom/google/android/youtube/app/ui/di;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->b(Lcom/google/android/youtube/app/ui/dh;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dj;->a:Lcom/google/android/youtube/app/ui/di;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 257
    return-void
.end method
