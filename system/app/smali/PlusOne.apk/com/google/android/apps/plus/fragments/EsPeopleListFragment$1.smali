.class Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;
.super Landroid/database/DataSetObserver;
.source "EsPeopleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 62
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->updateView(Landroid/view/View;)V

    .line 63
    return-void
.end method
