.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;
.super Ljava/lang/Object;
.source "DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailsItem"
.end annotation


# instance fields
.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->mTitle:Ljava/lang/String;

    .line 533
    iput-object p3, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->mSummary:Ljava/lang/String;

    .line 534
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
