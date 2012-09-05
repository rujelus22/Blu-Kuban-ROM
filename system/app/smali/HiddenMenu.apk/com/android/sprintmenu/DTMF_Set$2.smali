.class Lcom/android/sprintmenu/DTMF_Set$2;
.super Ljava/lang/Object;
.source "DTMF_Set.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/DTMF_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DTMF_Set;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DTMF_Set;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/sprintmenu/DTMF_Set$2;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 160
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 161
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set$2;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 162
    const-string v1, "DTMF_Set"

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 176
    const-string v1, "OnClickListener"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set$2;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #setter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v1, v3}, Lcom/android/sprintmenu/DTMF_Set;->access$002(Lcom/android/sprintmenu/DTMF_Set;B)B

    .line 182
    :goto_2b
    return-void

    .line 166
    :pswitch_2c
    const-string v1, "OnClickListener"

    const-string v2, "Short DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set$2;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    const/4 v2, 0x1

    #calls: Lcom/android/sprintmenu/DTMF_Set;->sendOemData(B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/DTMF_Set;->access$200(Lcom/android/sprintmenu/DTMF_Set;B)V

    goto :goto_2b

    .line 171
    :pswitch_3a
    const-string v1, "OnClickListener"

    const-string v2, "Long DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set$2;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    const/4 v2, 0x2

    #calls: Lcom/android/sprintmenu/DTMF_Set;->sendOemData(B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/DTMF_Set;->access$200(Lcom/android/sprintmenu/DTMF_Set;B)V

    goto :goto_2b

    .line 164
    :pswitch_data_48
    .packed-switch 0x7f070004
        :pswitch_2c
        :pswitch_3a
    .end packed-switch
.end method
