.class Lcom/android/sprintmenu/USBChargeMenu$1;
.super Ljava/lang/Object;
.source "USBChargeMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/USBChargeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/USBChargeMenu;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/USBChargeMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/sprintmenu/USBChargeMenu$1;->this$0:Lcom/android/sprintmenu/USBChargeMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 29
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/USBChargeMenu$1;->this$0:Lcom/android/sprintmenu/USBChargeMenu;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 41
    :goto_18
    return-void

    .line 33
    :pswitch_19
    const-string v1, "OnClickListener"

    const-string v2, "Short DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "persist.service.slate_mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 37
    :pswitch_28
    const-string v1, "OnClickListener"

    const-string v2, "Long DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v1, "persist.service.slate_mode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 31
    nop

    :pswitch_data_38
    .packed-switch 0x7f07002d
        :pswitch_19
        :pswitch_28
    .end packed-switch
.end method
