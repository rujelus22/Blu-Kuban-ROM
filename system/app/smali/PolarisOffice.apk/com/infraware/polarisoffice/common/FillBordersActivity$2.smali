.class Lcom/infraware/polarisoffice/common/FillBordersActivity$2;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_226

    .line 309
    :goto_7
    :pswitch_7
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->checkButtonState()V

    .line 310
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->invalidate()V

    .line 311
    :goto_15
    return-void

    .line 238
    :pswitch_16
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 241
    :pswitch_21
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 244
    :pswitch_2c
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 247
    :pswitch_37
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 250
    :pswitch_42
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 253
    :pswitch_4d
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 256
    :pswitch_58
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 259
    :pswitch_63
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_7

    .line 262
    :pswitch_6e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBorderMask()J

    move-result-wide v1

    .line 265
    .local v1, mask:J
    const-wide/16 v3, 0xe00

    .line 267
    .local v3, maskExtra:J
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    const v7, 0x7f0c0087

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v5

    .line 268
    .local v5, selectColor:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColor:I
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$4(Lcom/infraware/polarisoffice/common/FillBordersActivity;)I

    move-result v6

    if-ne v6, v5, :cond_211

    .line 269
    const-string v6, "id_border_fillcolor_modified"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    :goto_9c
    const-wide/16 v6, 0x1

    and-long/2addr v6, v1

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_b4

    .line 277
    const-string v6, "id_border_lcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getLBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    :cond_b4
    const-wide/16 v6, 0x2

    and-long/2addr v6, v1

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_cc

    .line 280
    const-string v6, "id_border_tcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getTBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    :cond_cc
    const-wide/16 v6, 0x4

    and-long/2addr v6, v1

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_e4

    .line 283
    const-string v6, "id_border_rcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getRBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    :cond_e4
    const-wide/16 v6, 0x8

    and-long/2addr v6, v1

    const-wide/16 v8, 0x8

    cmp-long v6, v6, v8

    if-nez v6, :cond_fc

    .line 286
    const-string v6, "id_border_bcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    :cond_fc
    const-wide/16 v6, 0x10

    and-long/2addr v6, v1

    const-wide/16 v8, 0x10

    cmp-long v6, v6, v8

    if-nez v6, :cond_114

    .line 289
    const-string v6, "id_border_vcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getVBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    :cond_114
    const-wide/16 v6, 0x20

    and-long/2addr v6, v1

    const-wide/16 v8, 0x20

    cmp-long v6, v6, v8

    if-nez v6, :cond_12c

    .line 292
    const-string v6, "id_border_hcolor"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getHBorderColor()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    :cond_12c
    const-string v6, "id_border_color_modified"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->isModified()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBorderMask()J

    move-result-wide v6

    or-long/2addr v3, v6

    .line 297
    const-string v6, "id_border_mask"

    invoke-virtual {v0, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    const-string v6, "id_border_style"

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBorderStyle()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v6, "FillBordersActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "send nMask "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nStyle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBorderStyle()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nLeftColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getLBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nTopColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getTBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nRightColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getRBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nBottomColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getBBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nHorizontalColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getHBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nVerticalColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getVBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nCellColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->setResult(ILandroid/content/Intent;)V

    .line 302
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->finish()V

    goto/16 :goto_15

    .line 272
    :cond_211
    const-string v6, "id_border_fillcolor_modified"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string v6, "id_border_fillcolor"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9c

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mask:J
    .end local v3           #maskExtra:J
    .end local v5           #selectColor:I
    :pswitch_21e
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->finish()V

    goto/16 :goto_15

    .line 236
    nop

    :pswitch_data_226
    .packed-switch 0x7f0c0087
        :pswitch_16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_21
        :pswitch_7
        :pswitch_2c
        :pswitch_58
        :pswitch_42
        :pswitch_7
        :pswitch_7
        :pswitch_4d
        :pswitch_37
        :pswitch_63
        :pswitch_6e
        :pswitch_21e
    .end packed-switch
.end method
