.class public Lcom/samsung/wimax/wimax_netest/WimaxNeTest;
.super Landroid/app/Activity;
.source "WimaxNeTest.java"


# static fields
.field public static final SEND_GET_RESULT_TO_RIL:Ljava/lang/String; = "com.android.samsungtest.SendGetResultToRil"

.field public static final SEND_RESULT_TO_RIL:Ljava/lang/String; = "com.android.samsungtest.FactoryTestStatus"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WiMAXNETEST"

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field PrefName:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field displayVal:Landroid/content/SharedPreferences;

.field mStateText:Landroid/widget/TextView;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field mWimaxFilter:Landroid/content/IntentFilter;

.field mWimaxOn:Landroid/widget/Button;

.field mWimaxOnListner:Landroid/view/View$OnClickListener;

.field private mWstateReceiver:Landroid/content/BroadcastReceiver;

.field stickyIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "WIMAX_NE"

    iput-object v0, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "Display_state"

    iput-object v0, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;-><init>(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;-><init>(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOnListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->handleWimaxStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 3
    .parameter "wl"

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    :goto_6
    return-void

    .line 267
    :cond_7
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_6
.end method

.method private handleWimaxStateChanged(Landroid/content/Intent;)V
    .registers 14
    .parameter "intent"

    .prologue
    const/16 v11, 0x24

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 286
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "handleWimaxStateChanged  is called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/fourG/wimax/WimaxState;

    .line 288
    .local v4, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, checkVal:I
    if-ne v0, v10, :cond_27

    .line 291
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "handleWimaxStateChanged returned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_26
    :goto_26
    return-void

    .line 294
    :cond_27
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_3a

    .line 296
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Initializing"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Initializing********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 299
    :cond_3a
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->INITIALIZED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_4d

    .line 301
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Intialized"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Intialized********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 304
    :cond_4d
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_65

    .line 306
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Scanning"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Scanning********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 312
    :cond_65
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_78

    .line 314
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Ready"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Ready********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 317
    :cond_78
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_8b

    .line 320
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Connecting"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Connecting********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 323
    :cond_8b
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_c8

    .line 325
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 326
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Success"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***Obtaining_IPAddr********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v7}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 331
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.samsungtest.FactoryTestStatus"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, i:Landroid/content/Intent;
    const-string v5, "ITEM_ID"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 333
    const-string v5, "RESULT"

    const/16 v6, 0x50

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_26

    .line 341
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:Landroid/content/Intent;
    :cond_c8
    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_26

    .line 343
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v6, "***DISCONNECTED********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 348
    .local v3, val:I
    if-nez v3, :cond_26

    .line 349
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v6, "Failed"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v7}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 352
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.samsungtest.FactoryTestStatus"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v2       #i:Landroid/content/Intent;
    const-string v5, "ITEM_ID"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 354
    const-string v5, "RESULT"

    const/16 v6, 0x50

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 361
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    invoke-interface {v1, v5, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_26
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->setContentView(I)V

    .line 65
    const v1, 0x7f08011b

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f08011d

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOnListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxFilter:Landroid/content/IntentFilter;

    .line 76
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    .line 78
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->release_sWakeLock()V

    .line 226
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->stickyIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f

    .line 227
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->stickyIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 230
    :cond_f
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 238
    invoke-virtual {p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v3, "rahul in resume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 191
    .local v0, powerManager:Landroid/os/PowerManager;
    const/16 v2, 0xa

    const-string v3, "WiMAXNETEST"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 192
    sget-object v2, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v2}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 193
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 195
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 196
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 201
    :cond_38
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v3, "onresume is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 207
    .local v1, val:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 209
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    :cond_6a
    return-void
.end method

.method public release_sWakeLock()V
    .registers 2

    .prologue
    .line 273
    sget-object v0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 276
    sget-object v0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    :cond_d
    return-void
.end method

.method public sendGetTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "read_type"
    .parameter "index"

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendGetResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, i:Landroid/content/Intent;
    const-string v1, "READ_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v1, "INDEX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    return-void
.end method
