.class Lcom/infraware/common/register/UserRegister$1;
.super Landroid/os/Handler;
.source "UserRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister;->SetEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/UserRegister;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;
    .registers 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/16 v2, 0xbb8

    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b0

    .line 289
    :goto_a
    return-void

    .line 143
    :sswitch_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/common/register/UserRegister$1$1;

    invoke-direct {v1, p0}, Lcom/infraware/common/register/UserRegister$1$1;-><init>(Lcom/infraware/common/register/UserRegister$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a

    .line 164
    :sswitch_19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/common/register/UserRegister$1$2;

    invoke-direct {v1, p0}, Lcom/infraware/common/register/UserRegister$1$2;-><init>(Lcom/infraware/common/register/UserRegister$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a

    .line 221
    :sswitch_27
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const/4 v1, 0x0

    #calls: Lcom/infraware/common/register/UserRegister;->SetRegistryData(Z)V
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$5(Lcom/infraware/common/register/UserRegister;Z)V

    .line 222
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Lcom/infraware/common/register/UserRegister;->finish()V

    goto :goto_a

    .line 226
    :sswitch_33
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    #getter for: Lcom/infraware/common/register/UserRegister;->m_nFailValue:I
    invoke-static {v0}, Lcom/infraware/common/register/UserRegister;->access$6(Lcom/infraware/common/register/UserRegister;)I

    move-result v0

    packed-switch v0, :pswitch_data_ce

    .line 271
    :goto_3c
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/infraware/common/register/UserRegister;->showDialog(I)V

    goto :goto_a

    .line 228
    :pswitch_44
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f08006f

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 232
    :pswitch_4d
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f080070

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 236
    :pswitch_56
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f080071

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 240
    :pswitch_5f
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f080072

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 244
    :pswitch_68
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f080074

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 249
    :pswitch_71
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$3(Lcom/infraware/common/register/UserRegister;Z)V

    .line 250
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    iget-object v0, v0, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    .line 251
    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 263
    :pswitch_81
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f080076

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_3c

    .line 275
    :sswitch_8a
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f08006d

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    .line 276
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0, v2}, Lcom/infraware/common/register/UserRegister;->showDialog(I)V

    goto/16 :goto_a

    .line 280
    :sswitch_99
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    const v1, 0x7f08006e

    #setter for: Lcom/infraware/common/register/UserRegister;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$7(Lcom/infraware/common/register/UserRegister;I)V

    .line 281
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0, v2}, Lcom/infraware/common/register/UserRegister;->showDialog(I)V

    goto/16 :goto_a

    .line 285
    :sswitch_a8
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Lcom/infraware/common/register/UserRegister;->finish()V

    goto/16 :goto_a

    .line 141
    nop

    :sswitch_data_b0
    .sparse-switch
        0x384 -> :sswitch_b
        0x3e8 -> :sswitch_19
        0x44c -> :sswitch_27
        0x4b0 -> :sswitch_33
        0x514 -> :sswitch_8a
        0x578 -> :sswitch_99
        0x5dc -> :sswitch_a8
    .end sparse-switch

    .line 226
    :pswitch_data_ce
    .packed-switch 0x3
        :pswitch_44
        :pswitch_4d
        :pswitch_56
        :pswitch_5f
        :pswitch_68
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_71
        :pswitch_81
        :pswitch_81
    .end packed-switch
.end method
