.class Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "BundleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/BundleActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/BundleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;->this$0:Lcom/google/android/apps/reader/app/BundleActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/BundleActivity;Lcom/google/android/apps/reader/app/BundleActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;-><init>(Lcom/google/android/apps/reader/app/BundleActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;->this$0:Lcom/google/android/apps/reader/app/BundleActivity;

    #calls: Lcom/google/android/apps/reader/app/BundleActivity;->updateViews()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/BundleActivity;->access$200(Lcom/google/android/apps/reader/app/BundleActivity;)V

    .line 298
    return-void
.end method
