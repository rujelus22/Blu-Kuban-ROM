.class Lcom/sec/android/socialhub/view/RecipientsListLayout$1;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;->addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$1;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 185
    const/16 v1, 0x43

    if-ne p2, v1, :cond_24

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_24

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/sec/android/socialhub/view/RecipientButton;

    .line 188
    .local v0, btn:Lcom/sec/android/socialhub/view/RecipientButton;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$1;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$000(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$1;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$100(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/view/RecipientButton;->delete(Landroid/os/Handler;I)V

    .line 189
    const/4 v1, 0x1

    .line 191
    .end local v0           #btn:Lcom/sec/android/socialhub/view/RecipientButton;
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method
