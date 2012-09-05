.class Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;
.super Ljava/lang/Object;
.source "ContactSelectionList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/ContactSelectionList;->initialize(Lcom/vlingo/client/core/contacts/SortedContactList;Ljava/lang/String;Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/ContactSelectionList;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;->this$0:Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;->this$0:Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->access$300(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;->this$0:Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;->this$0:Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->access$200(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;->onContactSelected(Lcom/vlingo/client/car/voicedial/ContactSelectionList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)V

    .line 103
    return-void
.end method
