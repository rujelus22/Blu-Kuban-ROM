.class Lcom/android/mms/ui/ConversationComposer$6;
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
    .line 1259
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1261
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onCMASViewStateChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1269
    :goto_10
    return-void

    .line 1265
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$1000(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1267
    :cond_25
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1268
    :cond_2e
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->access$900(Lcom/android/mms/ui/ConversationComposer;Z)V

    goto :goto_10
.end method
