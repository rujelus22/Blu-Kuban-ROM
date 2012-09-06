.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->presenceChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_7

    .line 428
    :goto_6
    return-void

    .line 427
    :cond_7
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    goto :goto_6
.end method
