.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 3153
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    .line 3154
    .local v0, menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    if-eqz v0, :cond_13

    iget-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    if-nez v1, :cond_14

    .line 3217
    :cond_13
    :goto_13
    return-void

    .line 3157
    :cond_14
    iget v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    packed-switch v1, :pswitch_data_90

    :pswitch_19
    goto :goto_13

    .line 3160
    :pswitch_1a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onInsertImageActivity(Z)V

    goto :goto_13

    .line 3163
    :pswitch_20
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCameraActivity()V

    goto :goto_13

    .line 3166
    :pswitch_26
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onSMemoActivity()V

    goto :goto_13

    .line 3169
    :pswitch_2c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onInsertFreeDraw()V
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    goto :goto_13

    .line 3172
    :pswitch_32
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertShapeActivity()V

    goto :goto_13

    .line 3175
    :pswitch_38
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertHyperlink()V

    goto :goto_13

    .line 3178
    :pswitch_3e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertBookmarkActivity()V

    goto :goto_13

    .line 3181
    :pswitch_44
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertTableActivity()V

    goto :goto_13

    .line 3184
    :pswitch_4a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontActivity()V

    goto :goto_13

    .line 3187
    :pswitch_50
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnParagraphActivity(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 3190
    :pswitch_5a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnBulletNumberingActivity()V

    goto :goto_13

    .line 3193
    :pswitch_60
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnColumnsActivity()V

    goto :goto_13

    .line 3196
    :pswitch_66
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnShapeActivity()V

    goto :goto_13

    .line 3199
    :pswitch_6c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertCells()V

    goto :goto_13

    .line 3202
    :pswitch_72
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnDeleteCells()V

    goto :goto_13

    .line 3205
    :pswitch_78
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSelectCells()V

    goto :goto_13

    .line 3208
    :pswitch_7e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnMergeCells()V

    goto :goto_13

    .line 3211
    :pswitch_84
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSplitCells()V

    goto :goto_13

    .line 3214
    :pswitch_8a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFillBordersActivity()V

    goto :goto_13

    .line 3157
    :pswitch_data_90
    .packed-switch 0x14
        :pswitch_1a
        :pswitch_20
        :pswitch_32
        :pswitch_38
        :pswitch_3e
        :pswitch_44
        :pswitch_26
        :pswitch_2c
        :pswitch_19
        :pswitch_19
        :pswitch_4a
        :pswitch_50
        :pswitch_5a
        :pswitch_60
        :pswitch_66
        :pswitch_6c
        :pswitch_72
        :pswitch_78
        :pswitch_7e
        :pswitch_84
        :pswitch_8a
    .end packed-switch
.end method
