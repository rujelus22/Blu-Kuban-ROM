.class Lcom/android/sprintmenu/HDR1X_Selection$2;
.super Ljava/lang/Object;
.source "HDR1X_Selection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/HDR1X_Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/HDR1X_Selection;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/HDR1X_Selection;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 194
    .local v0, rb:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 195
    const-string v1, "HDR1X_SELECTION"

    const-string v2, "OnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_56

    .line 211
    const-string v1, "OnClickListener"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v1, v3}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    .line 217
    :goto_2b
    return-void

    .line 199
    :pswitch_2c
    const-string v1, "OnClickListener"

    const-string v2, "HYBRID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    const/4 v2, 0x1

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    goto :goto_2b

    .line 203
    :pswitch_3a
    const-string v1, "OnClickListener"

    const-string v2, "1X_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    const/4 v2, 0x2

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    goto :goto_2b

    .line 207
    :pswitch_48
    const-string v1, "OnClickListener"

    const-string v2, "EVDO_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/sprintmenu/HDR1X_Selection$2;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    const/4 v2, 0x3

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v1, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    goto :goto_2b

    .line 197
    :pswitch_data_56
    .packed-switch 0x7f07000b
        :pswitch_2c
        :pswitch_3a
        :pswitch_48
    .end packed-switch
.end method
