.class Lcom/android/email/activity/MessageViewFragment$4;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$4;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$4;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #calls: Lcom/android/email/activity/MessageViewFragment;->onForward()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$300(Lcom/android/email/activity/MessageViewFragment;)V

    .line 817
    return-void
.end method
