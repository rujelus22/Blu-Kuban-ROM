.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v5, 0x30d

    const/16 v2, 0x30c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3299
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    .line 3300
    .local v0, menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    if-nez v1, :cond_19

    .line 3369
    :cond_18
    :goto_18
    return-void

    .line 3303
    :cond_19
    iget v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    packed-switch v1, :pswitch_data_b0

    :pswitch_1e
    goto :goto_18

    .line 3306
    :pswitch_1f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertDeleteCell(I)V

    goto :goto_18

    .line 3309
    :pswitch_25
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0x30a

    invoke-virtual {v1, v2, v4, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3312
    :pswitch_2d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0x30b

    invoke-virtual {v1, v2, v4, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3315
    :pswitch_35
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0x305

    invoke-virtual {v1, v2, v3, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3318
    :pswitch_3d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertChart()V

    goto :goto_18

    .line 3321
    :pswitch_43
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertFunction()V

    goto :goto_18

    .line 3324
    :pswitch_49
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontActivity()V

    goto :goto_18

    .line 3327
    :pswitch_4f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFormatAlignment()V

    goto :goto_18

    .line 3330
    :pswitch_55
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnShowDialog(I)V

    goto :goto_18

    .line 3333
    :pswitch_5d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFillBordersActivity()V

    goto :goto_18

    .line 3336
    :pswitch_63
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFormatHeight()V

    goto :goto_18

    .line 3339
    :pswitch_69
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v3, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetRowColSize(III)V

    goto :goto_18

    .line 3342
    :pswitch_71
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2, v3, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3345
    :pswitch_77
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3348
    :pswitch_7d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFormatWidth()V

    goto :goto_18

    .line 3351
    :pswitch_83
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v4, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetRowColSize(III)V

    goto :goto_18

    .line 3354
    :pswitch_8b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v5, v4, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3357
    :pswitch_91
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v5, v4, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_18

    .line 3360
    :pswitch_97
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnShowDialog(I)V

    goto/16 :goto_18

    .line 3363
    :pswitch_a0
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnInsertDeleteCell(I)V

    goto/16 :goto_18

    .line 3366
    :pswitch_a7
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/16 v2, 0x317

    invoke-virtual {v1, v2, v3, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnEVSheetFuction(III)V

    goto/16 :goto_18

    .line 3303
    :pswitch_data_b0
    .packed-switch 0x46
        :pswitch_1f
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
        :pswitch_43
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_5d
        :pswitch_63
        :pswitch_69
        :pswitch_71
        :pswitch_77
        :pswitch_7d
        :pswitch_83
        :pswitch_8b
        :pswitch_91
        :pswitch_97
        :pswitch_a0
        :pswitch_a7
    .end packed-switch
.end method
