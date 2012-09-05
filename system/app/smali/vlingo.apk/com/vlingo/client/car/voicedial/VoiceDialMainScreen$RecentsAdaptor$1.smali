.class Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;
.super Ljava/lang/Object;
.source "VoiceDialMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

.field final synthetic val$contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->val$contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    #getter for: Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->listener:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->access$600(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;)Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->val$contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->val$contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    invoke-virtual {v3, v5}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$RecentsAdaptor$1;->val$contact:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    invoke-virtual {v4, v5}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;->onDialContactImmediately(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    return-void
.end method
