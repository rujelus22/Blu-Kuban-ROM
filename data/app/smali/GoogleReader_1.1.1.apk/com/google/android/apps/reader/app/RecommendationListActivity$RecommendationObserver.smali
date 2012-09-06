.class final Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;
.super Landroid/database/DataSetObserver;
.source "RecommendationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/RecommendationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecommendationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/RecommendationListActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/RecommendationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;->this$0:Lcom/google/android/apps/reader/app/RecommendationListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/RecommendationListActivity;Lcom/google/android/apps/reader/app/RecommendationListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;-><init>(Lcom/google/android/apps/reader/app/RecommendationListActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;->this$0:Lcom/google/android/apps/reader/app/RecommendationListActivity;

    #calls: Lcom/google/android/apps/reader/app/RecommendationListActivity;->syncFragments()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->access$100(Lcom/google/android/apps/reader/app/RecommendationListActivity;)V

    .line 222
    return-void
.end method
