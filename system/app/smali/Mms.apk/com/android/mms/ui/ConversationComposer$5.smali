.class Lcom/android/mms/ui/ConversationComposer$5;
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
    .line 1228
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1230
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onComposerStateChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$500(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v0

    .line 1234
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    if-nez v1, :cond_18

    .line 1255
    :goto_17
    return-void

    .line 1237
    :cond_18
    packed-switch v0, :pswitch_data_7a

    goto :goto_17

    .line 1239
    :pswitch_1c
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1240
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->access$900(Lcom/android/mms/ui/ConversationComposer;Z)V

    goto :goto_17

    .line 1243
    :pswitch_2b
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$1000(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1245
    :cond_3f
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1247
    :cond_48
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$1000(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-ne v1, v3, :cond_73

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_73

    .line 1249
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1250
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$1100(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->access$1102(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 1252
    :cond_73
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->access$900(Lcom/android/mms/ui/ConversationComposer;Z)V

    goto :goto_17

    .line 1237
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2b
    .end packed-switch
.end method
