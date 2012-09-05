.class Lcom/android/sprintmenu/KOREA_Mode$2;
.super Ljava/lang/Object;
.source "KOREA_Mode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/KOREA_Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/KOREA_Mode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/KOREA_Mode;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 201
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnClickListener"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 204
    .local v1, selectedMode:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 205
    .local v2, sysProp:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_22a

    .line 252
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inside OnClickListener default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3, v5}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 254
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener ,selectedmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener, sysprop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_82
    return-void

    .line 207
    :pswitch_83
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inside OnClickListener Korean"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3, v5}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 209
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener ,selectedmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener, sysprop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v4

    #calls: Lcom/android/sprintmenu/KOREA_Mode;->sendOemData(B)V
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$300(Lcom/android/sprintmenu/KOREA_Mode;B)V

    .line 215
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v3}, Lcom/android/sprintmenu/KOREA_Mode;->finish()V

    goto :goto_82

    .line 218
    :pswitch_eb
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inside OnClickListener Sprint"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    const/4 v4, 0x2

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 220
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener ,selectedmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener, sysprop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v4

    #calls: Lcom/android/sprintmenu/KOREA_Mode;->sendOemData(B)V
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$300(Lcom/android/sprintmenu/KOREA_Mode;B)V

    .line 226
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v3}, Lcom/android/sprintmenu/KOREA_Mode;->finish()V

    goto/16 :goto_82

    .line 230
    :pswitch_155
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inside OnClickListener India"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    const/16 v4, 0x9

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 232
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener ,selectedmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener, sysprop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v4

    #calls: Lcom/android/sprintmenu/KOREA_Mode;->sendOemData(B)V
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$300(Lcom/android/sprintmenu/KOREA_Mode;B)V

    .line 238
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v3}, Lcom/android/sprintmenu/KOREA_Mode;->finish()V

    goto/16 :goto_82

    .line 241
    :pswitch_1c0
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inside OnClickListener Mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    const/4 v4, -0x1

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 243
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener ,selectedmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "net.cdma.configurable.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside OnClickListener, sysprop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v4

    #calls: Lcom/android/sprintmenu/KOREA_Mode;->sendOemData(B)V
    invoke-static {v3, v4}, Lcom/android/sprintmenu/KOREA_Mode;->access$300(Lcom/android/sprintmenu/KOREA_Mode;B)V

    .line 249
    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$2;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v3}, Lcom/android/sprintmenu/KOREA_Mode;->finish()V

    goto/16 :goto_82

    .line 205
    :pswitch_data_22a
    .packed-switch 0x7f07000e
        :pswitch_83
        :pswitch_eb
        :pswitch_155
        :pswitch_1c0
    .end packed-switch
.end method
