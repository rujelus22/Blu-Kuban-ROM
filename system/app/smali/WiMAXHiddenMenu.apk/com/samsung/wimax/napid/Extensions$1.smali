.class Lcom/samsung/wimax/napid/Extensions$1;
.super Landroid/os/Handler;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Extensions;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/wimax/napid/Extensions$1;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 109
    :goto_5
    return-void

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$1;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->ReadExtensions()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/Extensions;->access$000(Lcom/samsung/wimax/napid/Extensions;)V

    goto :goto_5

    .line 100
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions$1;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/wimax/napid/Extensions;->entryVal:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$1;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->checkWimaxStateAndUpdate()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/Extensions;->access$100(Lcom/samsung/wimax/napid/Extensions;)V

    goto :goto_5

    .line 105
    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$1;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->updateExtensions()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/Extensions;->access$200(Lcom/samsung/wimax/napid/Extensions;)V

    goto :goto_5

    .line 94
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_1a
    .end packed-switch
.end method
