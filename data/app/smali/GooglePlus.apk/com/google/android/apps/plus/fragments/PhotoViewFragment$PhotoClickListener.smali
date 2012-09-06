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
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    .line 575
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 576
    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 5
    .parameter "span"

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    return-void
.end method
