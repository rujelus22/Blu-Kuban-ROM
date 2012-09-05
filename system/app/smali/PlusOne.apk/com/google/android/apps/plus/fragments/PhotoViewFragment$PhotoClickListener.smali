.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoClickListener"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    .line 515
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 516
    return-void
.end method


# virtual methods
.method public onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 3
    .parameter "activityId"
    .parameter "location"

    .prologue
    .line 530
    return-void
.end method

.method public onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V
    .registers 4
    .parameter "activityId"
    .parameter "media"
    .parameter "photoIndex"

    .prologue
    .line 526
    return-void
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 5
    .parameter "span"

    .prologue
    .line 534
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public onUserImageClick(JLjava/lang/String;)V
    .registers 11
    .parameter "authorUserId"
    .parameter "authorName"

    .prologue
    .line 520
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void
.end method
