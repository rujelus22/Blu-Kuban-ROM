.class Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;
.super Lcom/google/android/apps/plus/views/ProfileAboutView$Item;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalEditorialReviewItem"
.end annotation


# instance fields
.field final editorialText:Ljava/lang/String;

.field final priceLabel:Ljava/lang/String;

.field final priceValue:Ljava/lang/String;

.field final reviewCount:I

.field final scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;


# direct methods
.method public constructor <init>(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "scores"
    .parameter "editorialText"
    .parameter "priceLabel"
    .parameter "priceValue"
    .parameter "reviewCount"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$Item;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    .line 262
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    .line 263
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->editorialText:Ljava/lang/String;

    .line 264
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceLabel:Ljava/lang/String;

    .line 265
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    .line 266
    iput p5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->reviewCount:I

    .line 267
    return-void
.end method
