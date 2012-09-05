.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateMsgPopup(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nPopupType:I
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$13(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    .line 2773
    :goto_9
    return-void

    .line 2757
    :sswitch_a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSave()V

    goto :goto_9

    .line 2761
    :sswitch_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-boolean v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    if-eqz v0, :cond_26

    .line 2762
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAsActivity()V

    goto :goto_9

    .line 2764
    :cond_26
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSave()V

    goto :goto_9

    .line 2767
    :sswitch_2c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSaveAs:Z
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$14(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2768
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAsActivity()V

    goto :goto_9

    .line 2770
    :cond_3a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->SaveDocument(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$15(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    goto :goto_9

    .line 2744
    :sswitch_data_44
    .sparse-switch
        0x21 -> :sswitch_a
        0x22 -> :sswitch_10
        0x2a -> :sswitch_2c
    .end sparse-switch
.end method
