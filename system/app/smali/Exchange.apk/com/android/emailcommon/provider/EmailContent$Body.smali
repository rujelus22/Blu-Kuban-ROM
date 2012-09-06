.class public final Lcom/android/emailcommon/provider/EmailContent$Body;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$BodyColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# static fields
.field public static final COMMON_PROJECTION_HTML:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_INTRO:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_TEXT:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROJECTION_SOURCE_KEY:[Ljava/lang/String;


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mHtmlReply:Ljava/lang/String;

.field public mIntroText:Ljava/lang/String;

.field public mMessageKey:J

.field public mSourceKey:J

.field public mTextContent:Ljava/lang/String;

.field public mTextReply:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 263
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "messageKey"

    aput-object v1, v0, v4

    const-string v1, "htmlContent"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "htmlReply"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "textReply"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "introText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 269
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "textContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    .line 272
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "htmlContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    .line 275
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "textReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    .line 278
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "htmlReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    .line 281
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "introText"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    .line 284
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

    .line 289
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 307
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 308
    return-void
.end method

.method public static restoreBodySourceKey(Landroid/content/Context;J)J
    .registers 12
    .parameter "context"
    .parameter "messageId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 388
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;
    .registers 2
    .parameter

    .prologue
    .line 332
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 333
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_17

    .line 338
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_11
    return-object v0

    .line 335
    :cond_12
    const/4 v0, 0x0

    .line 338
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :catchall_17
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    .registers 11
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_21

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 355
    :cond_21
    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 432
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 433
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 434
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 435
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 436
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 437
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 438
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 439
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 312
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    const-string v1, "htmlContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "textContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "htmlReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "textReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v1, "introText"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v0
.end method
