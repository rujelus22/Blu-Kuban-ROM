.class Lcom/android/sprintmenu/WORK_Mode$1;
.super Ljava/lang/Object;
.source "WORK_Mode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/WORK_Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/WORK_Mode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/WORK_Mode;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 30
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 32
    const-string v1, "WORK_MODE"

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_64

    .line 50
    const-string v1, "WORK_MODE"

    const-string v2, "Inside OnClickListener default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/WORK_Mode;->finish()V

    .line 55
    :goto_2b
    return-void

    .line 35
    :pswitch_2c
    const-string v1, "WORK_MODE"

    const-string v2, "Inside OnClickListener default mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    #calls: Lcom/android/sprintmenu/WORK_Mode;->setDefaultMode(I)V
    invoke-static {v1, v3}, Lcom/android/sprintmenu/WORK_Mode;->access$000(Lcom/android/sprintmenu/WORK_Mode;I)V

    .line 37
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/WORK_Mode;->finish()V

    goto :goto_2b

    .line 40
    :pswitch_3e
    const-string v1, "WORK_MODE"

    const-string v2, "Inside OnClickListener CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    const/4 v2, 0x1

    #calls: Lcom/android/sprintmenu/WORK_Mode;->setDefaultMode(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/WORK_Mode;->access$000(Lcom/android/sprintmenu/WORK_Mode;I)V

    .line 42
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/WORK_Mode;->finish()V

    goto :goto_2b

    .line 45
    :pswitch_51
    const-string v1, "WORK_MODE"

    const-string v2, "Inside OnClickListener WIMAX & CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    const/4 v2, 0x2

    #calls: Lcom/android/sprintmenu/WORK_Mode;->setDefaultMode(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/WORK_Mode;->access$000(Lcom/android/sprintmenu/WORK_Mode;I)V

    .line 47
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode$1;->this$0:Lcom/android/sprintmenu/WORK_Mode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/WORK_Mode;->finish()V

    goto :goto_2b

    .line 33
    :pswitch_data_64
    .packed-switch 0x7f070031
        :pswitch_2c
        :pswitch_3e
        :pswitch_51
    .end packed-switch
.end method
