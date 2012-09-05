.class Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refreshFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 368
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 370
    :cond_11
    return-void
.end method
