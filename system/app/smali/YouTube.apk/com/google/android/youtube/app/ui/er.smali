.class final Lcom/google/android/youtube/app/ui/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/eq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/eq;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/er;->a:Lcom/google/android/youtube/app/ui/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/er;->a:Lcom/google/android/youtube/app/ui/eq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->c(Lcom/google/android/youtube/app/ui/ep;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/er;->a:Lcom/google/android/youtube/app/ui/eq;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/eq;->a:Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 309
    return-void
.end method
