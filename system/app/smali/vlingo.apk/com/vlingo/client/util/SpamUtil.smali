.class public Lcom/vlingo/client/util/SpamUtil;
.super Ljava/lang/Object;
.source "SpamUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/util/SpamUtil$1;,
        Lcom/vlingo/client/util/SpamUtil$JKModel;
    }
.end annotation


# static fields
.field private static final COLUMN_NAME:Ljava/lang/String; = "columnName"

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final CONTENT_URIS:[Ljava/lang/String; = null

.field private static final FILTER_NAMES:[Ljava/lang/String; = null

.field public static final MDN_FILTER:Ljava/lang/String; = "MDN"

.field public static final TEXT_FILTER:Ljava/lang/String; = "TEXT"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content://com.sec.mms.provider/spam_number/"

    aput-object v1, v0, v3

    const-string v1, "content://com.sec.mms.provider/spam_number_and_text/"

    aput-object v1, v0, v4

    const-string v1, "content://sec.message.extra/"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "content://sms/spam/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/util/SpamUtil;->CONTENT_URIS:[Ljava/lang/String;

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "FilterType"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/util/SpamUtil;->FILTER_NAMES:[Ljava/lang/String;

    .line 30
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Filter"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/util/SpamUtil;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static getCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "context"
    .parameter "model"
    .parameter "filterType"

    .prologue
    .line 94
    const/4 v8, 0x0

    .line 95
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 99
    .local v7, contentUri:Ljava/lang/String;
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->FILTER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v12, v1, v2

    .line 100
    .local v12, type:Ljava/lang/String;
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v11, v1, v2

    .line 101
    .local v11, text:Ljava/lang/String;
    const/4 v13, 0x0

    .line 102
    .local v13, typeSpamMdn:I
    const/4 v14, 0x1

    .line 105
    .local v14, typeSpamText:I
    if-eqz p1, :cond_7c

    .line 108
    :try_start_10
    const-string v1, "-"

    const-string v2, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/util/SpamUtil$JKModel;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/util/SpamUtil$JKModel;

    move-result-object v10

    .line 110
    .local v10, jkModel:Lcom/vlingo/client/util/SpamUtil$JKModel;
    sget-object v1, Lcom/vlingo/client/util/SpamUtil$1;->$SwitchMap$com$vlingo$client$util$SpamUtil$JKModel:[I

    invoke-virtual {v10}, Lcom/vlingo/client/util/SpamUtil$JKModel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_be

    .line 134
    :goto_29
    if-eqz v7, :cond_7c

    .line 138
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v3, v1

    .line 139
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 141
    .local v5, selectionArg:[Ljava/lang/String;
    const-string v1, "MDN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 142
    const/4 v1, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 145
    :cond_58
    :goto_58
    const/4 v1, 0x0

    aget-object v1, v5, v1

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "columnName"

    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArg:[Ljava/lang/String;
    .end local v10           #jkModel:Lcom/vlingo/client/util/SpamUtil$JKModel;
    :cond_7c
    :goto_7c
    return-object v8

    .line 112
    .restart local v10       #jkModel:Lcom/vlingo/client/util/SpamUtil$JKModel;
    :pswitch_7d
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->CONTENT_URIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v7, v1, v2

    .line 113
    goto :goto_29

    .line 115
    :pswitch_83
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->CONTENT_URIS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v7, v1, v2

    .line 116
    goto :goto_29

    .line 121
    :pswitch_89
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->CONTENT_URIS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v7, v1, v2

    .line 122
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->FILTER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v12, v1, v2

    .line 123
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v11, v1, v2

    .line 124
    goto :goto_29

    .line 128
    :pswitch_99
    sget-object v1, Lcom/vlingo/client/util/SpamUtil;->CONTENT_URIS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v7, v1, v2

    .line 129
    const/4 v13, 0x1

    .line 130
    const/4 v14, 0x0

    goto :goto_29

    .line 143
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArg:[Ljava/lang/String;
    :cond_a1
    const-string v1, "TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 144
    const/4 v1, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_b2} :catch_b3

    goto :goto_58

    .line 155
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArg:[Ljava/lang/String;
    .end local v10           #jkModel:Lcom/vlingo/client/util/SpamUtil$JKModel;
    :catch_b3
    move-exception v9

    .line 156
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 110
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_83
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_99
        :pswitch_99
        :pswitch_99
    .end packed-switch
.end method

.method public static isSpamMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "model"
    .parameter "filterType"
    .parameter "incomingText"

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, isSpamMessage:Z
    const/4 v0, 0x0

    .line 60
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/vlingo/client/util/SpamUtil;->getCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_36

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "columnName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, filter:Ljava/lang/String;
    const-string v4, "MDN"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_50

    move-result v4

    if-eqz v4, :cond_3c

    .line 71
    const/4 v3, 0x1

    .line 86
    .end local v2           #filter:Ljava/lang/String;
    :cond_36
    :goto_36
    if-eqz v0, :cond_3b

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_3b
    :goto_3b
    return v3

    .line 73
    .restart local v2       #filter:Ljava/lang/String;
    :cond_3c
    :try_start_3c
    const-string v4, "TEXT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_36

    .line 62
    :cond_4c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_50

    goto :goto_f

    .line 83
    .end local v2           #filter:Ljava/lang/String;
    :catch_50
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    :try_start_51
    const-string v4, "VLG_EXCEPTION"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_60

    .line 86
    if-eqz v0, :cond_3b

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_60
    move-exception v4

    if-eqz v0, :cond_66

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v4
.end method
