.class Lcom/android/sprintmenu/DUN$3;
.super Ljava/lang/Object;
.source "DUN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/DUN;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 110
    iput-object p1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    #getter for: Lcom/android/sprintmenu/DUN;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/sprintmenu/DUN;->access$000(Lcom/android/sprintmenu/DUN;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataDunEnabled(Z)V

    .line 116
    :try_start_a
    iget-object v1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-virtual {v1}, Lcom/android/sprintmenu/DUN;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.sprintmenu.dialup.setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    const/4 v2, 0x1

    #calls: Lcom/android/sprintmenu/DUN;->setChecked(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/DUN;->access$200(Lcom/android/sprintmenu/DUN;I)V

    .line 118
    iget-object v1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    const-string v2, "MODEM"

    #calls: Lcom/android/sprintmenu/DUN;->changeUsb(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/DUN;->access$100(Lcom/android/sprintmenu/DUN;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_29

    .line 123
    :goto_23
    iget-object v1, p0, Lcom/android/sprintmenu/DUN$3;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-virtual {v1}, Lcom/android/sprintmenu/DUN;->finish()V

    .line 124
    return-void

    .line 120
    :catch_29
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23
.end method
