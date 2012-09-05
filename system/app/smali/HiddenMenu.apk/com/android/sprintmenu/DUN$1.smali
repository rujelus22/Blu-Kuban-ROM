.class Lcom/android/sprintmenu/DUN$1;
.super Ljava/lang/Object;
.source "DUN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/DUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DUN;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DUN;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 76
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    .line 77
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_50

    .line 98
    :goto_b
    return-void

    .line 79
    :pswitch_c
    const-string v2, "OnClickListener"

    const-string v3, "DUN ON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/DUN;->showDialog(I)V

    goto :goto_b

    .line 84
    :pswitch_1b
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    #getter for: Lcom/android/sprintmenu/DUN;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/sprintmenu/DUN;->access$000(Lcom/android/sprintmenu/DUN;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setDataDunEnabled(Z)V

    .line 86
    :try_start_24
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-virtual {v2}, Lcom/android/sprintmenu/DUN;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.sprintmenu.dialup.setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    const-string v3, "PDA"

    #calls: Lcom/android/sprintmenu/DUN;->changeUsb(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/DUN;->access$100(Lcom/android/sprintmenu/DUN;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    const/4 v3, 0x0

    #calls: Lcom/android/sprintmenu/DUN;->setChecked(I)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/DUN;->access$200(Lcom/android/sprintmenu/DUN;I)V

    .line 89
    const-string v2, "OnClickListener"

    const-string v3, "DUN OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_44} :catch_4a

    .line 94
    :goto_44
    iget-object v2, p0, Lcom/android/sprintmenu/DUN$1;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-virtual {v2}, Lcom/android/sprintmenu/DUN;->finish()V

    goto :goto_b

    .line 91
    :catch_4a
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 77
    nop

    :pswitch_data_50
    .packed-switch 0x7f070006
        :pswitch_c
        :pswitch_1b
    .end packed-switch
.end method
