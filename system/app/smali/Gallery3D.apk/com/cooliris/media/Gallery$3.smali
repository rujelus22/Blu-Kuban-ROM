.class Lcom/cooliris/media/Gallery$3;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const v11, 0x7f060098

    const v8, 0x7f06007f

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 256
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f

    .line 422
    :cond_1e
    :goto_1e
    return-void

    .line 259
    :cond_1f
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_398

    :pswitch_24
    goto :goto_1e

    .line 261
    :pswitch_25
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 262
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 266
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 267
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    const-string v6, ""

    iget-object v7, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v7}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 269
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1e

    .line 274
    :pswitch_69
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_7f

    .line 275
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 276
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 279
    :cond_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 280
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    const-string v6, ""

    iget-object v7, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v7}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 282
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 288
    :pswitch_ae
    invoke-static {v10}, Lcom/cooliris/media/Gallery;->access$602(Z)Z

    .line 289
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_c7

    .line 290
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 291
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 294
    :cond_c7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 295
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    const-string v6, ""

    iget-object v7, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v7}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 297
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 302
    :pswitch_f9
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 306
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->hidePathBar()V

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v1, extras:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v4}, Lcom/cooliris/media/Gallery;->getWidgetSize()[I

    move-result-object v3

    .line 310
    .local v3, widgetSize:[I
    const-string v4, "widgetspanx"

    aget v5, v3, v9

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v4, "widgetspany"

    aget v5, v3, v10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v2, i:Landroid/content/Intent;
    const-string v4, "inline-data"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 315
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v4, v9, v2}, Lcom/cooliris/media/Gallery;->setResult(ILandroid/content/Intent;)V

    .line 316
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v4}, Lcom/cooliris/media/Gallery;->finish()V

    goto/16 :goto_1e

    .line 325
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #widgetSize:[I
    :pswitch_141
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_157

    .line 326
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 330
    :cond_157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 331
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$702(I)I

    .line 332
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$802(Z)Z

    .line 333
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 336
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v4

    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$902(I)I

    .line 337
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$900()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 338
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$700()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 339
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 341
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 346
    :pswitch_1d6
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1ec

    .line 347
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 348
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 351
    :cond_1ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 352
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$702(I)I

    .line 353
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$802(Z)Z

    .line 354
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 355
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 357
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v4

    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$902(I)I

    .line 358
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$900()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 359
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$700()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 360
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 361
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 362
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 367
    :pswitch_26b
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_281

    .line 368
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 369
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    :cond_281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$402(J)J

    .line 373
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$702(I)I

    .line 374
    invoke-static {v9}, Lcom/cooliris/media/Gallery;->access$802(Z)Z

    .line 375
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 376
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 378
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v4

    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$902(I)I

    .line 379
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$900()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 380
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$700()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 381
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 382
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v6}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v7}, Lcom/cooliris/media/Gallery;->access$1000(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 384
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 385
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 390
    :pswitch_320
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 391
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$700()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_1e

    .line 398
    :pswitch_337
    const/4 v4, 0x0

    :try_start_338
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$602(Z)Z

    .line 399
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$1102(J)J

    .line 401
    invoke-static {}, Lcom/cooliris/media/Gallery;->access$1100()J

    move-result-wide v4

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$400()J
    :try_end_351
    .catch Ljava/lang/IllegalArgumentException; {:try_start_338 .. :try_end_351} :catch_381

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_368

    .line 403
    const-wide/16 v4, 0x3e8

    :try_start_35b
    invoke-static {}, Lcom/cooliris/media/Gallery;->access$1100()J

    move-result-wide v6

    invoke-static {}, Lcom/cooliris/media/Gallery;->access$400()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_368
    .catch Ljava/lang/InterruptedException; {:try_start_35b .. :try_end_368} :catch_38e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35b .. :try_end_368} :catch_381

    .line 408
    :cond_368
    :goto_368
    :try_start_368
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 409
    iget-object v4, p0, Lcom/cooliris/media/Gallery$3;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v5, 0x0

    #setter for: Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/cooliris/media/Gallery;->access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 410
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$802(Z)Z

    .line 411
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/cooliris/media/Gallery;->access$902(I)I
    :try_end_37f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_368 .. :try_end_37f} :catch_381

    goto/16 :goto_1e

    .line 413
    :catch_381
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Gallery"

    const-string v5, "ProgressDialog unexpectly stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1e

    .line 404
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_38e
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_38f
    const-string v4, "Gallery"

    const-string v5, "Thead sleep exception."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_396
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38f .. :try_end_396} :catch_381

    goto :goto_368

    .line 259
    nop

    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_25
        :pswitch_69
        :pswitch_ae
        :pswitch_f9
        :pswitch_141
        :pswitch_1d6
        :pswitch_26b
        :pswitch_24
        :pswitch_320
        :pswitch_24
        :pswitch_337
    .end packed-switch
.end method
