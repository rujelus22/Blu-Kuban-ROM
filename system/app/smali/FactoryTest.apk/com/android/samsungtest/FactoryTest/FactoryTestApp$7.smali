.class Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 2
    .parameter

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 1990
    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1992
    .local v2, action:Ljava/lang/String;
    const-string v4, "FactoryTestApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Functiontest] onReceiveIntent2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_be

    .line 1995
    :try_start_1e
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-virtual {v4}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->chekExtSDmounted()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1996
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    if-eq v4, v8, :cond_8b

    .line 1997
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    const-string v5, "SDCard Test Pass"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1998
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v5, 0xd

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 1999
    const-string v4, "FactoryTestApp"

    const-string v5, "[[[SDCARDTEST]]]=PASS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v5, v5, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v6, v6, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2001
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-virtual {v4}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->notifyDataSetChanged()V

    .line 2002
    const-string v4, "net.cdma.factory.SDCARD"

    const-string v5, "PASS"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    const/16 v5, 0x18

    const/16 v6, 0x50

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V
    invoke-static {v4, v5, v6}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$500(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;CC)V

    .line 2004
    const-string v4, "FactoryTestApp"

    const-string v5, "!! Check Intent When the media scanner has finished scanning a directory"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_1e .. :try_end_8b} :catchall_be
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_8b} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_8b} :catch_c1

    .line 2013
    :cond_8b
    :goto_8b
    const/4 v0, 0x1

    .line 2014
    .local v0, Pass_FTA:Z
    const/4 v1, 0x0

    .local v1, a:I
    :goto_8d
    :try_start_8d
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v4, v4

    if-ge v1, v4, :cond_9d

    .line 2015
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v4, v4, v1

    if-eq v4, v8, :cond_ca

    .line 2016
    const/4 v0, 0x0

    .line 2021
    :cond_9d
    if-eqz v0, :cond_b3

    .line 2022
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-virtual {v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V
    :try_end_b3
    .catchall {:try_start_8d .. :try_end_b3} :catchall_be

    .line 2025
    :cond_b3
    monitor-exit p0

    return-void

    .line 2008
    .end local v0           #Pass_FTA:Z
    .end local v1           #a:I
    :catch_b5
    move-exception v3

    .line 2009
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_b6
    const-string v4, "FactoryTestApp"

    const-string v5, "BroadcastReceiver NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_be

    goto :goto_8b

    .line 1990
    .end local v2           #action:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catchall_be
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2010
    .restart local v2       #action:Ljava/lang/String;
    :catch_c1
    move-exception v3

    .line 2011
    .local v3, e:Ljava/lang/Exception;
    :try_start_c2
    const-string v4, "FactoryTestApp"

    const-string v5, "BroadcastReceiver exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_be

    goto :goto_8b

    .line 2014
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #Pass_FTA:Z
    .restart local v1       #a:I
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d
.end method
