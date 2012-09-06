.class Lcom/android/samsungtest/FileCopy/FileCopy$4;
.super Ljava/lang/Object;
.source "FileCopy.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FileCopy/FileCopy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FileCopy/FileCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$4;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 712
    const v1, 0x7f060029

    if-ne p2, v1, :cond_1c

    .line 716
    :try_start_5
    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$4;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    const/4 v2, 0x1

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1000(Lcom/android/samsungtest/FileCopy/FileCopy;I)V

    .line 718
    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$4;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    const-string v2, "path"

    const-string v3, "system_space"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1100(Lcom/android/samsungtest/FileCopy/FileCopy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    .line 744
    :cond_14
    :goto_14
    return-void

    .line 720
    :catch_15
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_14

    .line 728
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    const v1, 0x7f06002a

    if-ne p2, v1, :cond_14

    .line 732
    :try_start_21
    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$4;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    const/4 v2, 0x2

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1000(Lcom/android/samsungtest/FileCopy/FileCopy;I)V

    .line 734
    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$4;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    const-string v2, "path"

    const-string v3, "user_space"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1100(Lcom/android/samsungtest/FileCopy/FileCopy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_14

    .line 736
    :catch_31
    move-exception v0

    .line 738
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_14
.end method
