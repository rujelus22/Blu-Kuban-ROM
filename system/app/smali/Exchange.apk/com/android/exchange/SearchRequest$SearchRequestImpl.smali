.class Lcom/android/exchange/SearchRequest$SearchRequestImpl;
.super Lcom/android/exchange/SearchRequest;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequestImpl"
.end annotation


# instance fields
.field private mAccountId:J

.field private mConversationId:Ljava/lang/String;

.field private mOptionsBodyPreferenceTruncationSize:I

.field private mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field private mOptionsDeepTraversal:Z

.field private mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field private mOptionsRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsRebuildResults:Z

.field private mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

.field private mQueryCollectionIds:[J

.field private mQueryFreeText:Ljava/lang/String;

.field private mQueryGreaterThan:Ljava/util/Date;

.field private mQueryLessThan:Ljava/util/Date;

.field private mQueryText:Ljava/lang/String;

.field private mStoreName:Lcom/android/exchange/SearchRequest$StoreName;


# direct methods
.method public constructor <init>(JLcom/android/exchange/SearchRequest$StoreName;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/SearchRequest$QueryClass;[JLjava/util/Date;Ljava/util/Date;Landroid/util/Pair;ZZLcom/android/exchange/SearchRequest$BodyPreferenceType;ILcom/android/exchange/SearchRequest$OptionsMIMESupport;Ljava/lang/String;)V
    .registers 19
    .parameter "accountId"
    .parameter "storeName"
    .parameter "queryText"
    .parameter "queryFreeText"
    .parameter "queryClass"
    .parameter "queryCollectionIds"
    .parameter "queryGreaterThan"
    .parameter "queryLessThan"
    .parameter
    .parameter "optionsDeepTraversal"
    .parameter "optionsRebuildResults"
    .parameter "optionsBodyPreferenceType"
    .parameter "optionsBodyPreferenceTruncationSize"
    .parameter "optionsMIMESupport"
    .parameter "convId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/exchange/SearchRequest$StoreName;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/exchange/SearchRequest$QueryClass;",
            "[J",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Lcom/android/exchange/SearchRequest$BodyPreferenceType;",
            "I",
            "Lcom/android/exchange/SearchRequest$OptionsMIMESupport;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p10, optionsRange:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/SearchRequest;-><init>(Lcom/android/exchange/SearchRequest$1;)V

    .line 253
    iput-wide p1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    .line 255
    iput-object p3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 257
    iput-object p4, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    .line 259
    iput-object p5, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    .line 261
    iput-object p6, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 263
    iput-object p7, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    .line 265
    iput-object p8, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    .line 267
    iput-object p9, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    .line 269
    iput-object p10, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    .line 271
    iput-boolean p11, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    .line 273
    iput-boolean p12, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    .line 275
    iput-object p13, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 277
    move/from16 v0, p14

    iput v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    .line 279
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 283
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    .line 287
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 497
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/exchange/SearchRequest;-><init>(Lcom/android/exchange/SearchRequest$1;)V

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    .line 501
    invoke-static {}, Lcom/android/exchange/SearchRequest$StoreName;->values()[Lcom/android/exchange/SearchRequest$StoreName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    .line 507
    invoke-static {}, Lcom/android/exchange/SearchRequest$QueryClass;->values()[Lcom/android/exchange/SearchRequest$QueryClass;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    .local v0, collectionIdsSize:I
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    .line 513
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 515
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 517
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 519
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    .line 521
    new-array v1, v7, [Z

    .line 523
    .local v1, deepTraversalVal:[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 525
    aget-boolean v3, v1, v6

    iput-boolean v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    .line 527
    new-array v2, v7, [Z

    .line 529
    .local v2, rebuildResultsVal:[Z
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 531
    aget-boolean v3, v2, v6

    iput-boolean v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    .line 533
    invoke-static {}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->values()[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    .line 537
    invoke-static {}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->values()[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    .line 545
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/exchange/SearchRequest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/exchange/SearchRequest$SearchRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;
    .registers 3

    .prologue
    .line 471
    iget v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 473
    const/4 v0, 0x0

    .line 477
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getOptionsBodyPreferenceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 441
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 461
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 445
    :pswitch_f
    const-string v0, "1"

    goto :goto_e

    .line 449
    :pswitch_12
    const-string v0, "2"

    goto :goto_e

    .line 453
    :pswitch_15
    const-string v0, "3"

    goto :goto_e

    .line 457
    :pswitch_18
    const-string v0, "4"

    goto :goto_e

    .line 441
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public getOptionsDeepTraversal()Z
    .registers 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    return v0
.end method

.method public getOptionsOptionsMIMESupport()Ljava/lang/String;
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 487
    const/4 v0, 0x0

    .line 491
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getOptionsRange()Ljava/lang/String;
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    if-nez v0, :cond_6

    .line 413
    const/4 v0, 0x0

    .line 417
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getOptionsRebuildResults()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    return v0
.end method

.method public getQueryClass()Ljava/lang/String;
    .registers 3

    .prologue
    .line 349
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 357
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 353
    :pswitch_f
    const-string v0, "Email"

    goto :goto_e

    .line 349
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public getQueryCollectionIds()[J
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    return-object v0
.end method

.method public getQueryConvIdText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryFreeText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryGreaterThan()Ljava/lang/String;
    .registers 4

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    if-nez v1, :cond_6

    .line 377
    const/4 v1, 0x0

    .line 385
    :goto_5
    return-object v1

    .line 381
    :cond_6
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 383
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 385
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public getQueryLessThan()Ljava/lang/String;
    .registers 4

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    if-nez v1, :cond_6

    .line 395
    const/4 v1, 0x0

    .line 403
    :goto_5
    return-object v1

    .line 399
    :cond_6
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 401
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 403
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public getQueryText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 301
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 309
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 305
    :pswitch_f
    const-string v0, "Mailbox"

    goto :goto_e

    .line 301
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 559
    iget-wide v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 561
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 573
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 575
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 577
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 587
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 593
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    return-void
.end method
