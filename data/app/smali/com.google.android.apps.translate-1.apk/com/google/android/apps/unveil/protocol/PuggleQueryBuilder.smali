.class public Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
.super Lcom/google/android/apps/unveil/protocol/QueryBuilder;
.source "PuggleQueryBuilder.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;-><init>()V

    .line 35
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V

    .line 36
    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
    .registers 6
    .parameter "c"

    .prologue
    .line 86
    new-instance v1, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;-><init>()V

    .line 88
    .local v1, queryBuilder:Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
    :try_start_5
    invoke-virtual {v1, p0}, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->setValuesFromCursor(Landroid/database/Cursor;)V
    :try_end_8
    .catch Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException; {:try_start_5 .. :try_end_8} :catch_9

    .line 93
    .end local v1           #queryBuilder:Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
    :goto_8
    return-object v1

    .line 89
    .restart local v1       #queryBuilder:Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
    :catch_9
    move-exception v0

    .line 90
    .local v0, e:Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
    sget-object v2, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Could not parse query from the given cursor."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addText(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;
    .registers 2
    .parameter "text"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 5
    .parameter "context"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v1

    .line 44
    .local v1, gogglesRequest:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 45
    .local v0, gogglesConfig:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 46
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setText(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 48
    :cond_15
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected setValuesFromCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setValuesFromCursor(Landroid/database/Cursor;)V

    .line 102
    const-string v1, "text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, columnIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    .line 106
    :cond_12
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 78
    .local v0, queryValues:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 79
    const-string v1, "text"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "PuggleQueryBuilder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 65
    const-string v1, "text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1d
    invoke-super {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
