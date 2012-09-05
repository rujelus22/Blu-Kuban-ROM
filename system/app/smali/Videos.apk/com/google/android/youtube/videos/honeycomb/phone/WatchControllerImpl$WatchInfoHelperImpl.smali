.class Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;
.super Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;
.source "WatchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchInfoHelperImpl"
.end annotation


# instance fields
.field private final creditsColor:I

.field private final labelColor:I

.field private final resources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V
    .registers 13
    .parameter
    .parameter "activity"
    .parameter "watchView"
    .parameter "purchaseStore"
    .parameter "userAuthorizer"
    .parameter "plusOneClient"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->this$0:Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V

    .line 153
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->resources:Landroid/content/res/Resources;

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->labelColor:I

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->creditsColor:I

    .line 156
    return-void
.end method

.method private coloredString(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 5
    .parameter "s"
    .parameter "color"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_f
    return-void

    .line 164
    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->labelColor:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->creditsColor:I

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method protected showInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "titleText"
    .parameter "descriptionText"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->description:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->resources:Landroid/content/res/Resources;

    const v4, 0x7f0b00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->labelColor:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method
