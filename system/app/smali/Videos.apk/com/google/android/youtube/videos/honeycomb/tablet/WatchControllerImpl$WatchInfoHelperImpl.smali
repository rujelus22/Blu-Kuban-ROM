.class Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;
.super Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;
.source "WatchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchInfoHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V
    .registers 13
    .parameter
    .parameter "activity"
    .parameter "watchView"
    .parameter "purchaseStore"
    .parameter "userAuthorizer"
    .parameter "plusOneClient"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8
    .parameter
    .parameter "labelStringId"
    .parameter "labelView"
    .parameter "creditsView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 142
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 143
    :cond_b
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_11
    return-void

    .line 146
    :cond_12
    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method protected showInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "titleText"
    .parameter "descriptionText"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method
