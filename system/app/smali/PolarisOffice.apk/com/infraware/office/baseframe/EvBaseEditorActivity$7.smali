.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3228
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    .line 3229
    .local v0, menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    if-nez v1, :cond_15

    .line 3293
    :cond_14
    :goto_14
    return-void

    .line 3232
    :cond_15
    iget v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    packed-switch v1, :pswitch_data_9e

    :pswitch_1a
    goto :goto_14

    .line 3235
    :pswitch_1b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSlideAddLayoutActivity()V

    goto :goto_14

    .line 3238
    :pswitch_21
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v2, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    goto :goto_14

    .line 3241
    :pswitch_29
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onInsertImageActivity(Z)V

    goto :goto_14

    .line 3244
    :pswitch_2f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCameraActivity()V

    goto :goto_14

    .line 3247
    :pswitch_35
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onSMemoActivity()V

    goto :goto_14

    .line 3250
    :pswitch_3b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onInsertFreeDraw()V
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    goto :goto_14

    .line 3253
    :pswitch_41
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertShapeActivity()V

    goto :goto_14

    .line 3256
    :pswitch_47
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IInsertTextBox()V

    .line 3257
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1, v3}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    goto :goto_14

    .line 3260
    :pswitch_56
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertTableActivity()V

    goto :goto_14

    .line 3263
    :pswitch_5c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontActivity()V

    goto :goto_14

    .line 3266
    :pswitch_62
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnParagraphActivity(Ljava/lang/Boolean;)V

    goto :goto_14

    .line 3269
    :pswitch_6c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnBulletNumberingActivity()V

    goto :goto_14

    .line 3272
    :pswitch_72
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnShapeActivity()V

    goto :goto_14

    .line 3275
    :pswitch_78
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertCells()V

    goto :goto_14

    .line 3278
    :pswitch_7e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnDeleteCells()V

    goto :goto_14

    .line 3281
    :pswitch_84
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSelectCells()V

    goto :goto_14

    .line 3284
    :pswitch_8a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnMergeCells()V

    goto :goto_14

    .line 3287
    :pswitch_90
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSplitCells()V

    goto/16 :goto_14

    .line 3290
    :pswitch_97
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFillBordersActivity()V

    goto/16 :goto_14

    .line 3232
    :pswitch_data_9e
    .packed-switch 0x32
        :pswitch_1b
        :pswitch_21
        :pswitch_29
        :pswitch_2f
        :pswitch_41
        :pswitch_47
        :pswitch_56
        :pswitch_35
        :pswitch_3b
        :pswitch_1a
        :pswitch_5c
        :pswitch_62
        :pswitch_6c
        :pswitch_72
        :pswitch_78
        :pswitch_7e
        :pswitch_84
        :pswitch_8a
        :pswitch_90
        :pswitch_97
    .end packed-switch
.end method
