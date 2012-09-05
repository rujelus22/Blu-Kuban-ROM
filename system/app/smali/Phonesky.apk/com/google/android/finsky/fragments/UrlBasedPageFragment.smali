.class public abstract Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "UrlBasedPageFragment.java"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->mUrl:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 4
    .parameter "toc"
    .parameter "url"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 18
    const-string v0, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
