.class final Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SubscriptionTagEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TagsDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;->this$0:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;-><init>(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;->this$0:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;

    #calls: Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->updateListView()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->access$100(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;)V

    .line 327
    return-void
.end method
