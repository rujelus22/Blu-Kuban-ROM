.class Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;
.super Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteOnceFileBackedMimeBodyPart"
.end annotation


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-super {p0, p1}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 447
    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;->dispose()V

    .line 448
    return-void
.end method
