.class Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

.field final synthetic val$callState:Lcom/google/android/videochat/CallState;

.field final synthetic val$remoteBareJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;Lcom/google/android/videochat/CallState;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$callState:Lcom/google/android/videochat/CallState;

    iput-object p3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$remoteBareJid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2087
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$800(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2088
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$800(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2089
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$802(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2092
    :cond_23
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$CallState;

    invoke-direct {v0}, Lcom/google/android/talk/RosterListAdapter$CallState;-><init>()V

    .line 2093
    .local v0, rosterCallState:Lcom/google/android/talk/RosterListAdapter$CallState;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$callState:Lcom/google/android/videochat/CallState;

    iget v1, v1, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    sparse-switch v1, :sswitch_data_4c

    .line 2105
    :goto_2f
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$callState:Lcom/google/android/videochat/CallState;

    iget-boolean v1, v1, Lcom/google/android/videochat/CallState;->video:Z

    iput-boolean v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    .line 2106
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 2107
    return-void

    .line 2098
    :sswitch_3f
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    .line 2099
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$remoteBareJid:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    goto :goto_2f

    .line 2102
    :sswitch_47
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;->val$remoteBareJid:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    goto :goto_2f

    .line 2093
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3f
        0xc -> :sswitch_47
    .end sparse-switch
.end method
