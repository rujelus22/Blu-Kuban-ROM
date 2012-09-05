.class public Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;
.super Landroid/widget/BaseAdapter;
.source "SuperDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialListAdaptor"
.end annotation


# instance fields
.field private final groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V
    .registers 3
    .parameter
    .parameter "groupedItem"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 741
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 759
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 748
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/ContactDetail;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;

    move-result-object v0

    .line 750
    .local v0, view:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-virtual {v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0006

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 751
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getContactId()I

    move-result v2

    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$DialListAdaptor;->groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->dialContact(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$1200(Lcom/vlingo/client/superdialer/SuperDialerActivity;ILjava/lang/String;)V

    .line 764
    return-void
.end method
