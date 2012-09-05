.class Lcom/android/sprintmenu/RC_DATA$2;
.super Ljava/lang/Object;
.source "RC_DATA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RC_DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RC_DATA;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RC_DATA;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 186
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    const-string v1, "RC_DATA"

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_80

    .line 215
    const-string v1, "OnClickListener"

    const-string v2, "Default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x6

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    .line 221
    :goto_2c
    return-void

    .line 191
    :pswitch_2d
    const-string v1, "OnClickListener"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v3}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 195
    :pswitch_3a
    const-string v1, "OnClickListener"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x1

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 199
    :pswitch_48
    const-string v1, "OnClickListener"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x2

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 203
    :pswitch_56
    const-string v1, "OnClickListener"

    const-string v2, "3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x3

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 207
    :pswitch_64
    const-string v1, "OnClickListener"

    const-string v2, "4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x4

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 211
    :pswitch_72
    const-string v1, "OnClickListener"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/sprintmenu/RC_DATA$2;->this$0:Lcom/android/sprintmenu/RC_DATA;

    const/4 v2, 0x5

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_2c

    .line 189
    :pswitch_data_80
    .packed-switch 0x7f070018
        :pswitch_2d
        :pswitch_3a
        :pswitch_48
        :pswitch_56
        :pswitch_64
        :pswitch_72
    .end packed-switch
.end method
