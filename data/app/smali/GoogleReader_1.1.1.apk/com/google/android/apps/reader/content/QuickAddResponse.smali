.class Lcom/google/android/apps/reader/content/QuickAddResponse;
.super Ljava/lang/Object;
.source "QuickAddResponse.java"


# instance fields
.field public final moreResults:Z

.field public final numResults:I

.field public final query:Ljava/lang/String;

.field public final streamId:Ljava/lang/String;

.field public final webfeedConfirmation:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 6
    .parameter "query"
    .parameter "streamId"
    .parameter "numResults"
    .parameter "moreResults"
    .parameter "webfeedConfirmation"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/reader/content/QuickAddResponse;->query:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/reader/content/QuickAddResponse;->streamId:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/google/android/apps/reader/content/QuickAddResponse;->numResults:I

    .line 40
    iput-boolean p4, p0, Lcom/google/android/apps/reader/content/QuickAddResponse;->moreResults:Z

    .line 41
    iput-boolean p5, p0, Lcom/google/android/apps/reader/content/QuickAddResponse;->webfeedConfirmation:Z

    .line 42
    return-void
.end method
