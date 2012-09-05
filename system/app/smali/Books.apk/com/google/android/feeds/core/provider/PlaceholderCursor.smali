.class Lcom/google/android/feeds/core/provider/PlaceholderCursor;
.super Landroid/database/MatrixCursor;
.source "PlaceholderCursor.java"


# instance fields
.field private final mStatus:Lcom/google/android/feeds/core/provider/FeedStatus;


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, extras:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/feeds/core/provider/PlaceholderCursor;->mStatus:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v1, v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method
