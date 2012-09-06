.class final Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;
.super Landroid/database/DataSetObserver;
.source "FeedSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/FeedSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountSubscriptionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/FeedSearchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/FeedSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;->this$0:Lcom/google/android/apps/reader/app/FeedSearchActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/FeedSearchActivity;Lcom/google/android/apps/reader/app/FeedSearchActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;-><init>(Lcom/google/android/apps/reader/app/FeedSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;->this$0:Lcom/google/android/apps/reader/app/FeedSearchActivity;

    #getter for: Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;
    invoke-static {v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->access$100(Lcom/google/android/apps/reader/app/FeedSearchActivity;)Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;->this$0:Lcom/google/android/apps/reader/app/FeedSearchActivity;

    #getter for: Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;
    invoke-static {v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->access$100(Lcom/google/android/apps/reader/app/FeedSearchActivity;)Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->notifyDataSetChanged()V

    .line 257
    :cond_15
    return-void
.end method
