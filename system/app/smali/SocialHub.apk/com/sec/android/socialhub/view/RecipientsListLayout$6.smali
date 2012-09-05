.class Lcom/sec/android/socialhub/view/RecipientsListLayout$6;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;
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
    .line 265
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, delete:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$100(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 273
    .local v2, index:I
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$100(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/RecipientButton;

    .line 274
    .local v0, button:Lcom/sec/android/socialhub/view/RecipientButton;
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$300(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, mNameString:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 277
    const v4, 0x7f08000a

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_37

    .line 281
    new-instance v4, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/socialhub/view/RecipientsListLayout$6$1;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout$6;Lcom/sec/android/socialhub/view/RecipientButton;I)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 291
    :cond_37
    return-void
.end method
