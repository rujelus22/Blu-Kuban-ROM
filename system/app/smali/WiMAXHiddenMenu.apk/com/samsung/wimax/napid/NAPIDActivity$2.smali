.class Lcom/samsung/wimax/napid/NAPIDActivity$2;
.super Landroid/os/Handler;
.source "NAPIDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/NAPIDActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    .line 159
    :goto_5
    return-void

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->readNapId(Ljava/lang/Byte;)V

    goto :goto_5

    .line 139
    :pswitch_14
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdValue:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->checkWimaxStateAndUpdate()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$700(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    goto :goto_5

    .line 144
    :pswitch_22
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    goto :goto_5

    .line 147
    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->readPrt(Ljava/lang/Byte;)V

    goto :goto_5

    .line 150
    :pswitch_38
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->prtValue:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->checkWimaxStateAndUpdate()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$700(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    goto :goto_5

    .line 155
    :pswitch_46
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$2;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    goto :goto_5

    .line 133
    :pswitch_data_4e
    .packed-switch 0x9
        :pswitch_6
        :pswitch_14
        :pswitch_22
        :pswitch_2a
        :pswitch_38
        :pswitch_46
    .end packed-switch
.end method
