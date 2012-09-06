.class public final Lcom/google/android/youtube/core/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private activityUri:Landroid/net/Uri;

.field private age:I

.field private alternateUri:Landroid/net/Uri;

.field private channelViewsCount:J

.field private displayUsername:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private favoritesCount:I

.field private favoritesUri:Landroid/net/Uri;

.field private isLightweight:Z

.field private playlistsUri:Landroid/net/Uri;

.field private selfUri:Landroid/net/Uri;

.field private subscribersCount:I

.field private subscriptionsCount:I

.field private subscriptionsUri:Landroid/net/Uri;

.field private summary:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private uploadViewsCount:J

.field private uploadedCount:I

.field private uploadsUri:Landroid/net/Uri;

.field private uri:Landroid/net/Uri;

.field private username:Ljava/lang/String;

.field private watchHistoryUri:Landroid/net/Uri;

.field private watchLaterUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    .line 370
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    .line 371
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    .line 372
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 376
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 378
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    .line 380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 381
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    .line 382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    .line 384
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    .line 387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    .line 388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    .line 389
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 391
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 392
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 349
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 352
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 354
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 356
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 363
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 365
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 366
    return-void
.end method


# virtual methods
.method public final activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    .line 293
    return-object p0
.end method

.method public final age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 227
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 228
    return-object p0
.end method

.method public final alternateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    .line 208
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/UserProfile;
    .registers 29

    .prologue
    .line 312
    new-instance v2, Lcom/google/android/youtube/core/model/UserProfile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    move/from16 v27, v0

    invoke-direct/range {v2 .. v27}, Lcom/google/android/youtube/core/model/UserProfile;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JJI)V

    return-object v2
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public final channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter

    .prologue
    .line 297
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 298
    return-object p0
.end method

.method public final displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public final email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public final favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 262
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 263
    return-object p0
.end method

.method public final favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri:Landroid/net/Uri;

    .line 258
    return-object p0
.end method

.method public final isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 243
    return-object p0
.end method

.method public final playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri:Landroid/net/Uri;

    .line 288
    return-object p0
.end method

.method public final selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri:Landroid/net/Uri;

    .line 198
    return-object p0
.end method

.method public final subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 307
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 308
    return-object p0
.end method

.method public final subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 272
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 273
    return-object p0
.end method

.method public final subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri:Landroid/net/Uri;

    .line 268
    return-object p0
.end method

.method public final summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public final thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 238
    return-object p0
.end method

.method public final uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 303
    return-object p0
.end method

.method public final uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 252
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 253
    return-object p0
.end method

.method public final uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri:Landroid/net/Uri;

    .line 248
    return-object p0
.end method

.method public final uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri:Landroid/net/Uri;

    .line 203
    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public final watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri:Landroid/net/Uri;

    .line 278
    return-object p0
.end method

.method public final watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri:Landroid/net/Uri;

    .line 283
    return-object p0
.end method
