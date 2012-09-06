.class Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;
.super Landroid/database/DataSetObserver;
.source "SubscriptionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/SubscriptionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SubscriptionListActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/SubscriptionListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;->this$0:Lcom/google/android/apps/reader/app/SubscriptionListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/SubscriptionListActivity;Lcom/google/android/apps/reader/app/SubscriptionListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;-><init>(Lcom/google/android/apps/reader/app/SubscriptionListActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;->this$0:Lcom/google/android/apps/reader/app/SubscriptionListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->syncFragments()V

    .line 226
    return-void
.end method
