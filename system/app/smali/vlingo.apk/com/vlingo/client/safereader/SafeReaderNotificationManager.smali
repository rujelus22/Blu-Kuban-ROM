.class public Lcom/vlingo/client/safereader/SafeReaderNotificationManager;
.super Ljava/lang/Object;
.source "SafeReaderNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/SafeReaderNotificationManager$MessageContextWrapper;
    }
.end annotation


# static fields
.field private static final ENABLED:Z = false

.field private static final c_SafeReaderNotification:I = 0x1

.field private static final contextMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/vlingo/client/safereader/MessageContext;",
            "Lcom/vlingo/client/safereader/SafeReaderNotificationManager$MessageContextWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static s_RingerOn:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->s_RingerOn:Ljava/lang/Boolean;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->contextMap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method private static getMainNotification(ZZ)Landroid/app/Notification;
    .registers 16
    .parameter "ringerOn"
    .parameter "isSafeReaderPlaying"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 177
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->s_RingerOn:Ljava/lang/Boolean;

    .line 179
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 180
    .local v5, res:Landroid/content/res/Resources;
    if-eqz p0, :cond_86

    const v9, 0x7f090102

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, title:Ljava/lang/String;
    :goto_1a
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/VlingoApplication;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f030033

    invoke-direct {v1, v9, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 188
    .local v1, contentView:Landroid/widget/RemoteViews;
    if-eqz p1, :cond_8e

    .line 189
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    const-class v11, Lcom/vlingo/client/widget/SkipButtonPressReceiver;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v4, onClickIntent:Landroid/content/Intent;
    const v9, 0x7f09034d

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, text:Ljava/lang/String;
    const v9, 0x7f090103

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, tickerText:Ljava/lang/String;
    const v2, 0x7f02017f

    .line 206
    .local v2, icon:I
    :goto_48
    const v9, 0x7f0f001b

    invoke-virtual {v1, v9, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 207
    const v9, 0x7f0f002f

    invoke-virtual {v1, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    const v9, 0x7f0f0004

    invoke-virtual {v1, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 209
    const v11, 0x7f0f00e2

    if-eqz p1, :cond_b1

    move v9, v10

    :goto_60
    invoke-virtual {v1, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    const/high16 v11, 0x1000

    invoke-static {v9, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 213
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, v2, v7, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 214
    .local v3, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    invoke-virtual {v3, v9, v8, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 215
    iput-object v7, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 216
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 217
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 218
    iput-wide v12, v3, Landroid/app/Notification;->when:J

    .line 219
    const/16 v9, 0x22

    iput v9, v3, Landroid/app/Notification;->flags:I

    .line 221
    return-object v3

    .line 180
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentView:Landroid/widget/RemoteViews;
    .end local v2           #icon:I
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #onClickIntent:Landroid/content/Intent;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #tickerText:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :cond_86
    const v9, 0x7f090105

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 195
    .restart local v1       #contentView:Landroid/widget/RemoteViews;
    .restart local v8       #title:Ljava/lang/String;
    :cond_8e
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.vlingo.client.samsung.safereader.NOTIFICATION_CLICKED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v4       #onClickIntent:Landroid/content/Intent;
    if-eqz p0, :cond_a5

    .line 197
    const v9, 0x7f09034e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6       #text:Ljava/lang/String;
    :goto_9e
    move-object v7, v8

    .line 203
    .restart local v7       #tickerText:Ljava/lang/String;
    if-eqz p0, :cond_ad

    const v2, 0x7f02017e

    .restart local v2       #icon:I
    :goto_a4
    goto :goto_48

    .line 200
    .end local v2           #icon:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #tickerText:Ljava/lang/String;
    :cond_a5
    const v9, 0x7f09034f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #text:Ljava/lang/String;
    goto :goto_9e

    .line 203
    .restart local v7       #tickerText:Ljava/lang/String;
    :cond_ad
    const v2, 0x7f02017d

    goto :goto_a4

    .line 209
    .restart local v2       #icon:I
    :cond_b1
    const/16 v9, 0x8

    goto :goto_60
.end method

.method public static hide()V
    .registers 0

    .prologue
    .line 161
    return-void
.end method

.method public static removeNotificationWithID(I)V
    .registers 1
    .parameter "id"

    .prologue
    .line 140
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 47
    return-void
.end method

.method public static show()V
    .registers 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->show(Z)V

    .line 144
    return-void
.end method

.method public static show(Z)V
    .registers 1
    .parameter "isSafeReaderPlaying"

    .prologue
    .line 153
    return-void
.end method
