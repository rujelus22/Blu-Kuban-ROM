.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# static fields
.field public static final WAITING_FOR_DIRECTORY_SEARCH:Lcom/android/ex/chips/RecipientEntry;


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/ex/chips/RecipientEntry;-><init>(I)V

    sput-object v0, Lcom/android/ex/chips/RecipientEntry;->WAITING_FOR_DIRECTORY_SEARCH:Lcom/android/ex/chips/RecipientEntry;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 6
    .parameter "entryType"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 78
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 81
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 82
    iput-wide v2, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 83
    iput-wide v2, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 84
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 85
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 87
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V
    .registers 13
    .parameter "entryType"
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "photoThumbnailUri"
    .parameter "isFirstLevel"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 94
    iput-boolean p11, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 95
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 97
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 98
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 99
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 100
    iput-wide p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 101
    iput-object p10, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 104
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .registers 13
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 120
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .registers 14
    .parameter "display"
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x0

    .line 131
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .registers 21
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 159
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    if-eqz p8, :cond_16

    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_9
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_16
    const/4 v10, 0x0

    goto :goto_9
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .registers 21
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 149
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    if-eqz p8, :cond_16

    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_9
    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_16
    const/4 v10, 0x0

    goto :goto_9
.end method

.method public static isCreatedRecipient(J)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getContactId()J
    .registers 3

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .registers 3

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .registers 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .registers 3
    .parameter "photoBytes"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
