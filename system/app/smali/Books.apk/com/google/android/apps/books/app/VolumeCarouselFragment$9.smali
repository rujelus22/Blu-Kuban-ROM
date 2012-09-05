.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager$Ensurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getCoverLoadEnsurer(Landroid/net/Uri;)Lcom/google/android/apps/books/common/ImageManager$Ensurer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

.field final synthetic val$coverUri:Landroid/net/Uri;

.field final synthetic val$fetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/sync/FetchDispatcher;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->val$fetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->val$coverUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensure()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->val$fetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->val$coverUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;

    move-result-object v2

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 1025
    return-void
.end method
