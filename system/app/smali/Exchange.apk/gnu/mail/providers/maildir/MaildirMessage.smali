.class public final Lgnu/mail/providers/maildir/MaildirMessage;
.super Lgnu/mail/providers/ReadOnlyMessage;
.source "MaildirMessage.java"


# instance fields
.field file:Ljava/io/File;

.field uniq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/mail/providers/maildir/MaildirFolder;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p5}, Lgnu/mail/providers/ReadOnlyMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 78
    iput-object p2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    .line 79
    iput-object p3, p0, Lgnu/mail/providers/maildir/MaildirMessage;->uniq:Ljava/lang/String;

    .line 81
    if-eqz p4, :cond_52

    const-string v0, "2,"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 83
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 84
    const/4 v0, 0x2

    :goto_16
    if-ge v0, v1, :cond_52

    .line 86
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_54

    .line 84
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 89
    :sswitch_22
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1f

    .line 92
    :sswitch_2a
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1f

    .line 95
    :sswitch_32
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    const-string v3, "Passed"

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    goto :goto_1f

    .line 98
    :sswitch_3a
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1f

    .line 101
    :sswitch_42
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1f

    .line 104
    :sswitch_4a
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1f

    .line 109
    :cond_52
    return-void

    .line 86
    nop

    :sswitch_data_54
    .sparse-switch
        0x44 -> :sswitch_22
        0x46 -> :sswitch_2a
        0x50 -> :sswitch_32
        0x52 -> :sswitch_3a
        0x53 -> :sswitch_42
        0x54 -> :sswitch_4a
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    instance-of v1, p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_1c

    .line 317
    check-cast p1, Ljavax/mail/internet/MimeMessage;

    .line 318
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getMessageNumber()I

    move-result v1

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->getMessageNumber()I

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    .line 321
    :cond_1c
    return v0
.end method

.method fetch()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_5

    .line 225
    :goto_4
    return-void

    .line 217
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirMessage;->parse(Ljava/io/InputStream;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_4

    .line 221
    :catch_18
    move-exception v0

    .line 223
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method fetchHeaders()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v0, :cond_5

    .line 205
    :goto_4
    return-void

    .line 197
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 199
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 201
    :catch_1b
    move-exception v0

    .line 203
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 257
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    .line 258
    :cond_7
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 249
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    .line 250
    :cond_7
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_7

    .line 307
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetch()V

    .line 308
    :cond_7
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_7

    .line 299
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetch()V

    .line 300
    :cond_7
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 241
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    .line 242
    :cond_7
    invoke-super {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 233
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    .line 234
    :cond_7
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 289
    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    .line 290
    :cond_7
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
