.class Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "IRMSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/irm/IRMSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRMSettingsParser"
.end annotation


# instance fields
.field mStatus:I

.field mTemplate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/irm/IRMSettingsAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    .line 225
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 229
    return-void
.end method

.method private checkIRMSettingStatus(I)Z
    .registers 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 487
    const/16 v1, 0xa8

    if-ne p1, v1, :cond_d

    .line 489
    const-string v1, "IRMSettingsParser"

    const-string v2, "IRM feature is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_c
    return v0

    .line 495
    :cond_d
    const/16 v1, 0xa9

    if-ne p1, v1, :cond_19

    .line 497
    const-string v1, "IRMSettingsParser"

    const-string v2, "IRM encountered an error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 501
    :cond_19
    const/16 v1, 0xaa

    if-ne p1, v1, :cond_25

    .line 503
    const-string v1, "IRMSettingsParser"

    const-string v2, "IRM encountered permanent error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 511
    :cond_25
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private getArrayListOfTemplates()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    return-object v0
.end method

.method private parseIRMStatus()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    :cond_0
    :goto_0
    const/16 v0, 0x4ab

    invoke-virtual {p0, v0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 403
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_23

    .line 405
    iget-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/irm/IRMSettingsAdapter;->mIrmStatus:I

    .line 407
    iget-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget v0, v0, Lcom/android/exchange/irm/IRMSettingsAdapter;->mIrmStatus:I

    invoke-direct {p0, v0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->checkIRMSettingStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 419
    :goto_22
    return v0

    .line 411
    :cond_23
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x606

    if-ne v0, v1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->parseTemplates()V

    goto :goto_0

    .line 419
    :cond_2d
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private parseTemplates()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x607

    const/4 v3, 0x3

    .line 433
    invoke-direct {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getArrayListOfTemplates()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    .line 435
    iget-object v1, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 437
    invoke-direct {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->setArrayListOfTemplates()V

    .line 443
    :cond_10
    :goto_10
    const/16 v1, 0x606

    invoke-virtual {p0, v1}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->nextTag(I)I

    move-result v1

    if-eq v1, v3, :cond_58

    .line 445
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    if-ne v1, v4, :cond_10

    .line 447
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;-><init>()V

    .line 449
    .local v0, temp:Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;
    :goto_21
    invoke-virtual {p0, v4}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->nextTag(I)I

    move-result v1

    if-eq v1, v3, :cond_52

    .line 453
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x614

    if-ne v1, v2, :cond_34

    .line 455
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateId:Ljava/lang/String;

    goto :goto_21

    .line 457
    :cond_34
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x615

    if-ne v1, v2, :cond_41

    .line 459
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateName:Ljava/lang/String;

    goto :goto_21

    .line 461
    :cond_41
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x616

    if-ne v1, v2, :cond_4e

    .line 463
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateDescription:Ljava/lang/String;

    goto :goto_21

    .line 467
    :cond_4e
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->skipTag()V

    goto :goto_21

    .line 471
    :cond_52
    iget-object v1, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 477
    .end local v0           #temp:Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;
    :cond_58
    return-void
.end method

.method private setArrayListOfTemplates()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mTemplate:Ljava/util/ArrayList;

    .line 359
    :cond_b
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public commit()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 265
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 269
    .local v6, checkCursor:Landroid/database/Cursor;
    :try_start_4
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IRMTemplateId"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget-object v4, v4, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    if-eqz v6, :cond_7f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7f

    .line 274
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget-object v3, v3, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, count:I
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_7f

    .line 278
    const-string v0, "IRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IRMSettingAdapter: deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old IRMTemplates in DB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_4 .. :try_end_7f} :catchall_f0

    .line 284
    .end local v8           #count:I
    :cond_7f
    if-eqz v6, :cond_84

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_84
    invoke-direct {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getArrayListOfTemplates()Ljava/util/ArrayList;

    move-result-object v13

    .line 289
    .local v13, template:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    if-eqz v13, :cond_12d

    .line 291
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 293
    .local v11, listIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    :cond_8e
    :goto_8e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 295
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v7, contentValues:Landroid/content/ContentValues;
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;

    .line 299
    .local v12, t:Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;
    const-string v0, "IRMTemplateId"

    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "IRMTemplateName"

    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "IRMTemplateDescription"

    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "AccountKey"

    iget-object v2, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget-object v2, v2, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 309
    .local v8, count:Landroid/net/Uri;
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_8e

    .line 311
    const-string v0, "IRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IRMSettingAdapter: inserting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IRMTemplates in DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 284
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v8           #count:Landroid/net/Uri;
    .end local v11           #listIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    .end local v12           #t:Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;
    .end local v13           #template:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    :catchall_f0
    move-exception v0

    if-eqz v6, :cond_f6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f6
    throw v0

    .line 317
    .restart local v11       #listIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    .restart local v13       #template:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    :cond_f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 319
    .local v9, currentTime:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    const-string v0, "IRMTemplateTimeStamp"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->this$0:Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget-object v4, v4, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v7, v3, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v9           #currentTime:J
    .end local v11           #listIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;>;"
    :cond_12d
    return-void
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    const/16 v2, 0x485

    invoke-virtual {p0, v2}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->nextTag(I)I

    move-result v2

    if-eq v2, v4, :cond_22

    .line 367
    :cond_b
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->nextTag(I)I

    move-result v2

    if-eq v2, v4, :cond_22

    .line 369
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x486

    if-ne v2, v3, :cond_23

    .line 371
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->getValueInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mStatus:I

    .line 373
    iget v2, p0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->mStatus:I

    if-eq v2, v0, :cond_b

    move v0, v1

    .line 393
    :cond_22
    :goto_22
    return v0

    .line 379
    :cond_23
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x4ab

    if-ne v2, v3, :cond_31

    .line 381
    invoke-direct {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->parseIRMStatus()Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 383
    goto :goto_22

    .line 387
    :cond_31
    invoke-virtual {p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->skipTag()V

    goto :goto_b
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method
