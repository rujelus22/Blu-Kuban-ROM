.class Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;
.super Ljava/lang/Thread;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncryptionThread"
.end annotation


# instance fields
.field encryptedPart:Ljavax/mail/internet/MimeBodyPart;

.field pos:Ljava/io/BufferedOutputStream;

.field final synthetic this$0:Lcom/android/emailcommon/smime/SMIMEHelper;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/smime/SMIMEHelper;Ljavax/mail/internet/MimeBodyPart;Ljava/io/PipedOutputStream;I)V
    .registers 6
    .parameter
    .parameter "encryptedPart"
    .parameter "pos"
    .parameter "bufferSize"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->this$0:Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 719
    iput-object p2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->encryptedPart:Ljavax/mail/internet/MimeBodyPart;

    .line 720
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    .line 721
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->encryptedPart:Ljavax/mail/internet/MimeBodyPart;

    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1a
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_7} :catch_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_50

    .line 734
    :try_start_7
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_10

    .line 735
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    .line 742
    :cond_10
    :goto_10
    return-void

    .line 737
    :catch_11
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 726
    .end local v0           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 727
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_1b
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_6b

    .line 734
    :try_start_22
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_10

    .line 735
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_10

    .line 737
    :catch_2c
    move-exception v0

    .line 738
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 728
    .end local v0           #e:Ljava/io/IOException;
    :catch_35
    move-exception v0

    .line 729
    .local v0, e:Ljavax/mail/MessagingException;
    :try_start_36
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_6b

    .line 734
    :try_start_3d
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_10

    .line 735
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_10

    .line 737
    :catch_47
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 730
    .end local v0           #e:Ljava/io/IOException;
    :catch_50
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/Exception;
    :try_start_51
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_6b

    .line 734
    :try_start_58
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_10

    .line 735
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_62

    goto :goto_10

    .line 737
    :catch_62
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 733
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6b
    move-exception v1

    .line 734
    :try_start_6c
    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_75

    .line 735
    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_75} :catch_76

    .line 739
    :cond_75
    :goto_75
    throw v1

    .line 737
    :catch_76
    move-exception v0

    .line 738
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "EncryptionThread"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75
.end method
