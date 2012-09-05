.class Lcom/android/sprintmenu/PhoneUtil_OldRev$1;
.super Ljava/lang/Object;
.source "PhoneUtil_OldRev.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/PhoneUtil_OldRev;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/PhoneUtil_OldRev;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 64
    const v2, 0x7f070016

    if-ne p2, v2, :cond_3a

    .line 66
    :try_start_5
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-virtual {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "modem_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-virtual {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "modem_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, current_mode:I
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-static {}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$000()[B

    move-result-object v3

    #calls: Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$100(Lcom/android/sprintmenu/PhoneUtil_OldRev;[B)V

    .line 69
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    #getter for: Lcom/android/sprintmenu/PhoneUtil_OldRev;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$200(Lcom/android/sprintmenu/PhoneUtil_OldRev;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UART MODEM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    .line 83
    .end local v0           #current_mode:I
    :cond_32
    :goto_32
    return-void

    .line 70
    :catch_33
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3a
    const v2, 0x7f070017

    if-ne p2, v2, :cond_32

    .line 75
    :try_start_3f
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-virtual {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "modem_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-virtual {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "modem_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    .restart local v0       #current_mode:I
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    invoke-static {}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$300()[B

    move-result-object v3

    #calls: Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$100(Lcom/android/sprintmenu/PhoneUtil_OldRev;[B)V

    .line 78
    iget-object v2, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;->this$0:Lcom/android/sprintmenu/PhoneUtil_OldRev;

    #getter for: Lcom/android/sprintmenu/PhoneUtil_OldRev;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->access$200(Lcom/android/sprintmenu/PhoneUtil_OldRev;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USB MODEM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6c} :catch_6d

    goto :goto_32

    .line 79
    .end local v0           #current_mode:I
    :catch_6d
    move-exception v1

    .line 80
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_32
.end method
