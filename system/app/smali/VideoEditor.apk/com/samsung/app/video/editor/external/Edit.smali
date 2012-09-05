.class public Lcom/samsung/app/video/editor/external/Edit;
.super Ljava/lang/Object;
.source "Edit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e7164b734f8bfdL


# instance fields
.field public addcaption:I

.field private editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private subType:I

.field private trans_duration:I

.field private type:I

.field public volumeLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->addcaption:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/Edit;)V
    .registers 4
    .parameter "edit"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->addcaption:I

    .line 38
    iget v0, p1, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    .line 39
    iget v0, p1, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 40
    iget v0, p1, Lcom/samsung/app/video/editor/external/Edit;->type:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    .line 41
    iget v0, p1, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 43
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v0, :cond_23

    .line 44
    new-instance v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v0, v1}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 45
    :cond_23
    return-void
.end method


# virtual methods
.method public getAddcaption()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->addcaption:I

    return v0
.end method

.method public getEditParams()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method public getSubType()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    return v0
.end method

.method public getTrans_duration()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    div-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    return v0
.end method

.method public getVolumeLevel()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    return v0
.end method

.method public setAddcaption(I)V
    .registers 2
    .parameter "addcaption"

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->addcaption:I

    .line 97
    return-void
.end method

.method public setEditParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 2
    .parameter "editParams"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 72
    return-void
.end method

.method public setSubType(I)V
    .registers 2
    .parameter "subType"

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    .line 64
    return-void
.end method

.method public setTrans_duration(I)V
    .registers 3
    .parameter "transDuration"

    .prologue
    .line 79
    mul-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 80
    invoke-static {}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateMusicTime()V

    .line 81
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 55
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    .line 56
    return-void
.end method

.method public setVolumeLevel(I)V
    .registers 2
    .parameter "volumeLevel"

    .prologue
    .line 88
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\n\tEdit: ----->\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, strBuf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ttype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tsubType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\teditParams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Edit;->editParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ttrans_duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tvolumeLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "\t\t<---------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
