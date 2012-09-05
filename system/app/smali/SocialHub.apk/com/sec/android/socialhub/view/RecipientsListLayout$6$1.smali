.class Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/view/RecipientsListLayout$6;

.field final synthetic val$button:Lcom/sec/android/socialhub/view/RecipientButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientsListLayout$6;Lcom/sec/android/socialhub/view/RecipientButton;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->this$1:Lcom/sec/android/socialhub/view/RecipientsListLayout$6;

    iput-object p2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->val$button:Lcom/sec/android/socialhub/view/RecipientButton;

    iput p3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "arg0"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->val$button:Lcom/sec/android/socialhub/view/RecipientButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->this$1:Lcom/sec/android/socialhub/view/RecipientsListLayout$6;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$000(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/view/RecipientButton;->delete(Landroid/os/Handler;I)V

    .line 286
    const/4 v0, 0x0

    return v0
.end method
