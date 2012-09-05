.class Lcom/android/calendar/ImportVCalListActivity$2$1;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/ImportVCalListActivity$2;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v0, v0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    new-instance v1, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v2, v2, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v3, v3, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const v4, 0x7f030020

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v5, v5, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;-><init>(Lcom/android/calendar/ImportVCalListActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$402(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$EventAdapter;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    .line 220
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v0, v0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/ImportVCalListActivity;->access$600(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v1, v1, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    invoke-static {v1}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$2$1;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v0, v0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1300(Lcom/android/calendar/ImportVCalListActivity;I)V

    .line 222
    return-void
.end method
