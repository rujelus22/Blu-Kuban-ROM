.class public Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;
.super Ljava/lang/Object;
.source "SPSSMBOutputStream.java"

# interfaces
.implements Lcom/sec/print/mobileprint/io/ISPSOutputStream;


# instance fields
.field isCancel:Z

.field isOccurError:Z

.field mSelectedPrinterDomain:Ljava/lang/String;

.field mSelectedPrinterIPAddress:Ljava/lang/String;

.field mSelectedPrinterPassword:Ljava/lang/String;

.field mSelectedPrinterShareName:Ljava/lang/String;

.field mSelectedPrinterUserName:Ljava/lang/String;

.field smbOutputStream:Ljcifs/smb/SmbFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "selectedPrinterDomain"
    .parameter "selectedPrinterUserName"
    .parameter "selectedPrinterPassword"
    .parameter "selectedPrinterIPAddress"
    .parameter "selectedPrinterShareName"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isCancel:Z

    .line 22
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    .line 30
    iput-object p1, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterDomain:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterUserName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterPassword:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterIPAddress:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterShareName:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isCancel:Z

    .line 37
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isCancel:Z

    .line 44
    return-void
.end method

.method public close()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    :try_start_2
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->smbOutputStream:Ljcifs/smb/SmbFile;

    if-nez v3, :cond_7

    .line 64
    :goto_6
    return v1

    .line 54
    :cond_7
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->smbOutputStream:Ljcifs/smb/SmbFile;

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->closePrintJob()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_e

    move v1, v2

    .line 64
    goto :goto_6

    .line 56
    :catch_e
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public isConnect()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 94
    iget-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    if-ne v1, v0, :cond_6

    .line 96
    const/4 v0, 0x0

    .line 99
    :cond_6
    return v0
.end method

.method public open()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterDomain:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterDomain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    .line 107
    :cond_e
    iput-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterDomain:Ljava/lang/String;

    .line 109
    :cond_10
    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterUserName:Ljava/lang/String;

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterUserName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e

    .line 111
    :cond_1c
    iput-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterUserName:Ljava/lang/String;

    .line 113
    :cond_1e
    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterPassword:Ljava/lang/String;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c

    .line 115
    :cond_2a
    iput-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterPassword:Ljava/lang/String;

    .line 119
    :cond_2c
    new-instance v2, Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterDomain:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterUserName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterPassword:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v2, ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterIPAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->mSelectedPrinterShareName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, location:Ljava/lang/String;
    :try_start_5e
    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-direct {v4, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->smbOutputStream:Ljcifs/smb/SmbFile;

    .line 137
    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->smbOutputStream:Ljcifs/smb/SmbFile;

    const-string v5, "MobilePrintJob"

    invoke-virtual {v4, v5}, Ljcifs/smb/SmbFile;->openPrintJob(Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6c} :catch_6d

    .line 148
    :goto_6c
    return v3

    .line 140
    :catch_6d
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    const/4 v3, 0x0

    goto :goto_6c
.end method

.method public write([BI)Z
    .registers 7
    .parameter "buffer"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    if-ne v2, v1, :cond_6

    .line 88
    :cond_5
    :goto_5
    return v1

    .line 75
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->smbOutputStream:Ljcifs/smb/SmbFile;

    invoke-virtual {v2, p1, p2}, Ljcifs/smb/SmbFile;->writePrintData([BI)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    .line 76
    :catch_c
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isOccurError:Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;->isCancel:Z

    if-eq v2, v1, :cond_5

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_5
.end method
