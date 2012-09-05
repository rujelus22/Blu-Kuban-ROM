.class Lcom/android/sprintmenu/DNS_Set$1;
.super Ljava/lang/Object;
.source "DNS_Set.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/DNS_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DNS_Set;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DNS_Set;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/sprintmenu/DNS_Set$1;->this$0:Lcom/android/sprintmenu/DNS_Set;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 29
    .local v0, rb:Landroid/widget/RadioButton;
    const-string v1, "DNS_Set"

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 41
    const-string v1, "OnClickListener"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_18
    return-void

    .line 33
    :pswitch_19
    const-string v1, "OnClickListener"

    const-string v2, "Enable_DNS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/android/sprintmenu/DNS_Set$1;->this$0:Lcom/android/sprintmenu/DNS_Set;

    #getter for: Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/sprintmenu/DNS_Set;->access$000(Lcom/android/sprintmenu/DNS_Set;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    goto :goto_18

    .line 37
    :pswitch_2b
    const-string v1, "OnClickListener"

    const-string v2, "Disable DNS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/android/sprintmenu/DNS_Set$1;->this$0:Lcom/android/sprintmenu/DNS_Set;

    #getter for: Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/sprintmenu/DNS_Set;->access$000(Lcom/android/sprintmenu/DNS_Set;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    goto :goto_18

    .line 31
    nop

    :pswitch_data_3e
    .packed-switch 0x7f070001
        :pswitch_19
        :pswitch_2b
    .end packed-switch
.end method
