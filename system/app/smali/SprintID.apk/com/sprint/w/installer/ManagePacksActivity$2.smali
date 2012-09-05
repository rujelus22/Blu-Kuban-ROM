.class Lcom/sprint/w/installer/ManagePacksActivity$2;
.super Ljava/lang/Object;
.source "ManagePacksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/ManagePacksActivity;->updateListView(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;

.field final synthetic val$list:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/util/Vector;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iput-object p2, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->val$list:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->val$list:Ljava/util/Vector;

    iput-object v1, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListItems:Ljava/util/Vector;

    .line 136
    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    const v2, 0x7f0c0033

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/sprint/w/installer/ManagePacksActivity;->mListView:Landroid/widget/ListView;

    .line 137
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    new-instance v1, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;

    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Lcom/sprint/w/installer/ManagePacksActivity$1;)V

    iput-object v1, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mAdapter:Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;

    .line 138
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v1, v1, Lcom/sprint/w/installer/ManagePacksActivity;->mAdapter:Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v1, v1, Lcom/sprint/w/installer/ManagePacksActivity;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 141
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$2;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 142
    return-void
.end method
