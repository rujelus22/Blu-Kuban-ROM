.class Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;
.super Ljava/lang/Object;
.source "SMSMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

.field final synthetic val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;Lcom/vlingo/client/core/contacts/VlingoContact;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 206
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    #getter for: Lcom/vlingo/client/car/sms/SMSMainScreen;->listener:Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;
    invoke-static {v1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->access$600(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    iget-object v2, v2, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;->onReplyToContact(Lcom/vlingo/client/car/sms/SMSMainScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_29
    return-void

    .line 209
    :cond_2a
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v1}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, popupTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    iget-object v2, v2, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-virtual {v2}, Lcom/vlingo/client/car/sms/SMSMainScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1$1;-><init>(Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/vlingo/client/car/util/ContactDetailPopupAdapter;->showDetailSelectionDialog(Lcom/vlingo/client/core/contacts/VlingoContact;Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/car/util/ContactDetailPopupAdapter$ContactDetailPopupAdapterListener;)V

    goto :goto_29
.end method
