.class Lcom/android/email/activity/MessageViewFragment$11;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onDeleteSmsPopup()V
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
    .line 1201
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$11;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$11;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #calls: Lcom/android/email/activity/MessageViewFragment;->onDelete()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$400(Lcom/android/email/activity/MessageViewFragment;)V

    .line 1204
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1206
    return-void
.end method
