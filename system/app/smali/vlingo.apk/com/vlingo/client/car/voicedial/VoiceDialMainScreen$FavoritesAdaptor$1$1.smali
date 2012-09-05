.class Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;
.super Ljava/lang/Object;
.source "VoiceDialMainScreen.java"

# interfaces
.implements Lcom/vlingo/client/car/util/ContactDetailPopupAdapter$ContactDetailPopupAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;->this$2:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactDetailClicked(Lcom/vlingo/client/core/contacts/VlingoContact;I)V
    .registers 8
    .parameter "contact"
    .parameter "which"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;->this$2:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;

    iget-object v0, v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #getter for: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$600(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1$1;->this$2:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;

    iget-object v1, v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$FavoritesAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v3

    invoke-virtual {p1, p2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;->onDialContactImmediately(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    return-void
.end method
