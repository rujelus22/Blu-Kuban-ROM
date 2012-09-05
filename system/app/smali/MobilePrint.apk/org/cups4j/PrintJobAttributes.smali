.class public Lorg/cups4j/PrintJobAttributes;
.super Ljava/lang/Object;
.source "PrintJobAttributes.java"


# instance fields
.field jobID:I

.field jobName:Ljava/lang/String;

.field jobState:Lorg/cups4j/JobStateEnum;

.field jobURL:Ljava/net/URL;

.field printerURL:Ljava/net/URL;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lorg/cups4j/PrintJobAttributes;->jobURL:Ljava/net/URL;

    .line 26
    iput-object v1, p0, Lorg/cups4j/PrintJobAttributes;->printerURL:Ljava/net/URL;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/cups4j/PrintJobAttributes;->jobID:I

    .line 28
    iput-object v1, p0, Lorg/cups4j/PrintJobAttributes;->jobState:Lorg/cups4j/JobStateEnum;

    .line 29
    iput-object v1, p0, Lorg/cups4j/PrintJobAttributes;->jobName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/cups4j/PrintJobAttributes;->userName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getJobID()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lorg/cups4j/PrintJobAttributes;->jobID:I

    return v0
.end method

.method public getJobName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cups4j/PrintJobAttributes;->jobName:Ljava/lang/String;

    return-object v0
.end method

.method public getJobState()Lorg/cups4j/JobStateEnum;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cups4j/PrintJobAttributes;->jobState:Lorg/cups4j/JobStateEnum;

    return-object v0
.end method

.method public getJobURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/cups4j/PrintJobAttributes;->jobURL:Ljava/net/URL;

    return-object v0
.end method

.method public getPrinterURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cups4j/PrintJobAttributes;->printerURL:Ljava/net/URL;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cups4j/PrintJobAttributes;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setJobID(I)V
    .registers 2
    .parameter "jobID"

    .prologue
    .line 53
    iput p1, p0, Lorg/cups4j/PrintJobAttributes;->jobID:I

    .line 54
    return-void
.end method

.method public setJobName(Ljava/lang/String;)V
    .registers 2
    .parameter "jobName"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/cups4j/PrintJobAttributes;->jobName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setJobState(Lorg/cups4j/JobStateEnum;)V
    .registers 2
    .parameter "jobState"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/cups4j/PrintJobAttributes;->jobState:Lorg/cups4j/JobStateEnum;

    .line 62
    return-void
.end method

.method public setJobURL(Ljava/net/URL;)V
    .registers 2
    .parameter "jobURL"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/cups4j/PrintJobAttributes;->jobURL:Ljava/net/URL;

    .line 38
    return-void
.end method

.method public setPrinterURL(Ljava/net/URL;)V
    .registers 2
    .parameter "printerURL"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/cups4j/PrintJobAttributes;->printerURL:Ljava/net/URL;

    .line 46
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/cups4j/PrintJobAttributes;->userName:Ljava/lang/String;

    .line 78
    return-void
.end method
