.class Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;
.super Ljava/lang/Object;
.source "VoiceDialMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

.field final synthetic val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;Lcom/vlingo/client/core/contacts/VlingoContact;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 234
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 235
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #getter for: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$600(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;->onDialContactImmediately(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    :goto_33
    return-void

    .line 238
    :cond_34
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->val$contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {v1}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v2, v2, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {v2}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;-><init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vlingo/client/car/util/ContactDetailPopupAdapter;->showDetailSelectionDialog(Lcom/vlingo/client/core/contacts/VlingoContact;Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/car/util/ContactDetailPopupAdapter$ContactDetailPopupAdapterListener;)V

    goto :goto_33
.end method
