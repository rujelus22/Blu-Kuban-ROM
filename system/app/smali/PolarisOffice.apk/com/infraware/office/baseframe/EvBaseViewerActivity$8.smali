.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 2472
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2469
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2458
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2460
    .local v0, strOrgTxt:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindReplaceEnabled(Z)V

    .line 2461
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_20

    .line 2463
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindReplaceEnabled(Z)V

    .line 2466
    :cond_20
    return-void
.end method
