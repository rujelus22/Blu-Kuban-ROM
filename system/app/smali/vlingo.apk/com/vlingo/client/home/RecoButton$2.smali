.class Lcom/vlingo/client/home/RecoButton$2;
.super Landroid/os/Handler;
.source "RecoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/home/RecoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/RecoButton;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/RecoButton;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const v6, 0x7f0200fa

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 142
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    .local v0, showState:I
    packed-switch v0, :pswitch_data_14e

    .line 177
    :goto_b
    return-void

    .line 147
    :pswitch_c
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$200(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09041e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$300(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$500(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    sget-object v2, Lcom/vlingo/client/home/RecoButton$State;->Speak:Lcom/vlingo/client/home/RecoButton$State;

    #setter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1, v2}, Lcom/vlingo/client/home/RecoButton;->access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;

    goto :goto_b

    .line 154
    :pswitch_4f
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$200(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090410

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$300(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$500(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    sget-object v2, Lcom/vlingo/client/home/RecoButton$State;->SpeakAgain:Lcom/vlingo/client/home/RecoButton$State;

    #setter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1, v2}, Lcom/vlingo/client/home/RecoButton;->access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;

    goto/16 :goto_b

    .line 161
    :pswitch_93
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$200(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090420

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$300(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$500(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    sget-object v2, Lcom/vlingo/client/home/RecoButton$State;->Listening:Lcom/vlingo/client/home/RecoButton$State;

    #setter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1, v2}, Lcom/vlingo/client/home/RecoButton;->access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;

    goto/16 :goto_b

    .line 169
    :pswitch_f0
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$200(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09032e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09041f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$300(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    #getter for: Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/vlingo/client/home/RecoButton;->access$500(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v2}, Lcom/vlingo/client/home/RecoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton$2;->this$0:Lcom/vlingo/client/home/RecoButton;

    sget-object v2, Lcom/vlingo/client/home/RecoButton$State;->Thinking:Lcom/vlingo/client/home/RecoButton$State;

    #setter for: Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-static {v1, v2}, Lcom/vlingo/client/home/RecoButton;->access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;

    goto/16 :goto_b

    .line 145
    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_4f
        :pswitch_93
        :pswitch_f0
    .end packed-switch
.end method
