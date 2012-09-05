.class Lcom/infraware/polarisoffice/word/BookmarkActivity$4;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 361
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 358
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$11(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, bookmarkTxt:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$12(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2c

    .line 352
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$12(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 355
    :cond_2c
    return-void
.end method
