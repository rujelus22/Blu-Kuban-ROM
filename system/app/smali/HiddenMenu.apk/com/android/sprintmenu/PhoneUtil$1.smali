.class Lcom/android/sprintmenu/PhoneUtil$1;
.super Ljava/lang/Object;
.source "PhoneUtil.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/PhoneUtil;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/PhoneUtil;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/PhoneUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    #getter for: Lcom/android/sprintmenu/PhoneUtil;->canRun:Z
    invoke-static {v1}, Lcom/android/sprintmenu/PhoneUtil;->access$000(Lcom/android/sprintmenu/PhoneUtil;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 72
    const v1, 0x7f070013

    if-ne p2, v1, :cond_3d

    .line 74
    :try_start_d
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    #getter for: Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/PhoneUtil;->access$100(Lcom/android/sprintmenu/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP Selected!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "LOG_TAG"

    const-string v2, "AP_STATUS setting in onchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    const/4 v2, 0x4

    #calls: Lcom/android/sprintmenu/PhoneUtil;->setProp(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$200(Lcom/android/sprintmenu/PhoneUtil;I)V

    .line 77
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    invoke-static {}, Lcom/android/sprintmenu/PhoneUtil;->access$300()[B

    move-result-object v2

    #calls: Lcom/android/sprintmenu/PhoneUtil;->sendRILCommands([B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$400(Lcom/android/sprintmenu/PhoneUtil;[B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2e} :catch_2f

    .line 104
    :cond_2e
    :goto_2e
    return-void

    .line 78
    :catch_2f
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LOG_TAG"

    const-string v2, "throwing exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2e

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3d
    const v1, 0x7f070014

    if-ne p2, v1, :cond_73

    .line 84
    :try_start_42
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    #getter for: Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/PhoneUtil;->access$100(Lcom/android/sprintmenu/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CP Selected!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "LOG_TAG"

    const-string v2, "CP_STATUS setting in onchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    const/16 v2, 0x8

    #calls: Lcom/android/sprintmenu/PhoneUtil;->setProp(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$200(Lcom/android/sprintmenu/PhoneUtil;I)V

    .line 87
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    invoke-static {}, Lcom/android/sprintmenu/PhoneUtil;->access$500()[B

    move-result-object v2

    #calls: Lcom/android/sprintmenu/PhoneUtil;->sendRILCommands([B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$400(Lcom/android/sprintmenu/PhoneUtil;[B)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_64} :catch_65

    goto :goto_2e

    .line 88
    :catch_65
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LOG_TAG"

    const-string v2, "throwing exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2e

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_73
    const v1, 0x7f070015

    if-ne p2, v1, :cond_2e

    .line 94
    :try_start_78
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    #getter for: Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/PhoneUtil;->access$100(Lcom/android/sprintmenu/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL Selected!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "LOG_TAG"

    const-string v2, "ALL_STATUS setting in onchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    const/4 v2, 0x0

    #calls: Lcom/android/sprintmenu/PhoneUtil;->setProp(I)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$200(Lcom/android/sprintmenu/PhoneUtil;I)V

    .line 97
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil$1;->this$0:Lcom/android/sprintmenu/PhoneUtil;

    invoke-static {}, Lcom/android/sprintmenu/PhoneUtil;->access$500()[B

    move-result-object v2

    #calls: Lcom/android/sprintmenu/PhoneUtil;->sendRILCommands([B)V
    invoke-static {v1, v2}, Lcom/android/sprintmenu/PhoneUtil;->access$400(Lcom/android/sprintmenu/PhoneUtil;[B)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_99} :catch_9a

    goto :goto_2e

    .line 98
    :catch_9a
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LOG_TAG"

    const-string v2, "throwing exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2e
.end method
