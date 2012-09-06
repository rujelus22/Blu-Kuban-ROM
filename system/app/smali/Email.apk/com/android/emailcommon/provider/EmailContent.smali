.class public abstract Lcom/android/emailcommon/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;,
        Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;,
        Lcom/android/emailcommon/provider/EmailContent$QuickResponseColumns;,
        Lcom/android/emailcommon/provider/EmailContent$AccountColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Attachment;,
        Lcom/android/emailcommon/provider/EmailContent$AttachmentColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Message;,
        Lcom/android/emailcommon/provider/EmailContent$MessageColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Body;,
        Lcom/android/emailcommon/provider/EmailContent$BodyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$SyncColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_NOTIFIER_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT_COLUMNS:[Ljava/lang/String;

.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.android.email.notifier"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 219
    return-void
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p0, p1, v0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 199
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;J)I
    .registers 7
    .parameter "context"
    .parameter "baseUri"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    .registers 6
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 152
    .local v0, content:Lcom/android/emailcommon/provider/EmailContent;,"TT;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 153
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent;->restore(Landroid/database/Cursor;)V
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_17

    .line 160
    .end local v0           #content:Lcom/android/emailcommon/provider/EmailContent;,"TT;"
    :goto_10
    return-object v0

    .line 155
    :catch_11
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 160
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :goto_15
    const/4 v0, 0x0

    goto :goto_10

    .line 157
    :catch_17
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_15
.end method

.method public static restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;
    .registers 13
    .parameter "context"
    .parameter
    .parameter "contentUri"
    .parameter "contentProjection"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 133
    invoke-static {p2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_18

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 137
    :cond_18
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 138
    invoke-static {v6, p1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    move-result-object v3

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_25
    return-object v3

    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    .registers 8
    .parameter "context"
    .parameter "baseUri"
    .parameter "id"
    .parameter "contentValues"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .parameter "uri"
    .parameter "limit"

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_e

    .line 112
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 114
    :cond_e
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSaved()Z
    .registers 5

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public abstract restore(Landroid/database/Cursor;)V
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 165
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 167
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    .local v0, res:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 169
    return-object v0
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .registers 6
    .parameter "context"
    .parameter "contentValues"

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-nez v0, :cond_d

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 176
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
