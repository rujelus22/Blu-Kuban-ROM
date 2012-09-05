.class Lcom/android/calendar/ComposeHeaderView$10;
.super Landroid/os/Handler;
.source "ComposeHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ComposeHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$1600(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/EditEvent;

    move-result-object v0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->access$1500()Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I
    invoke-static {v2}, Lcom/android/calendar/ComposeHeaderView;->access$1200(Lcom/android/calendar/ComposeHeaderView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->access$1500()Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$1200(Lcom/android/calendar/ComposeHeaderView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #calls: Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$600(Lcom/android/calendar/ComposeHeaderView;)V

    .line 2630
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$10;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    .line 2642
    return-void
.end method
