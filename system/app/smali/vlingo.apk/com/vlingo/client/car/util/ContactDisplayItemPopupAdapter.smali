.class public Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDisplayItemPopupAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final items:[Lcom/vlingo/client/core/contacts/DisplayItem;

.field private final listener:Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;


# direct methods
.method public constructor <init>([Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;Landroid/content/Context;)V
    .registers 4
    .parameter "items"
    .parameter "listener"
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->items:[Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 31
    iput-object p3, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->listener:Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;

    .line 33
    return-void
.end method

.method public static showDetailSelectionDialog([Lcom/vlingo/client/core/contacts/DisplayItem;Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;)V
    .registers 8
    .parameter "items"
    .parameter "context"
    .parameter "actionName"
    .parameter "listener"

    .prologue
    .line 59
    new-instance v0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;

    invoke-direct {v0, p0, p3, p1}, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;-><init>([Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;Landroid/content/Context;)V

    .line 60
    .local v0, adaptor:Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget-object v3, v3, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$1;

    invoke-direct {v3}, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 66
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->items:[Lcom/vlingo/client/core/contacts/DisplayItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->items:[Lcom/vlingo/client/core/contacts/DisplayItem;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/ContactDetail;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;

    move-result-object v0

    .line 41
    .local v0, view:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->getPhoneTypeView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0e0006

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 42
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    iget-object v0, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->listener:Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;

    iget-object v1, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->items:[Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v2, p0, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->items:[Lcom/vlingo/client/core/contacts/DisplayItem;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;->onContactDisplayItemClicked([Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 56
    return-void
.end method
