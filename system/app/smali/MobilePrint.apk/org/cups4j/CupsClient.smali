.class public Lorg/cups4j/CupsClient;
.super Ljava/lang/Object;
.source "CupsClient.java"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_PORT:I = 0x277

.field public static final DEFAULT_USER:Ljava/lang/String; = "anonymous"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "localhost"

    const/16 v1, 0x277

    const-string v2, "anonymous"

    invoke-direct {p0, v0, v1, v2}, Lorg/cups4j/CupsClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    const-string v0, "anonymous"

    invoke-direct {p0, p1, p2, v0}, Lorg/cups4j/CupsClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "userName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/cups4j/CupsClient;->port:I

    .line 49
    iput-object v1, p0, Lorg/cups4j/CupsClient;->user:Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_28

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 81
    iput-object p1, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    .line 86
    if-lez p2, :cond_43

    .line 87
    iput p2, p0, Lorg/cups4j/CupsClient;->port:I

    .line 92
    if-eqz p3, :cond_27

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 93
    iput-object p3, p0, Lorg/cups4j/CupsClient;->user:Ljava/lang/String;

    .line 95
    :cond_27
    return-void

    .line 83
    :cond_28
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The hostname specified: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_43
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified port number: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getJobAttributes(Ljava/lang/String;Ljava/lang/String;I)Lorg/cups4j/PrintJobAttributes;
    .registers 6
    .parameter "hostname"
    .parameter "userName"
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p2, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    :cond_a
    const-string p2, "anonymous"

    .line 186
    :cond_c
    if-eqz p1, :cond_16

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 187
    :cond_16
    const-string p1, "localhost"

    .line 190
    :cond_18
    new-instance v0, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;

    invoke-direct {v0}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;-><init>()V

    iget v1, p0, Lorg/cups4j/CupsClient;->port:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->getPrintJobAttributes(Ljava/lang/String;Ljava/lang/String;II)Lorg/cups4j/PrintJobAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultPrinter()Lorg/cups4j/CupsPrinter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;

    invoke-direct {v0}, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;-><init>()V

    iget-object v1, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    iget v2, p0, Lorg/cups4j/CupsClient;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;->getDefaultPrinter(Ljava/lang/String;I)Lorg/cups4j/CupsPrinter;

    move-result-object v0

    return-object v0
.end method

.method public getJobAttributes(I)Lorg/cups4j/PrintJobAttributes;
    .registers 4
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    iget-object v1, p0, Lorg/cups4j/CupsClient;->user:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/cups4j/CupsClient;->getJobAttributes(Ljava/lang/String;Ljava/lang/String;I)Lorg/cups4j/PrintJobAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getJobAttributes(Ljava/lang/String;I)Lorg/cups4j/PrintJobAttributes;
    .registers 4
    .parameter "userName"
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/cups4j/CupsClient;->getJobAttributes(Ljava/lang/String;Ljava/lang/String;I)Lorg/cups4j/PrintJobAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getJobs(Lorg/cups4j/CupsPrinter;Lorg/cups4j/WhichJobsEnum;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .parameter "printer"
    .parameter "whichJobs"
    .parameter "userName"
    .parameter "myJobs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cups4j/CupsPrinter;",
            "Lorg/cups4j/WhichJobsEnum;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/cups4j/PrintJobAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lorg/cups4j/operations/ipp/IppGetJobsOperation;

    invoke-direct {v0}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;->getPrintJobs(Lorg/cups4j/CupsPrinter;Lorg/cups4j/WhichJobsEnum;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrinter(Ljava/net/URL;)Lorg/cups4j/CupsPrinter;
    .registers 8
    .parameter "printerURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/cups4j/CupsClient;->getPrinters()Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .local v2, printers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cups4j/CupsPrinter;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, printer:Lorg/cups4j/CupsPrinter;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 146
    return-object v1

    .line 142
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cups4j/CupsPrinter;

    .line 143
    .local v0, p:Lorg/cups4j/CupsPrinter;
    invoke-virtual {v0}, Lorg/cups4j/CupsPrinter;->getPrinterURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    move-object v1, v0

    goto :goto_9
.end method

.method public getPrinters()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cups4j/CupsPrinter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, printers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cups4j/CupsPrinter;>;"
    new-instance v3, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;

    invoke-direct {v3}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;-><init>()V

    iget-object v4, p0, Lorg/cups4j/CupsClient;->host:Ljava/lang/String;

    iget v5, p0, Lorg/cups4j/CupsClient;->port:I

    invoke-virtual {v3, v4, v5}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;->getPrinters(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, defaultPrinter:Lorg/cups4j/CupsPrinter;
    invoke-virtual {p0}, Lorg/cups4j/CupsClient;->getDefaultPrinter()Lorg/cups4j/CupsPrinter;

    move-result-object v0

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 118
    return-object v2

    .line 112
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cups4j/CupsPrinter;

    .line 113
    .local v1, p:Lorg/cups4j/CupsPrinter;
    if-eqz v0, :cond_17

    invoke-virtual {v1}, Lorg/cups4j/CupsPrinter;->getPrinterURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cups4j/CupsPrinter;->getPrinterURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/cups4j/CupsPrinter;->setDefault(Z)V

    goto :goto_17
.end method
