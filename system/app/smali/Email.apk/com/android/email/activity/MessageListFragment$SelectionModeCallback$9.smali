.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 4324
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite()V

    .line 4328
    return-void
.end method