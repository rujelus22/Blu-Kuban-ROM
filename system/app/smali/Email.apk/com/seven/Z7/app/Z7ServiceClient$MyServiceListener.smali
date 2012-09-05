.class final Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "Z7ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7ServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7ServiceClient;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/app/Z7ServiceClient;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    .line 123
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .registers 13
    .parameter "b"

    .prologue
    .line 128
    const-string v8, "Z7ServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callBack() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Size#:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v10, v10, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v8, v8, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 130
    .local v6, m:I
    const-string v8, "Z7ServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 133
    .end local v6           #m:I
    :cond_5f
    const-string v8, "event-id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 134
    .local v7, what:I
    const/4 v5, 0x0

    .line 135
    .local v5, isReusable:Z
    sparse-switch v7, :sswitch_data_13a

    .line 161
    :goto_69
    const/4 v4, 0x0

    .line 163
    .local v4, isFound:Z
    if-eqz v5, :cond_112

    .line 164
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v8, v8, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 170
    .local v1, handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :goto_7a
    if-nez v1, :cond_98

    const-string v8, "ref_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 172
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v8, v8, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    const-string v9, "ref_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 175
    .restart local v1       #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :cond_98
    if-eqz v1, :cond_123

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_123

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_122

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    .line 177
    .local v6, m:Landroid/os/Handler;
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    invoke-virtual {v8, p1, v6}, Lcom/seven/Z7/app/Z7ServiceClient;->sendMessage(Landroid/os/Bundle;Landroid/os/Handler;)V

    goto :goto_a4

    .line 137
    .end local v1           #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    .end local v4           #isFound:Z
    .end local v6           #m:Landroid/os/Handler;
    :sswitch_b6
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v8, v8, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    const/16 v9, 0x5d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 138
    .local v2, hs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    if-eqz v2, :cond_100

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_101

    .line 140
    const-string v8, "Z7ServiceClient"

    const-string v9, "More than one REPORT_DIALOG handler - only first notified"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_d6
    const-string v8, "Z7ServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REPORT_DIALOG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "message"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 152
    .local v0, h:Landroid/os/Handler;
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    invoke-virtual {v8, p1, v0}, Lcom/seven/Z7/app/Z7ServiceClient;->sendMessage(Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 189
    .end local v0           #h:Landroid/os/Handler;
    .end local v2           #hs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :cond_100
    :goto_100
    return-void

    .line 141
    .restart local v2       #hs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :cond_101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_d6

    .line 142
    const-string v8, "Z7ServiceClient"

    const-string v9, "No REPORT_DIALOG listeners"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 157
    .end local v2           #hs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :sswitch_10f
    const/4 v5, 0x1

    goto/16 :goto_69

    .line 167
    .restart local v4       #isFound:Z
    :cond_112
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    iget-object v8, v8, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .restart local v1       #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    goto/16 :goto_7a

    .line 179
    :cond_122
    const/4 v4, 0x1

    .line 182
    :cond_123
    iget-object v8, p0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7ServiceClient;

    #calls: Lcom/seven/Z7/app/Z7ServiceClient;->handExtraCallback(ILandroid/os/Bundle;)Z
    invoke-static {v8, v7, p1}, Lcom/seven/Z7/app/Z7ServiceClient;->access$000(Lcom/seven/Z7/app/Z7ServiceClient;ILandroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_100

    .line 186
    if-nez v4, :cond_100

    const/16 v8, 0x64

    if-ge v7, v8, :cond_100

    .line 187
    const-string v8, "Z7ServiceClient"

    const-string v9, "message callback not found for do not show private informations.!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 135
    nop

    :sswitch_data_13a
    .sparse-switch
        0x52 -> :sswitch_10f
        0x55 -> :sswitch_10f
        0x5d -> :sswitch_b6
    .end sparse-switch
.end method
