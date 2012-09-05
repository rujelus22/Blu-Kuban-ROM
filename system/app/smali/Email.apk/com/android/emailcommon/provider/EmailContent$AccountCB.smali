.class public final Lcom/android/emailcommon/provider/EmailContent$AccountCB;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountCBColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountCB"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static CONTENT_PROJECTION_PROTOCOL:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mAccountKey:J

.field public mAttachmentEnabled:I

.field public mDays:Ljava/lang/String;

.field public mOffPeakTime:I

.field public mPeakEndTime:Ljava/lang/String;

.field public mPeakStartTime:Ljava/lang/String;

.field public mPeakTime:I

.field public mSevenAccountKey:J

.field public mSizeLimit:J

.field public mTimeLimit:J

.field public mTypeMsg:I

.field public mWhileroaming:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    .line 8945
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "sevenAccountKey"

    aput-object v1, v0, v5

    const-string v1, "typeMsg"

    aput-object v1, v0, v6

    const-string v1, "timeLimit"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sizeLimit"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "peakTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "offPeakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "days"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "peakStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "peakEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "whileRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "attachmentEnabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 8954
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "sevenAccountKey"

    aput-object v1, v0, v5

    const-string v1, "typeMsg"

    aput-object v1, v0, v6

    const-string v1, "timeLimit"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sizeLimit"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recvProtocol"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sendProtocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_PROJECTION_PROTOCOL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8969
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 8970
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 8971
    return-void
.end method

.method public static getAccountKey(Landroid/content/Context;J)J
    .registers 13
    .parameter "context"
    .parameter "sevenAccountKey"

    .prologue
    .line 9087
    const/4 v6, 0x0

    .line 9090
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "accountKey"

    aput-object v4, v2, v3

    const-string v3, "sevenAccountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9096
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 9097
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_54

    move-result-wide v0

    .line 9102
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_45

    .line 9103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9105
    :cond_45
    :goto_45
    return-wide v0

    .line 9102
    :cond_46
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_51

    .line 9103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9105
    :cond_51
    :goto_51
    const-wide/16 v0, -0x1

    goto :goto_45

    .line 9099
    :catch_54
    move-exception v7

    .line 9100
    .local v7, e:Ljava/lang/Exception;
    :try_start_55
    const-string v0, "EmailContent >>"

    const-string v1, "Exception in getAccountKey"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_68

    .line 9102
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_51

    .line 9103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_51

    .line 9102
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_68
    move-exception v0

    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_74

    .line 9103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 9186
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 8993
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 8994
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 8995
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAccountKey:J

    .line 8996
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSevenAccountKey:J

    .line 8997
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTypeMsg:I

    .line 8998
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTimeLimit:J

    .line 8999
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSizeLimit:J

    .line 9006
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakTime:I

    .line 9007
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mOffPeakTime:I

    .line 9008
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mDays:Ljava/lang/String;

    .line 9009
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakStartTime:Ljava/lang/String;

    .line 9010
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakEndTime:Ljava/lang/String;

    .line 9011
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mWhileroaming:I

    .line 9012
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAttachmentEnabled:I

    .line 9014
    return-void
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 9149
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9152
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 9110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9111
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9112
    const-string v1, "sevenAccountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSevenAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9113
    const-string v1, "timeLimit"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTimeLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9114
    const-string v1, "sizeLimit"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSizeLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9115
    const-string v1, "typeMsg"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTypeMsg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9118
    const-string v1, "peakTime"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9119
    const-string v1, "offPeakTime"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mOffPeakTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9120
    const-string v1, "days"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mDays:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9121
    const-string v1, "peakStartTime"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9122
    const-string v1, "peakEndTime"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9123
    const-string v1, "whileRoaming"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mWhileroaming:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9124
    const-string v1, "attachmentEnabled"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAttachmentEnabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9126
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9181
    const-string v0, ""

    return-object v0
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .registers 11
    .parameter "context"
    .parameter "cv"

    .prologue
    .line 9135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 9191
    return-void
.end method
