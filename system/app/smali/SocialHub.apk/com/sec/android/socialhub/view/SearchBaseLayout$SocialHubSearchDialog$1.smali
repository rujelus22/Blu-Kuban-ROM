.class Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"

# interfaces
.implements Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->onHandleCommand(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(J)V
    .registers 8
    .parameter "date"

    .prologue
    .line 411
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, p1, p2}, Ljava/sql/Date;-><init>(J)V

    iput-object v2, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->date:Ljava/util/Date;

    .line 412
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    #getter for: Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->access$000(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 413
    .local v0, format:Ljava/text/DateFormat;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 417
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v2, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    iget-object v4, v4, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget v4, v4, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 418
    return-void
.end method
