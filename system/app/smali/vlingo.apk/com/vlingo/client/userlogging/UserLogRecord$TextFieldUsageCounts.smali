.class public Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;
.super Ljava/lang/Object;
.source "UserLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/userlogging/UserLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFieldUsageCounts"
.end annotation


# instance fields
.field private fieldID:Ljava/lang/String;

.field private usageCounts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCount(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->usageCounts:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 344
    :goto_c
    return v1

    .line 341
    :catch_d
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v1, -0x1

    goto :goto_c
.end method


# virtual methods
.method public getCountClears()I
    .registers 2

    .prologue
    .line 320
    const-string v0, "CLR"

    invoke-direct {p0, v0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountDeletes()I
    .registers 3

    .prologue
    .line 326
    const-string v0, "CDEL"

    invoke-direct {p0, v0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WDEL"

    invoke-direct {p0, v1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCountFixAccept()I
    .registers 2

    .prologue
    .line 317
    const-string v0, "NBCOR"

    invoke-direct {p0, v0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountFixInvoke()I
    .registers 2

    .prologue
    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method public getCountKeys()I
    .registers 3

    .prologue
    .line 323
    const-string v0, "KEY"

    invoke-direct {p0, v0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "NAV"

    invoke-direct {p0, v1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCountRecognitions()I
    .registers 3

    .prologue
    .line 329
    const-string v0, "CREC"

    invoke-direct {p0, v0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WREC"

    invoke-direct {p0, v1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->fieldID:Ljava/lang/String;

    return-object v0
.end method

.method public isEdited()Z
    .registers 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountKeys()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountDeletes()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountClears()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountFixAccept()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountRecognitions()I

    move-result v0

    if-lez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
