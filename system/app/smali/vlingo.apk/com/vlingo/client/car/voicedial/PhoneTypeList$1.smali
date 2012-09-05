.class Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;
.super Ljava/lang/Object;
.source "PhoneTypeList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

.field final synthetic val$item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

.field final synthetic val$listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->val$listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

    iput-object p3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->val$item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->val$listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->val$item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;->this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    #getter for: Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->access$100(Lcom/vlingo/client/car/voicedial/PhoneTypeList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->access$200(Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;->onPhoneTypeSelected(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/Integer;)V

    .line 91
    return-void
.end method
