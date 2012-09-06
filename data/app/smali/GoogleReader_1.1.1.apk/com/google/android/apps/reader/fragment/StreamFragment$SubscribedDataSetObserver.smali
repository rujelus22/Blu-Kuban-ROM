.class final Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/StreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubscribedDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/StreamFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/fragment/StreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/fragment/StreamFragment;Lcom/google/android/apps/reader/fragment/StreamFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/StreamFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/StreamFragment;

    #calls: Lcom/google/android/apps/reader/fragment/StreamFragment;->updateActionBar()V
    invoke-static {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->access$300(Lcom/google/android/apps/reader/fragment/StreamFragment;)V

    .line 872
    return-void
.end method
