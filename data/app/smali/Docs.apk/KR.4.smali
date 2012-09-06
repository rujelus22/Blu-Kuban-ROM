.class public LKR;
.super Ljava/lang/Object;
.source "DocsNotificationManager.java"


# instance fields
.field a:LLh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LPj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LeO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, LKR;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lde;->a(Ljava/lang/String;J)J
    :try_end_9
    .catch Ldh; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide p3

    .line 81
    :goto_a
    return-wide p3

    .line 80
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, LKR;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 233
    const/high16 v2, 0x800

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 235
    new-instance v2, Landroid/app/Notification;

    sget v3, LcR;->notification_icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 237
    invoke-virtual {v2, v0, p3, p4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 239
    const/16 v0, 0x18

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 240
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 241
    const/16 v0, 0xff

    iput v0, v2, Landroid/app/Notification;->ledARGB:I

    .line 242
    const/16 v0, 0x3e8

    iput v0, v2, Landroid/app/Notification;->ledOffMS:I

    .line 243
    const/16 v0, 0x1f4

    iput v0, v2, Landroid/app/Notification;->ledOnMS:I

    .line 244
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 246
    iget-object v0, p0, LKR;->a:LLh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2}, LLh;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 248
    return-void
.end method

.method private a(Ljava/lang/String;ILkR;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    if-nez p3, :cond_7

    if-eq p2, v2, :cond_63

    :cond_7
    move v0, v2

    :goto_8
    const-string v3, "If singleDoc is provided, count must be one"

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 181
    iget-object v0, p0, LKR;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 183
    const-string v3, "DocsNotificationManager"

    const-string v4, "At notifyUser, got isEnabled=%s driveEnabled=%s prefs=%s count=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, LKR;->a:LeZ;

    sget-object v7, LeV;->h:LeV;

    invoke-interface {v6, v7}, LeZ;->a(LeV;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, LKR;->a:LeO;

    invoke-interface {v6, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, LKR;->a:LZJ;

    invoke-interface {v6}, LZJ;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, LKR;->a:LeZ;

    sget-object v4, LeV;->h:LeV;

    invoke-interface {v3, v4}, LeZ;->a(LeV;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, LKR;->a:LeO;

    invoke-interface {v3, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 226
    :cond_62
    :goto_62
    return v1

    :cond_63
    move v0, v1

    .line 178
    goto :goto_8

    .line 194
    :cond_65
    iget-object v3, p0, LKR;->a:LZJ;

    invoke-interface {v3}, LZJ;->a()Z

    move-result v3

    if-eqz v3, :cond_62

    if-lez p2, :cond_62

    .line 203
    if-eqz p3, :cond_ae

    .line 205
    iget-object v1, p0, LKR;->a:LPj;

    invoke-virtual {p3}, LkR;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ldx;->a:Ldx;

    invoke-interface {v1, v3, v4}, LPj;->a(Ljava/lang/String;Ldx;)LPh;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_a9

    .line 208
    invoke-interface {v1}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_83
    invoke-virtual {p3}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    .line 218
    :goto_87
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    sget-object v0, Lcom/google/android/apps/docs/providers/DocListProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    const-string v0, "accountName"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-direct {p0, p1, v4, v3, v1}, LKR;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 226
    goto :goto_62

    .line 210
    :cond_a9
    invoke-virtual {p3}, LkR;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 214
    :cond_ae
    sget v3, LcY;->sync_new_docs:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    const-string v4, "%s (%d)"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_87
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    :try_start_2
    iget-object v2, p0, LKR;->a:Ldg;

    invoke-interface {v2, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v2

    .line 89
    if-nez p3, :cond_13

    .line 90
    invoke-interface {v2, p2}, Lde;->a(Ljava/lang/String;)V

    .line 94
    :goto_d
    iget-object v3, p0, LKR;->a:Ldg;

    invoke-interface {v3, v2}, Ldg;->a(Lde;)V

    .line 100
    :goto_12
    return v0

    .line 92
    :cond_13
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, p2, v3, v4}, Lde;->a(Ljava/lang/String;J)V
    :try_end_1a
    .catch Ldh; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_d

    .line 95
    :catch_1b
    move-exception v2

    .line 96
    const-string v2, "DocsNotificationManager"

    const-string v3, "Couldn\'t commit prefs value: `%s` => %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 97
    goto :goto_12
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, LKR;->a:LLh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, LLh;->a(Ljava/lang/String;I)V

    .line 258
    const-string v0, "DocsNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared sync result for account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 15
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    const-string v0, "last-notified"

    invoke-direct {p0, p1, v0, v3, v4}, LKR;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 114
    cmp-long v0, v5, v3

    if-gtz v0, :cond_105

    move v0, v1

    .line 116
    :goto_10
    iget-object v3, p0, LKR;->a:Llu;

    invoke-interface {v3, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v7

    .line 117
    sget-object v3, Lnk;->r:Lnk;

    invoke-virtual {v3, v7}, Lnk;->a(LkG;)LnL;

    move-result-object v3

    .line 120
    new-instance v4, LnL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, LMk;->i:LMk;

    invoke-virtual {v9}, LMk;->a()LLV;

    move-result-object v9

    invoke-virtual {v9}, LLV;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v8, LnO;->a:LnO;

    new-array v9, v1, [LnL;

    aput-object v4, v9, v2

    invoke-virtual {v8, v3, v9}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, LMk;->i:LMk;

    invoke-virtual {v8}, LMk;->a()LLV;

    move-result-object v8

    invoke-virtual {v8}, LLV;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " DESC"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v8, p0, LKR;->a:Llu;

    invoke-interface {v8, v3, v4}, Llu;->b(LnL;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    const/4 v4, 0x0

    .line 130
    :try_start_70
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_108

    .line 134
    sget-object v9, LMk;->i:LMk;

    invoke-virtual {v9}, LMk;->a()LLV;

    move-result-object v9

    invoke-virtual {v9}, LLV;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 138
    if-ne v3, v1, :cond_11c

    .line 139
    sget-object v4, LMk;->n:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    iget-object v4, p0, LKR;->a:Llu;

    invoke-interface {v4, v7, v9}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v4

    .line 142
    if-nez v4, :cond_c5

    .line 143
    const-string v3, "DocsNotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Document could not be found (for notification): "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_70 .. :try_end_c4} :catchall_112

    move v3, v2

    :cond_c5
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    .line 152
    :goto_c8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 155
    const-string v7, "DocsNotificationManager"

    const-string v8, "Notification check done: doneUntil=%d count=%d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v7, "last-notified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, p1, v7, v5}, LKR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 158
    if-eqz v0, :cond_117

    .line 160
    const-string v0, "DocsNotificationManager"

    const-string v3, "Got sync hint (account=%s) with count (%d) but is first run, ignoring"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_104
    return v2

    :cond_105
    move v0, v2

    .line 114
    goto/16 :goto_10

    .line 147
    :cond_108
    if-lez v3, :cond_11c

    .line 148
    :try_start_10a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getCount() returned non-zero, yet we could not retrieve rows from the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_112

    .line 152
    :catchall_112
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 165
    :cond_117
    invoke-direct {p0, p1, v4, v3}, LKR;->a(Ljava/lang/String;ILkR;)Z

    move-result v2

    goto :goto_104

    :cond_11c
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto :goto_c8
.end method
