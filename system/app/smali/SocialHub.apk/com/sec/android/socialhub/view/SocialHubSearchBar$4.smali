.class Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;
.super Ljava/lang/Object;
.source "SocialHubSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 208
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$200(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
    :goto_19
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->show()V

    .line 213
    return-void

    .line 210
    .end local v0           #dialog:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
    :cond_1d
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$300(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0       #dialog:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
    goto :goto_19
.end method
