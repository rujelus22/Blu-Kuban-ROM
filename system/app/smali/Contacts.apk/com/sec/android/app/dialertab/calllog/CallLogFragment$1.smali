.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.action.BLUETOOTH_DIAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, TAB_INDEX_DIALER:I
    const/4 v2, 0x1

    .line 196
    .local v2, TAB_INDEX_CALL_LOG:I
    const/4 v0, 0x0

    .line 197
    .local v0, DIAL_INFO_NUMBER:I
    const/4 v1, 0x1

    .line 199
    .local v1, DIAL_INFO_TYPE:I
    const-string v6, "CallLogFragment"

    const-string v7, "mBroadcastReceiver, receive the BLUETOOTH_DIAL intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v6, :cond_24

    .line 225
    .end local v0           #DIAL_INFO_NUMBER:I
    .end local v1           #DIAL_INFO_TYPE:I
    .end local v2           #TAB_INDEX_CALL_LOG:I
    .end local v3           #TAB_INDEX_DIALER:I
    :cond_23
    :goto_23
    return-void

    .line 205
    .restart local v0       #DIAL_INFO_NUMBER:I
    .restart local v1       #DIAL_INFO_TYPE:I
    .restart local v2       #TAB_INDEX_CALL_LOG:I
    .restart local v3       #TAB_INDEX_DIALER:I
    :cond_24
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/DialtactsActivity;

    .line 207
    .local v5, parent:Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v6

    if-ne v6, v10, :cond_23

    .line 208
    const-string v6, "bluetoohdial"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, numberInfo:[Ljava/lang/String;
    const-string v6, "CallLogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLDN, number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v4, :cond_23

    .line 218
    aget-object v6, v4, v10

    const-string v7, "vcall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 219
    aget-object v6, v4, v9

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 221
    :cond_70
    aget-object v6, v4, v9

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23
.end method
