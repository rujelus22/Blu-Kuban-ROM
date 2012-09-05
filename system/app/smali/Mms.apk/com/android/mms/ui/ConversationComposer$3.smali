.class Lcom/android/mms/ui/ConversationComposer$3;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .registers 2
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .registers 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->cmasRequestsClosing()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$600(Lcom/android/mms/ui/ConversationComposer;)V

    .line 1074
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1076
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->getCmasMessageStatus()I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$800(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/CMASViewer;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    .line 1077
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 1081
    :cond_28
    return-void
.end method
