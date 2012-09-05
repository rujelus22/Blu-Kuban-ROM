.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 421
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 418
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$5(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, bookClipTxt:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$6(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2c

    .line 410
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$6(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 413
    :cond_2c
    return-void
.end method
