.class public final Lcom/android/emailcommon/provider/QuickResponse;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "QuickResponse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$QuickResponseColumns;


# static fields
.field public static final ACCOUNT_ID_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/QuickResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountKey:J

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/quickresponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/quickresponse/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/QuickResponse;->ACCOUNT_ID_URI:Landroid/net/Uri;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quickResponse"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/android/emailcommon/provider/QuickResponse$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/QuickResponse$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 5
    .parameter "accountKey"
    .parameter "quickResponse"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 78
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mBaseUri:Landroid/net/Uri;

    .line 79
    iput-wide p1, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    .line 80
    iput-object p3, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 68
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mBaseUri:Landroid/net/Uri;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/provider/QuickResponse$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/emailcommon/provider/QuickResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static restoreQuickResponsesWithAccountId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/QuickResponse;
    .registers 14
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 133
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->ACCOUNT_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, c:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 139
    .local v7, count:I
    new-array v10, v7, [Lcom/android/emailcommon/provider/QuickResponse;

    .line 140
    .local v10, quickResponses:[Lcom/android/emailcommon/provider/QuickResponse;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1a
    if-ge v8, v7, :cond_2c

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    new-instance v9, Lcom/android/emailcommon/provider/QuickResponse;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/QuickResponse;-><init>()V

    .line 143
    .local v9, quickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    invoke-virtual {v9, v6}, Lcom/android/emailcommon/provider/QuickResponse;->restore(Landroid/database/Cursor;)V

    .line 144
    aput-object v9, v10, v8
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_30

    .line 140
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 148
    .end local v9           #quickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v10

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v10           #quickResponses:[Lcom/android/emailcommon/provider/QuickResponse;
    :catchall_30
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "objectThat"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-ne p0, p1, :cond_5

    .line 172
    :cond_4
    :goto_4
    return v1

    .line 169
    :cond_5
    instance-of v3, p1, Lcom/android/emailcommon/provider/QuickResponse;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 171
    check-cast v0, Lcom/android/emailcommon/provider/QuickResponse;

    .line 172
    .local v0, that:Lcom/android/emailcommon/provider/QuickResponse;
    iget-object v3, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-wide v3, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    iget-wide v5, v0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget-wide v3, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    iget-wide v5, v0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public getBaseUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 88
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mBaseUri:Landroid/net/Uri;

    .line 89
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    .line 90
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    .line 92
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "quickResponse"

    iget-object v2, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-object v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lcom/android/emailcommon/provider/QuickResponse;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    return-void
.end method
