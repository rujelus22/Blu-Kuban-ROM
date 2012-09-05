.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeMenuClickListener"
.end annotation


# instance fields
.field private final mBuyUrl:Ljava/lang/String;

.field private final mCanonicalUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "volumeId"
    .parameter "title"
    .parameter "canonicalUrl"
    .parameter "buyUrl"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    .line 1072
    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mTitle:Ljava/lang/String;

    .line 1073
    iput-object p4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mCanonicalUrl:Ljava/lang/String;

    .line 1074
    iput-object p5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mBuyUrl:Ljava/lang/String;

    .line 1075
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1079
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 1097
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 1081
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mBuyUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1084
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mCanonicalUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startAboutVolume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1087
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 1088
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setPinned(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;Z)V

    goto :goto_9

    .line 1091
    :pswitch_33
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showRemoveFromLibraryDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1094
    :pswitch_41
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mVolumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showRemoveContentDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1079
    nop

    :pswitch_data_50
    .packed-switch 0x7f0f007b
        :pswitch_18
        :pswitch_26
        :pswitch_33
        :pswitch_41
        :pswitch_a
    .end packed-switch
.end method
