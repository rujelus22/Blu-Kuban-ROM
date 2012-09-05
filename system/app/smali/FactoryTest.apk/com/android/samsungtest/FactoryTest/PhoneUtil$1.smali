.class Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;
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
    .line 112
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 117
    const v1, 0x7f0900bb

    if-ne p2, v1, :cond_1d

    .line 119
    :try_start_5
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "MODEM"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUart(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$000(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "persist.uart"

    const-string v3, "modem"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$100(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 134
    :cond_15
    :goto_15
    return-void

    .line 121
    :catch_16
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_15

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1d
    const v1, 0x7f0900bc

    if-ne p2, v1, :cond_15

    .line 127
    :try_start_22
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "PDA"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUart(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$000(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;->this$0:Lcom/android/samsungtest/FactoryTest/PhoneUtil;

    const-string v2, "persist.uart"

    const-string v3, "pda"

    #calls: Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->access$100(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_15

    .line 129
    :catch_33
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_15
.end method
