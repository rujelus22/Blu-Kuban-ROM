.class public Lcom/swype/android/connect/util/ConnectNotification;
.super Ljava/lang/Object;
.source "ConnectNotification.java"


# static fields
.field private static final COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

.field private static final COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

.field private static notification_text_color:I


# instance fields
.field private contentTitle:Ljava/lang/CharSequence;

.field private contentView:Landroid/widget/RemoteViews;

.field private context:Landroid/content/Context;

.field private dynamicText:Ljava/lang/CharSequence;

.field private flags:I

.field private isShown:Z

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private notificationIcon:I

.field private notificationId:I

.field private notifyTimestamp:J

.field private replacementText1:Ljava/lang/String;

.field private replacementText2:Ljava/lang/String;

.field private replacementText3:Ljava/lang/String;

.field private tickerMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "COLOR_SEARCH_TEXT"

    sput-object v0, Lcom/swype/android/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    .line 19
    const-string v0, "COLOR_SEARCH_TITLE"

    sput-object v0, Lcom/swype/android/connect/util/ConnectNotification;->COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

    .line 20
    const/high16 v0, -0x8000

    sput v0, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x3491d0c

    iput v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->tickerMessage:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    .line 91
    iput v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    .line 99
    iget v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    invoke-virtual {p0, p1, v0}, Lcom/swype/android/connect/util/ConnectNotification;->initalize(Landroid/content/Context;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x3491d0c

    iput v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->tickerMessage:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    .line 91
    iput v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/swype/android/connect/util/ConnectNotification;->initalize(Landroid/content/Context;I)V

    .line 104
    return-void
.end method

.method public static getNotificationColor(Landroid/content/Context;)I
    .registers 8
    .parameter

    .prologue
    const v6, 0x106000c

    const/high16 v5, -0x8000

    .line 390
    sget v0, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    if-eq v0, v5, :cond_c

    .line 391
    sget v0, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    .line 408
    :goto_b
    return v0

    .line 395
    :cond_c
    :try_start_c
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/swype/android/connect/util/ConnectNotification;->COLOR_SEARCH_TITLE:Ljava/lang/CharSequence;

    sget-object v3, Lcom/swype/android/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 398
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 399
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 400
    invoke-static {p0}, Lcom/swype/android/connect/util/ConnectNotification;->traverseGroup(Landroid/view/ViewGroup;)Z

    .line 401
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_41

    .line 405
    :goto_38
    sget v0, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    if-ne v0, v5, :cond_3e

    .line 406
    sput v6, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    .line 408
    :cond_3e
    sget v0, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    goto :goto_b

    .line 403
    :catch_41
    move-exception v0

    sput v6, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    goto :goto_38
.end method

.method private static traverseGroup(Landroid/view/ViewGroup;)Z
    .registers 7
    .parameter "group"

    .prologue
    const/4 v5, 0x1

    .line 357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 358
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_4b

    .line 359
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_32

    .line 360
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 361
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, szText:Ljava/lang/String;
    sget-object v4, Lcom/swype/android/connect/util/ConnectNotification;->COLOR_SEARCH_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 363
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    sput v4, Lcom/swype/android/connect/util/ConnectNotification;->notification_text_color:I

    move v4, v5

    .line 372
    .end local v2           #szText:Ljava/lang/String;
    .end local v3           #text:Landroid/widget/TextView;
    :goto_31
    return v4

    .line 366
    :cond_32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_48

    .line 367
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/swype/android/connect/util/ConnectNotification;->traverseGroup(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_48

    move v4, v5

    .line 368
    goto :goto_31

    .line 358
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 372
    :cond_4b
    const/4 v4, 0x0

    goto :goto_31
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_12

    .line 330
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    .line 333
    :cond_12
    return-void
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    .line 340
    return-void
.end method

.method public createIntent(Ljava/lang/String;)V
    .registers 5
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    .line 159
    return-void
.end method

.method protected getText()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 261
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    .line 263
    .local v1, returnText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_22

    .line 265
    :try_start_6
    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText3:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/util/IllegalFormatException; {:try_start_6 .. :try_end_21} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_21} :catch_42

    move-result-object v1

    .line 277
    :cond_22
    :goto_22
    return-object v1

    .line 266
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 268
    .local v0, ex:Ljava/util/IllegalFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formatting of text for notification failed with IllegalFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    .line 274
    goto :goto_22

    .line 271
    .end local v0           #ex:Ljava/util/IllegalFormatException;
    :catch_42
    move-exception v2

    move-object v0, v2

    .line 272
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formatting of text for notification failed with NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_22
.end method

.method protected initalize(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    .line 114
    iput p2, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    .line 115
    const v0, 0x7f020019

    iput v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationIcon:I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->notifyTimestamp:J

    .line 117
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 118
    return-void
.end method

.method public setContentView(Landroid/widget/RemoteViews;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentView:Landroid/widget/RemoteViews;

    .line 252
    return-void
.end method

.method public setFlagAutoCancel()V
    .registers 3

    .prologue
    .line 177
    iget v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    .line 179
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_10

    .line 180
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 182
    :cond_10
    return-void
.end method

.method public setFlagOngoing()V
    .registers 3

    .prologue
    .line 165
    iget v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    .line 167
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 170
    :cond_10
    return-void
.end method

.method public setIcon(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 125
    iput p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationIcon:I

    .line 126
    return-void
.end method

.method public setIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    .line 150
    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;)V
    .registers 2
    .parameter "text1"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setRepeatingVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "text1"
    .parameter "text2"
    .parameter "text3"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText1:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText2:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/swype/android/connect/util/ConnectNotification;->replacementText3:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setText(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    .line 208
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    .line 198
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->dynamicText:Ljava/lang/CharSequence;

    .line 190
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    .line 142
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 285
    .local v0, contentText:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    iget v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationIcon:I

    iget-object v3, p0, Lcom/swype/android/connect/util/ConnectNotification;->tickerMessage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/swype/android/connect/util/ConnectNotification;->notifyTimestamp:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    .line 288
    iget v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_20

    .line 289
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->flags:I

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 292
    :cond_20
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3a

    .line 293
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 294
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 298
    :goto_30
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    iget-object v3, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 299
    return-void

    .line 296
    :cond_3a
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/swype/android/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_30
.end method

.method public showAndCleanup()V
    .registers 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->show()V

    .line 347
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->cleanup()V

    .line 348
    return-void
.end method

.method public update()V
    .registers 6

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    .local v0, contentText:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_24

    .line 320
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/swype/android/connect/util/ConnectNotification;->contentTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/swype/android/connect/util/ConnectNotification;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    iget-object v1, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/swype/android/connect/util/ConnectNotification;->notificationId:I

    iget-object v3, p0, Lcom/swype/android/connect/util/ConnectNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 323
    :cond_24
    return-void
.end method

.method public updateOrShow()V
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/swype/android/connect/util/ConnectNotification;->isShown:Z

    if-nez v0, :cond_8

    .line 307
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->show()V

    .line 311
    :goto_7
    return-void

    .line 309
    :cond_8
    invoke-virtual {p0}, Lcom/swype/android/connect/util/ConnectNotification;->update()V

    goto :goto_7
.end method
