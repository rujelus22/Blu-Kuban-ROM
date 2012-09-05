.class Lcom/android/sprintmenu/Toggle_NAI$2;
.super Ljava/lang/Object;
.source "Toggle_NAI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Toggle_NAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Toggle_NAI;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Toggle_NAI;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 130
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-static {}, Lcom/android/sprintmenu/Toggle_NAI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_56

    .line 145
    const-string v1, "OnClickListener"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    const/16 v2, 0xf

    #setter for: Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/Toggle_NAI;->access$102(Lcom/android/sprintmenu/Toggle_NAI;B)B

    .line 151
    :goto_2f
    return-void

    .line 135
    :pswitch_30
    const-string v1, "OnClickListener"

    const-string v2, "NAI ON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    const/4 v2, 0x1

    #calls: Lcom/android/sprintmenu/Toggle_NAI;->sendOemData(B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/Toggle_NAI;->access$300(Lcom/android/sprintmenu/Toggle_NAI;B)V

    .line 137
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    invoke-virtual {v1}, Lcom/android/sprintmenu/Toggle_NAI;->finish()V

    goto :goto_2f

    .line 140
    :pswitch_43
    const-string v1, "OnClickListener"

    const-string v2, "NAI OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    #calls: Lcom/android/sprintmenu/Toggle_NAI;->sendOemData(B)V
    invoke-static {v1, v3}, Lcom/android/sprintmenu/Toggle_NAI;->access$300(Lcom/android/sprintmenu/Toggle_NAI;B)V

    .line 142
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI$2;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    invoke-virtual {v1}, Lcom/android/sprintmenu/Toggle_NAI;->finish()V

    goto :goto_2f

    .line 133
    nop

    :pswitch_data_56
    .packed-switch 0x7f07002b
        :pswitch_30
        :pswitch_43
    .end packed-switch
.end method
