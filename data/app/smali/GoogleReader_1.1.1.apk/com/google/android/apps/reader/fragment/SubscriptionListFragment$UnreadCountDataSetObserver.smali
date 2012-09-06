.class Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SubscriptionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnreadCountDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    #getter for: Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;
    invoke-static {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->access$300(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    #getter for: Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->access$100(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    #getter for: Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;
    invoke-static {v2}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->access$200(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowSubscriptionsUnreadCounts()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->bindView(Landroid/view/View;Z)V

    .line 444
    return-void
.end method
