.class Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "NotSubscribedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribedDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->updateVisibility()V

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->updateAccounts()V

    .line 315
    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;->onChanged()V

    .line 320
    return-void
.end method
