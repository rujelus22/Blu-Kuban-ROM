.class public Lcom/swype/android/connect/settings/MessagesActivity;
.super Landroid/app/ListActivity;
.source "MessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;
    }
.end annotation


# static fields
.field private static final EDIT_MESSAGE_DIALOG:I = 0x1

.field private static final MESSAGE_REFRESH_LIST:I


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private filter:Landroid/content/IntentFilter;

.field private handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->messageList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;-><init>(Lcom/swype/android/connect/settings/MessagesActivity;)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    .line 78
    new-instance v0, Lcom/swype/android/connect/settings/MessagesActivity$1;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/settings/MessagesActivity$1;-><init>(Lcom/swype/android/connect/settings/MessagesActivity;)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.connect.ReceivedMessage"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->filter:Landroid/content/IntentFilter;

    .line 86
    new-instance v0, Lcom/swype/android/connect/settings/MessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/settings/MessagesActivity$2;-><init>(Lcom/swype/android/connect/settings/MessagesActivity;)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/connect/settings/MessagesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->loadMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/swype/android/connect/settings/MessagesActivity;)Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/swype/android/connect/settings/MessagesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/swype/android/connect/settings/MessagesActivity;->deleteMessage(Ljava/lang/String;)V

    return-void
.end method

.method private deleteMessage(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 220
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/settings/MessagesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/swype/android/connect/manager/MessageManager;->loadSystemMessages(Landroid/content/SharedPreferences;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/MessageManager;->saveSystemMessages(Landroid/content/SharedPreferences;Ljava/util/Map;)V

    .line 224
    return-void
.end method

.method private loadMessages()V
    .registers 9

    .prologue
    const/4 v2, 0x3

    .line 194
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/settings/MessagesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/swype/android/connect/manager/MessageManager;->loadSystemMessages(Landroid/content/SharedPreferences;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 196
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 197
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/manager/MessageManager$Message;

    .line 200
    const-wide/high16 v4, -0x8000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 202
    :try_start_35
    new-instance v5, Ljava/lang/Long;

    iget-object v6, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->time:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_66

    move-object v4, v5

    .line 207
    :goto_3d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 208
    const-string v6, "subject"

    iget-object v7, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v6, "timestamp"

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v4, "messageId"

    iget-object v6, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->messageId:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v4, "body"

    iget-object v0, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->body:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 203
    :catch_66
    move-exception v5

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadMessages() -- invalid timestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_3d

    .line 214
    :cond_82
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->adapter:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_8b

    .line 215
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 217
    :cond_8b
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 76
    :goto_1d
    return-void

    .line 69
    :pswitch_1e
    const-string v0, "case MESSAGE_REFRESH_LIST"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.RefreshConnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/MessagesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    invoke-direct {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->loadMessages()V

    goto :goto_1d

    .line 67
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    .line 130
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->loadMessages()V

    .line 132
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/MessagesActivity;->setTitle(I)V

    .line 133
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 134
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 136
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/connect/settings/MessagesActivity;->messageList:Ljava/util/ArrayList;

    const v3, 0x7f03000a

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "subject"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "timestamp"

    aput-object v7, v4, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_50

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 145
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/MessagesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/settings/MessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void

    .line 136
    :array_50
    .array-data 0x4
        0xdt 0x0t 0xdt 0x7ft
        0xet 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 151
    packed-switch p1, :pswitch_data_9a

    move-object v0, v3

    .line 190
    :goto_5
    return-object v0

    .line 155
    :pswitch_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/MessagesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 157
    const v0, 0x7f0d0012

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 158
    const-string v1, "body"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    const-string v1, ""

    const-string v4, "body"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 159
    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 160
    const-string v1, "body"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v0, v1, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_48
    const v0, 0x7f0d0010

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    const v1, 0x7f0d0011

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    const-string v4, "subject"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string v0, "timestamp"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/swype/android/connect/settings/MessagesActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/swype/android/connect/settings/MessagesActivity$4;-><init>(Lcom/swype/android/connect/settings/MessagesActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/swype/android/connect/settings/MessagesActivity$3;

    invoke-direct {v2, p0}, Lcom/swype/android/connect/settings/MessagesActivity$3;-><init>(Lcom/swype/android/connect/settings/MessagesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_5

    .line 162
    :cond_94
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_48

    .line 151
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->stop()V

    .line 119
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/MessagesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/swype/android/connect/settings/MessagesActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/settings/MessagesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 126
    return-void
.end method
