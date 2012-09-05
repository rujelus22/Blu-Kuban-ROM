.class Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;
.super Ljava/lang/Object;
.source "PhoneUtil.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/PhoneUtil;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 145
    const v1, 0x7f0900be

    if-ne p2, v1, :cond_3b

    .line 146
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$200(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "modem"

    if-eq v1, v2, :cond_23

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$300(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 147
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$408(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I

    .line 148
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "modem"

    #setter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$202(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "MODEM"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUsb(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$500(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "persist.usb"

    const-string v3, "modem"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$100(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_34

    .line 184
    :cond_33
    :goto_33
    return-void

    .line 155
    :catch_34
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_33

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3b
    const v1, 0x7f0900bf

    if-ne p2, v1, :cond_76

    .line 160
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$200(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pda"

    if-eq v1, v2, :cond_5e

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$300(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 161
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$608(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I

    .line 162
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "pda"

    #setter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$202(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_5e
    :try_start_5e
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "PDA"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUsb(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$500(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "persist.usb"

    const-string v3, "pda"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$100(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6e} :catch_6f

    goto :goto_33

    .line 167
    :catch_6f
    move-exception v0

    .line 168
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_33

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :cond_76
    const v1, 0x7f0900c0

    if-ne p2, v1, :cond_33

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$300(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 171
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    #getter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$200(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sideloading"

    if-eq v1, v2, :cond_33

    .line 172
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$708(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I

    .line 173
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "sideloading"

    #setter for: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$202(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_33
.end method
