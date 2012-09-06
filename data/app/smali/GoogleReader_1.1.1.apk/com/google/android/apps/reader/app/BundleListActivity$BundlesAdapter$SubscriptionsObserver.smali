.class Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;
.super Landroid/database/DataSetObserver;
.source "BundleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Lcom/google/android/apps/reader/app/BundleListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;-><init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->notifyDataSetChanged()V

    .line 307
    return-void
.end method
