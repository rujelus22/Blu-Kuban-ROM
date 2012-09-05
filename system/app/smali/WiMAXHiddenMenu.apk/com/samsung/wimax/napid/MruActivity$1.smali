.class Lcom/samsung/wimax/napid/MruActivity$1;
.super Landroid/os/Handler;
.source "MruActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/MruActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/MruActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/MruActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 78
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_86

    .line 110
    :cond_6
    :goto_6
    return-void

    .line 81
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 82
    .local v1, readIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v3, v3, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleMessage READ_MRU"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    invoke-virtual {v3, v1}, Lcom/samsung/wimax/napid/MruActivity;->handleMruReadResp(Landroid/content/Intent;)V

    .line 84
    sget-object v3, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 85
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v3, v3, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rahul : mchannels.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    sget-object v3, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_55

    .line 88
    sget-object v3, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    sget-object v4, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 91
    :cond_55
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v3, v3, Lcom/samsung/wimax/napid/MruActivity;->mruAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 92
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #getter for: Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z
    invoke-static {v3}, Lcom/samsung/wimax/napid/MruActivity;->access$000(Lcom/samsung/wimax/napid/MruActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 93
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v3, v3, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3, v6}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 94
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #setter for: Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z
    invoke-static {v3, v6}, Lcom/samsung/wimax/napid/MruActivity;->access$002(Lcom/samsung/wimax/napid/MruActivity;Z)Z

    goto :goto_6

    .line 98
    .end local v0           #i:I
    .end local v1           #readIntent:Landroid/content/Intent;
    :pswitch_73
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 99
    .local v2, updateIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v3, v3, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleMessage UPDATE_MRU"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity$1;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #calls: Lcom/samsung/wimax/napid/MruActivity;->handleMruUpdate(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/samsung/wimax/napid/MruActivity;->access$100(Lcom/samsung/wimax/napid/MruActivity;Landroid/content/Intent;)V

    goto :goto_6

    .line 78
    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_7
        :pswitch_73
    .end packed-switch
.end method
