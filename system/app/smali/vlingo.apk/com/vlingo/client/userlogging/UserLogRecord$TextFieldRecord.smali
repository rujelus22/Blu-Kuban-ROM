.class Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;
.super Ljava/lang/Object;
.source "UserLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/userlogging/UserLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFieldRecord"
.end annotation


# instance fields
.field private clearCount:I

.field private deleteCount:I

.field private fieldId:Ljava/lang/String;

.field private fixAcceptCount:I

.field private fixInvokeCount:I

.field private keyCount:I

.field private recognitionCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldId"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fieldId:Ljava/lang/String;

    .line 273
    return-void
.end method


# virtual methods
.method generateXml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<field field-id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fieldId:Ljava/lang/String;

    invoke-static {v2}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" fix-invoke-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixInvokeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" fix-accept-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixAcceptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" clear-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->clearCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" key-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->keyCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" char-delete-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->deleteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" char-recs-count=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->recognitionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getFieldId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method update(Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;)V
    .registers 4
    .parameter "counts"

    .prologue
    .line 276
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixInvokeCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountFixInvoke()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixInvokeCount:I

    .line 277
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixAcceptCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountFixAccept()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->fixAcceptCount:I

    .line 278
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->clearCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountClears()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->clearCount:I

    .line 279
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->keyCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountKeys()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->keyCount:I

    .line 280
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->deleteCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountDeletes()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->deleteCount:I

    .line 281
    iget v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->recognitionCount:I

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;->getCountRecognitions()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;->recognitionCount:I

    .line 282
    return-void
.end method
