.class Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;
.super Lcom/google/android/apps/plus/views/ProfileAboutView$Item;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDetailsItem"
.end annotation


# instance fields
.field final knownForTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final openingHoursFull:Ljava/lang/String;

.field final openingHoursSummary:Ljava/lang/String;

.field final phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "phone"
    .parameter "openingHoursSummary"
    .parameter "openingHoursFull"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$Item;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    .line 278
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->phone:Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->knownForTerms:Ljava/util/List;

    .line 280
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->openingHoursSummary:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->openingHoursFull:Ljava/lang/String;

    .line 282
    return-void
.end method
