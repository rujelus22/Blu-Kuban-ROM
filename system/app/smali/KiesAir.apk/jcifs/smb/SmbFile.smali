.class public Ljcifs/smb/SmbFile;
.super Ljava/net/URLConnection;
.source "SmbFile.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbFile$WriterThread;
    }
.end annotation


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field static final ATTR_GET_MASK:I = 0x7fff

.field public static final ATTR_HIDDEN:I = 0x2

.field static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field static final ATTR_SET_MASK:I = 0x30a7

.field public static final ATTR_SYSTEM:I = 0x4

.field static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field static final DEFAULT_ATTR_EXPIRATION_PERIOD:I = 0x1388

.field public static final FILE_NO_SHARE:I = 0x0

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

#the value of this static final field might be set in the static constructor
.field static final HASH_DOT:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final HASH_DOT_DOT:I = 0x0

.field static final O_APPEND:I = 0x4

.field static final O_CREAT:I = 0x10

.field static final O_EXCL:I = 0x20

.field static final O_RDONLY:I = 0x1

.field static final O_RDWR:I = 0x3

.field static final O_TRUNC:I = 0x40

.field static final O_WRONLY:I = 0x2

.field public static final TYPE_COMM:I = 0x40

.field public static final TYPE_FILESYSTEM:I = 0x1

.field public static final TYPE_NAMED_PIPE:I = 0x10

.field public static final TYPE_PRINTER:I = 0x20

.field public static final TYPE_SERVER:I = 0x4

.field public static final TYPE_SHARE:I = 0x8

.field public static final TYPE_WORKGROUP:I = 0x2

.field static attrExpirationPeriod:J

.field protected static dfs:Ljcifs/smb/Dfs;

.field static log:Ljcifs/util/LogStream;


# instance fields
.field addressIndex:I

.field addresses:[Ljcifs/UniAddress;

.field private attrExpiration:J

.field private attributes:I

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field private blank_resp:Ljcifs/smb/SmbComBlankResponse;

.field private canon:Ljava/lang/String;

.field private createTime:J

.field private dfsReferral:Ljcifs/smb/DfsReferral;

.field fid:I

.field private isExists:Z

.field private lastModified:J

.field opened:Z

.field private share:Ljava/lang/String;

.field private shareAccess:I

.field private size:J

.field private sizeExpiration:J

.field tree:Ljcifs/smb/SmbTree;

.field tree_num:I

.field type:I

.field unc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 356
    const-string v1, "."

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Ljcifs/smb/SmbFile;->HASH_DOT:I

    .line 357
    const-string v1, ".."

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    .line 359
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v1

    sput-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 365
    :try_start_16
    const-string v1, "jcifs.Config"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1b} :catch_2d

    .line 369
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    :goto_1b
    const-string v1, "jcifs.smb.client.attrExpirationPeriod"

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 370
    new-instance v1, Ljcifs/smb/Dfs;

    invoke-direct {v1}, Ljcifs/smb/Dfs;-><init>()V

    sput-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 371
    return-void

    .line 366
    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_2d
    move-exception v0

    .line 367
    .restart local v0       #cnfe:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 8
    .parameter "context"
    .parameter "name"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 538
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .registers 9
    .parameter "context"
    .parameter "name"
    .parameter "auth"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 561
    and-int/lit8 v0, p4, -0x8

    if-eqz v0, :cond_1e

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1e
    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    .line 565
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 6
    .parameter "url"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 499
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .registers 7
    .parameter "url"
    .parameter "auth"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 517
    and-int/lit8 v0, p3, -0x8

    if-eqz v0, :cond_17

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_17
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    .line 521
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 601
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 602
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5
    .parameter "url"
    .parameter "auth"

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 419
    const/4 v0, 0x7

    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    .line 420
    iput-object v1, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 421
    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 426
    iput-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 613
    if-nez p2, :cond_18

    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    .end local p2
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_18
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 615
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 616
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_21
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 467
    return-void

    .line 464
    :cond_27
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_21
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "name"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_21
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 589
    and-int/lit8 v0, p3, -0x8

    if-eqz v0, :cond_3c

    .line 590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_32
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_21

    .line 592
    :cond_3c
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    .line 593
    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .registers 16
    .parameter "context"
    .parameter "name"
    .parameter "type"
    .parameter "attributes"
    .parameter "createTime"
    .parameter "lastModified"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v1

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_27
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 625
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 628
    iget-object v1, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 629
    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 630
    iget-object v1, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 632
    :cond_3a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 633
    .local v0, last:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4d

    .line 634
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 636
    :cond_4d
    iget-object v1, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_91

    .line 637
    const-string v1, "\\"

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 646
    :goto_55
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    .line 647
    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 648
    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 649
    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 650
    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 655
    return-void

    .line 620
    .end local v0           #last:I
    :cond_6e
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v1, p4, 0x10

    if-lez v1, :cond_8e

    const-string v1, "/"

    :goto_81
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_27

    :cond_8e
    const-string v1, ""

    goto :goto_81

    .line 638
    .restart local v0       #last:I
    :cond_91
    iget-object v1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_55

    .line 641
    :cond_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_55
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    if-nez v0, :cond_b

    .line 659
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 661
    :cond_b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .registers 11
    .parameter "aces"
    .parameter "resolveSids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2846
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v4

    .line 2849
    .local v4, server:Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 2850
    array-length v6, p1

    new-array v5, v6, [Ljcifs/smb/SID;

    .line 2851
    .local v5, sids:[Ljcifs/smb/SID;
    const/4 v2, 0x0

    .line 2853
    .local v2, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, ai:I
    :goto_b
    array-length v6, p1

    if-ge v0, v6, :cond_17

    .line 2854
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v6, v5, v0

    .line 2853
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2857
    :cond_17
    const/4 v3, 0x0

    .local v3, off:I
    :goto_18
    array-length v6, v5

    if-ge v3, v6, :cond_41

    .line 2858
    array-length v6, v5

    sub-int v1, v6, v3

    .line 2859
    .local v1, len:I
    const/16 v6, 0x40

    if-le v1, v6, :cond_24

    .line 2860
    const/16 v1, 0x40

    .line 2861
    :cond_24
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v4, v6, v5, v3, v1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    .line 2857
    add-int/lit8 v3, v3, 0xa

    goto :goto_18

    .line 2864
    .end local v0           #ai:I
    .end local v1           #len:I
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #off:I
    .end local v5           #sids:[Ljcifs/smb/SID;
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #ai:I
    :goto_2d
    array-length v6, p1

    if-ge v0, v6, :cond_41

    .line 2865
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v4, v6, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 2866
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iget-object v7, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v7, v6, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 2864
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2869
    :cond_41
    return-void
.end method

.method private queryFSInformation(I)J
    .registers 7
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2482
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2483
    .local v0, response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2485
    iget v1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_24

    .line 2486
    iget-object v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2490
    :cond_24
    iget-object v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v1}, Ljcifs/smb/AllocInfo;->getFree()J

    move-result-wide v1

    return-wide v1
.end method

.method static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "query"
    .parameter "param"

    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 785
    .local v3, in:[C
    const/4 v1, 0x0

    .local v1, eq:I
    move v5, v1

    .line 786
    .local v5, st:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v6, v3

    if-ge v2, v6, :cond_34

    .line 787
    aget-char v0, v3, v2

    .line 788
    .local v0, ch:I
    const/16 v6, 0x26

    if-ne v0, v6, :cond_2e

    .line 789
    if-le v1, v5, :cond_29

    .line 790
    new-instance v4, Ljava/lang/String;

    sub-int v6, v1, v5

    invoke-direct {v4, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 791
    .local v4, p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 792
    add-int/lit8 v1, v1, 0x1

    .line 793
    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v6, v3, v1, v7}, Ljava/lang/String;-><init>([CII)V

    .line 809
    .end local v0           #ch:I
    .end local v4           #p:Ljava/lang/String;
    :goto_28
    return-object v6

    .line 796
    .restart local v0       #ch:I
    :cond_29
    add-int/lit8 v5, v2, 0x1

    .line 786
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 797
    :cond_2e
    const/16 v6, 0x3d

    if-ne v0, v6, :cond_2b

    .line 798
    move v1, v2

    goto :goto_2b

    .line 801
    .end local v0           #ch:I
    :cond_34
    if-le v1, v5, :cond_4d

    .line 802
    new-instance v4, Ljava/lang/String;

    sub-int v6, v1, v5

    invoke-direct {v4, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 803
    .restart local v4       #p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 804
    add-int/lit8 v1, v1, 0x1

    .line 805
    new-instance v6, Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v1

    invoke-direct {v6, v3, v1, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_28

    .line 809
    .end local v4           #p:Ljava/lang/String;
    :cond_4d
    const/4 v6, 0x0

    goto :goto_28
.end method


# virtual methods
.method public canRead()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1449
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 1450
    const/4 v0, 0x1

    .line 1452
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    goto :goto_9
.end method

.method public canWrite()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1467
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 1470
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1026
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    .line 1027
    return-void
.end method

.method close(IJ)V
    .registers 7
    .parameter "f"
    .parameter "lastWriteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1009
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    .line 1010
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1016
    :cond_1f
    new-instance v0, Ljcifs/smb/SmbComClose;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1017
    return-void
.end method

.method close(J)V
    .registers 4
    .parameter "lastWriteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1024
    :goto_6
    return-void

    .line 1022
    :cond_7
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    goto :goto_6
.end method

.method public connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 950
    :goto_6
    return-void

    .line 945
    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 946
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    .line 949
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_10
    .catch Ljcifs/smb/SmbException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_6

    .line 951
    :catch_11
    move-exception v0

    .line 952
    .local v0, se:Ljcifs/smb/SmbException;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v1

    if-nez v1, :cond_19

    .line 953
    throw v0

    .line 954
    :cond_19
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_d

    .line 955
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d
.end method

.method connect0()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 875
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_f

    .line 883
    return-void

    .line 876
    :catch_4
    move-exception v2

    .line 877
    .local v2, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "Failed to connect to server"

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 878
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    :catch_d
    move-exception v1

    .line 879
    .local v1, se:Ljcifs/smb/SmbException;
    throw v1

    .line 880
    .end local v1           #se:Ljcifs/smb/SmbException;
    :catch_f
    move-exception v0

    .line 881
    .local v0, ioe:Ljava/io/IOException;
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "Failed to connect to server"

    invoke-direct {v3, v4, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .registers 19
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2282
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p1

    iget-object v1, v0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 2283
    :cond_c
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Invalid operation for workgroups or servers"

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2286
    :cond_14
    new-instance v14, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v14}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    .line 2287
    .local v14, req:Ljcifs/smb/SmbComReadAndX;
    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    .line 2289
    .local v7, resp:Ljcifs/smb/SmbComReadAndXResponse;
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2290
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2301
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2307
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p1

    iget-object v8, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2310
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Source and destination paths overlap."

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_2a .. :try_end_65} :catch_65

    .line 2312
    :catch_65
    move-exception v1

    .line 2315
    :cond_66
    new-instance v5, Ljcifs/smb/SmbFile$WriterThread;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    .line 2316
    .local v5, w:Ljcifs/smb/SmbFile$WriterThread;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljcifs/smb/SmbFile$WriterThread;->setDaemon(Z)V

    .line 2317
    invoke-virtual {v5}, Ljcifs/smb/SmbFile$WriterThread;->start()V

    .line 2323
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v15, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 2324
    .local v15, t1:Ljcifs/smb/SmbTransport;
    move-object/from16 v0, p1

    iget-object v1, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    .line 2326
    .local v16, t2:Ljcifs/smb/SmbTransport;
    iget v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    move-object/from16 v0, v16

    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v1, v2, :cond_bf

    .line 2327
    iget v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    move-object/from16 v0, v16

    iput v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 2332
    :goto_94
    iget v1, v15, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v1, v1, -0x46

    iget v2, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v2, v2, -0x46

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2333
    .local v4, bsize:I
    const/4 v1, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .local v3, b:[[B
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v14

    .line 2336
    :try_start_b2
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c6

    .line 2338
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2340
    return-void

    .line 2329
    .end local v3           #b:[[B
    .end local v4           #bsize:I
    :cond_bf
    move-object/from16 v0, v16

    iget v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_94

    .line 2338
    .restart local v3       #b:[[B
    .restart local v4       #bsize:I
    :catchall_c6
    move-exception v1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    throw v1
.end method

.method copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .registers 34
    .parameter "dest"
    .parameter "b"
    .parameter "bsize"
    .parameter "w"
    .parameter "req"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2139
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_57

    .line 2140
    const/16 v4, 0x11

    move-object/from16 v0, p0

    iput v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2141
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2142
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2145
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x101

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v21

    .line 2147
    .local v21, info:Ljcifs/smb/Info;
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getAttributes()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2148
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2149
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2154
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2158
    .end local v21           #info:Ljcifs/smb/Info;
    :cond_57
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 2162
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v23

    .line 2163
    .local v23, path:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7c

    .line 2165
    :try_start_68
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 2166
    move-object/from16 v0, p0

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_7c
    .catch Ljcifs/smb/SmbException; {:try_start_68 .. :try_end_7c} :catch_c5

    .line 2175
    :cond_7c
    const-string v4, "*"

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v18

    .line 2177
    .local v18, files:[Ljcifs/smb/SmbFile;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_8a
    :try_start_8a
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_154

    .line 2178
    new-instance v3, Ljcifs/smb/SmbFile;

    aget-object v4, v18, v19

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v18, v19

    iget v6, v4, Ljcifs/smb/SmbFile;->type:I

    aget-object v4, v18, v19

    iget v7, v4, Ljcifs/smb/SmbFile;->attributes:I

    aget-object v4, v18, v19

    iget-wide v8, v4, Ljcifs/smb/SmbFile;->createTime:J

    aget-object v4, v18, v19

    iget-wide v10, v4, Ljcifs/smb/SmbFile;->lastModified:J

    aget-object v4, v18, v19

    iget-wide v12, v4, Ljcifs/smb/SmbFile;->size:J

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 2185
    .local v3, ndest:Ljcifs/smb/SmbFile;
    aget-object v4, v18, v19

    move-object v5, v3

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_c2
    .catch Ljava/net/UnknownHostException; {:try_start_8a .. :try_end_c2} :catch_d9
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_c2} :catch_ea

    .line 2177
    add-int/lit8 v19, v19, 0x1

    goto :goto_8a

    .line 2167
    .end local v3           #ndest:Ljcifs/smb/SmbFile;
    .end local v18           #files:[Ljcifs/smb/SmbFile;
    .end local v19           #i:I
    :catch_c5
    move-exception v25

    .line 2168
    .local v25, se:Ljcifs/smb/SmbException;
    invoke-virtual/range {v25 .. v25}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3fffffde

    if-eq v4, v5, :cond_7c

    invoke-virtual/range {v25 .. v25}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3fffffcb

    if-eq v4, v5, :cond_7c

    .line 2170
    throw v25

    .line 2187
    .end local v25           #se:Ljcifs/smb/SmbException;
    .restart local v18       #files:[Ljcifs/smb/SmbFile;
    .restart local v19       #i:I
    :catch_d9
    move-exception v26

    .line 2188
    .local v26, uhe:Ljava/net/UnknownHostException;
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2189
    .end local v26           #uhe:Ljava/net/UnknownHostException;
    :catch_ea
    move-exception v22

    .line 2190
    .local v22, mue:Ljava/net/MalformedURLException;
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2196
    .end local v18           #files:[Ljcifs/smb/SmbFile;
    .end local v19           #i:I
    .end local v22           #mue:Ljava/net/MalformedURLException;
    .end local v23           #path:Ljava/lang/String;
    :cond_fb
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x0

    :try_start_100
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_105
    .catchall {:try_start_100 .. :try_end_105} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_105} :catch_142

    .line 2198
    const/16 v4, 0x52

    const/16 v5, 0x102

    :try_start_109
    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_113
    .catchall {:try_start_109 .. :try_end_113} :catchall_17c
    .catch Ljcifs/smb/SmbAuthException; {:try_start_109 .. :try_end_113} :catch_155
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_142

    .line 2214
    :goto_113
    const/16 v19, 0x0

    .line 2215
    .restart local v19       #i:I
    const-wide/16 v8, 0x0

    .line 2217
    .local v8, off:J
    :goto_117
    :try_start_117
    move-object/from16 v0, p0

    iget v4, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v4, v8, v9, v1}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    .line 2218
    aget-object v4, p2, v19

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    .line 2219
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2221
    monitor-enter p4
    :try_end_134
    .catchall {:try_start_117 .. :try_end_134} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_134} :catch_142

    .line 2222
    :try_start_134
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_182

    .line 2223
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    .line 2239
    :catchall_13f
    move-exception v4

    monitor-exit p4
    :try_end_141
    .catchall {:try_start_134 .. :try_end_141} :catchall_13f

    :try_start_141
    throw v4
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_142} :catch_142

    .line 2249
    .end local v8           #off:J
    .end local v19           #i:I
    :catch_142
    move-exception v17

    .line 2250
    .local v17, ex:Ljava/lang/Exception;
    :try_start_143
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_151

    .line 2251
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_151
    .catchall {:try_start_143 .. :try_end_151} :catchall_17c

    .line 2253
    :cond_151
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    .line 2256
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_154
    :goto_154
    return-void

    .line 2201
    :catch_155
    move-exception v24

    .line 2202
    .local v24, sae:Ljcifs/smb/SmbAuthException;
    :try_start_156
    move-object/from16 v0, p1

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_181

    .line 2205
    move-object/from16 v0, p1

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v5, v4, -0x2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2206
    const/16 v4, 0x52

    const/16 v5, 0x102

    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_17b
    .catchall {:try_start_156 .. :try_end_17b} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_17b} :catch_142

    goto :goto_113

    .line 2253
    .end local v24           #sae:Ljcifs/smb/SmbAuthException;
    :catchall_17c
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    throw v4

    .line 2210
    .restart local v24       #sae:Ljcifs/smb/SmbAuthException;
    :cond_181
    :try_start_181
    throw v24
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_182} :catch_142

    .line 2225
    .end local v24           #sae:Ljcifs/smb/SmbAuthException;
    .restart local v8       #off:J
    .restart local v19       #i:I
    :cond_182
    :goto_182
    :try_start_182
    move-object/from16 v0, p4

    iget-boolean v4, v0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z
    :try_end_186
    .catchall {:try_start_182 .. :try_end_186} :catchall_13f

    if-nez v4, :cond_19d

    .line 2227
    :try_start_188
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_13f
    .catch Ljava/lang/InterruptedException; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_182

    .line 2228
    :catch_18c
    move-exception v20

    .line 2229
    .local v20, ie:Ljava/lang/InterruptedException;
    :try_start_18d
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p1

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2232
    .end local v20           #ie:Ljava/lang/InterruptedException;
    :cond_19d
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_1a8

    .line 2233
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    .line 2235
    :cond_1a8
    move-object/from16 v0, p6

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v4, :cond_1da

    .line 2236
    monitor-exit p4
    :try_end_1af
    .catchall {:try_start_18d .. :try_end_1af} :catchall_13f

    .line 2245
    :try_start_1af
    new-instance v10, Ljcifs/smb/Trans2SetFileInformation;

    move-object/from16 v0, p1

    iget v11, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p0

    iget v12, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-direct/range {v10 .. v16}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v4, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v4}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2248
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_1d5
    .catchall {:try_start_1af .. :try_end_1d5} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1d5} :catch_142

    .line 2253
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    goto/16 :goto_154

    .line 2238
    :cond_1da
    :try_start_1da
    aget-object v5, p2, v19

    move-object/from16 v0, p6

    iget v6, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    move-object/from16 v4, p4

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2239
    monitor-exit p4
    :try_end_1e8
    .catchall {:try_start_1da .. :try_end_1e8} :catchall_13f

    .line 2241
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_1f7

    const/16 v19, 0x0

    .line 2242
    :goto_1ef
    :try_start_1ef
    move-object/from16 v0, p6

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_1f3
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f3} :catch_142

    int-to-long v4, v4

    add-long/2addr v8, v4

    goto/16 :goto_117

    .line 2241
    :cond_1f7
    const/16 v19, 0x1

    goto :goto_1ef
.end method

.method public createNewFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2553
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2554
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2556
    :cond_14
    const/16 v0, 0x33

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2557
    return-void
.end method

.method public createTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 1555
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1556
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1558
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2352
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2353
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2354
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    .line 2355
    return-void
.end method

.method delete(Ljava/lang/String;)V
    .registers 13
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 2357
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_15

    .line 2358
    new-instance v4, Ljcifs/smb/SmbException;

    const-string v5, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v4, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2361
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_51

    .line 2362
    const/16 v4, 0x11

    iput v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2363
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2364
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2365
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2367
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x101

    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v1

    .line 2369
    .local v1, info:Ljcifs/smb/Info;
    invoke-interface {v1}, Ljcifs/smb/Info;->getAttributes()I

    move-result v4

    iput v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2370
    invoke-interface {v1}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2371
    invoke-interface {v1}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2374
    iput-boolean v10, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2377
    .end local v1           #info:Ljcifs/smb/Info;
    :cond_51
    iget v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5a

    .line 2378
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    .line 2385
    :cond_5a
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_79

    .line 2386
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2388
    :cond_79
    iget v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b1

    .line 2394
    :try_start_7f
    const-string v4, "*"

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v2

    .line 2395
    .local v2, l:[Ljcifs/smb/SmbFile;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8a
    array-length v4, v2

    if-ge v0, v4, :cond_a0

    .line 2396
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_92
    .catch Ljcifs/smb/SmbException; {:try_start_7f .. :try_end_92} :catch_95

    .line 2395
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 2398
    .end local v0           #i:I
    .end local v2           #l:[Ljcifs/smb/SmbFile;
    :catch_95
    move-exception v3

    .line 2403
    .local v3, se:Ljcifs/smb/SmbException;
    invoke-virtual {v3}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3ffffff1

    if-eq v4, v5, :cond_a0

    .line 2404
    throw v3

    .line 2408
    .end local v3           #se:Ljcifs/smb/SmbException;
    :cond_a0
    new-instance v4, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v4, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2413
    :goto_ac
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v8, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2414
    return-void

    .line 2410
    :cond_b1
    new-instance v4, Ljcifs/smb/SmbComDelete;

    invoke-direct {v4, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_ac
.end method

.method doConnect()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 888
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    .line 889
    .local v1, addr:Ljcifs/UniAddress;
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v6, :cond_5a

    .line 890
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v6, v6, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, v6, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 896
    .local v5, trans:Ljcifs/smb/SmbTransport;
    :goto_12
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, hostName:Ljava/lang/String;
    iget-object v9, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v6, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v10, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v10, v10, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v11, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v2, v10, v12, v11}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v6

    if-eqz v6, :cond_73

    move v6, v7

    :goto_27
    iput-boolean v6, v9, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 898
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v6, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v6, :cond_33

    .line 899
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v13, v6, Ljcifs/smb/SmbTree;->connectionState:I

    .line 903
    :cond_33
    :try_start_33
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v6, v9, :cond_52

    .line 904
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doConnect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 906
    :cond_52
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_59
    .catch Ljcifs/smb/SmbAuthException; {:try_start_33 .. :try_end_59} :catch_75

    .line 931
    :goto_59
    return-void

    .line 892
    .end local v2           #hostName:Ljava/lang/String;
    .end local v5           #trans:Ljcifs/smb/SmbTransport;
    :cond_5a
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-static {v1, v6}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v5

    .line 893
    .restart local v5       #trans:Ljcifs/smb/SmbTransport;
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v6

    iget-object v9, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v6, v9, v12}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    iput-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    goto :goto_12

    .restart local v2       #hostName:Ljava/lang/String;
    :cond_73
    move v6, v8

    .line 897
    goto :goto_27

    .line 907
    :catch_75
    move-exception v3

    .line 911
    .local v3, sae:Ljcifs/smb/SmbAuthException;
    iget-object v6, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v6, :cond_8c

    .line 912
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v4

    .line 913
    .local v4, ssn:Ljcifs/smb/SmbSession;
    invoke-virtual {v4, v12, v12}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    iput-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 914
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v6, v12, v12}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_59

    .line 915
    .end local v4           #ssn:Ljcifs/smb/SmbSession;
    :cond_8c
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    .local v0, a:Ljcifs/smb/NtlmPasswordAuthentication;
    if-eqz v0, :cond_cc

    .line 917
    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 918
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v4

    .line 919
    .restart local v4       #ssn:Ljcifs/smb/SmbSession;
    iget-object v6, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v4, v6, v12}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    iput-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 920
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v9, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v10, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v10, v10, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v11, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v9, v2, v10, v12, v11}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v9

    if-eqz v9, :cond_ca

    :goto_b8
    iput-boolean v7, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 921
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v6, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v6, :cond_c4

    .line 922
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v13, v6, Ljcifs/smb/SmbTree;->connectionState:I

    .line 924
    :cond_c4
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v6, v12, v12}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_59

    :cond_ca
    move v7, v8

    .line 920
    goto :goto_b8

    .line 926
    .end local v4           #ssn:Ljcifs/smb/SmbSession;
    :cond_cc
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lt v6, v7, :cond_dd

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 927
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v6}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 928
    :cond_dd
    throw v3
.end method

.method doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1831
    const/4 v0, 0x0

    .line 1834
    .local v0, handle:Ljcifs/dcerpc/DcerpcHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ncacn_np:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[\\PIPE\\netdfs]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v3, v4}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    .line 1838
    :try_start_29
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v2, rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1840
    iget v3, v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    if-eqz v3, :cond_47

    .line 1841
    new-instance v3, Ljcifs/smb/SmbException;

    iget v4, v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_42

    .line 1844
    .end local v2           #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :catchall_42
    move-exception v3

    .line 1845
    :try_start_43
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_5c

    .line 1849
    :cond_46
    :goto_46
    throw v3

    .line 1842
    .restart local v2       #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :cond_47
    :try_start_47
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_42

    move-result-object v3

    .line 1845
    :try_start_4b
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 1849
    :cond_4e
    :goto_4e
    return-object v3

    .line 1846
    :catch_4f
    move-exception v1

    .line 1847
    .local v1, ioe:Ljava/io/IOException;
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_4e

    .line 1848
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4e

    .line 1846
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :catch_5c
    move-exception v1

    .line 1847
    .restart local v1       #ioe:Ljava/io/IOException;
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_46

    .line 1848
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_46
.end method

.method doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 13
    .parameter "list"
    .parameter "files"
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1717
    if-eqz p6, :cond_11

    instance-of v4, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v4, :cond_11

    move-object v0, p6

    .line 1718
    check-cast v0, Ljcifs/smb/DosFileFilter;

    .line 1719
    .local v0, dff:Ljcifs/smb/DosFileFilter;
    iget-object v4, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1720
    iget-object p3, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 1721
    :cond_f
    iget p4, v0, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 1725
    .end local v0           #dff:Ljcifs/smb/DosFileFilter;
    :cond_11
    :try_start_11
    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1726
    .local v1, hostlen:I
    if-eqz v1, :cond_24

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 1727
    :cond_24
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1738
    :goto_27
    return-void

    .line 1728
    :cond_28
    iget-object v4, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v4, :cond_3d

    .line 1729
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_2f} :catch_30
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_2f} :catch_41

    goto :goto_27

    .line 1733
    .end local v1           #hostlen:I
    :catch_30
    move-exception v3

    .line 1734
    .local v3, uhe:Ljava/net/UnknownHostException;
    new-instance v4, Ljcifs/smb/SmbException;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1731
    .end local v3           #uhe:Ljava/net/UnknownHostException;
    .restart local v1       #hostlen:I
    :cond_3d
    :try_start_3d
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_3d .. :try_end_40} :catch_30
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_27

    .line 1735
    .end local v1           #hostlen:I
    :catch_41
    move-exception v2

    .line 1736
    .local v2, mue:Ljava/net/MalformedURLException;
    new-instance v4, Ljcifs/smb/SmbException;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 31
    .parameter "list"
    .parameter "files"
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1966
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v19

    .line 1967
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 1969
    .local v18, p:Ljava/lang/String;
    const/16 v5, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_3d

    .line 1970
    new-instance v5, Ljcifs/smb/SmbException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " directory must end with \'/\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1973
    :cond_3d
    new-instance v20, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1974
    .local v20, req:Ljcifs/smb/SmbComTransaction;
    new-instance v21, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct/range {v21 .. v21}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 1976
    .local v21, resp:Ljcifs/smb/Trans2FindFirst2Response;
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x3

    if-lt v5, v7, :cond_72

    .line 1977
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFindFirstNext: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v8, v0, Ljcifs/smb/SmbComTransaction;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1979
    :cond_72
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1981
    move-object/from16 v0, v21

    iget v0, v0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    move/from16 v23, v0

    .line 1982
    .local v23, sid:I
    new-instance v20, Ljcifs/smb/Trans2FindNext2;

    .end local v20           #req:Ljcifs/smb/SmbComTransaction;
    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    move-object/from16 v0, v21

    iget-object v7, v0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1, v5, v7}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    .line 1987
    .restart local v20       #req:Ljcifs/smb/SmbComTransaction;
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iput-byte v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    .line 1990
    :goto_97
    const/16 v17, 0x0

    .local v17, i:I
    :goto_99
    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    move/from16 v0, v17

    if-ge v0, v5, :cond_117

    .line 1991
    move-object/from16 v0, v21

    iget-object v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    aget-object v15, v5, v17

    .line 1992
    .local v15, e:Ljcifs/smb/FileEntry;
    invoke-interface {v15}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1993
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-ge v5, v7, :cond_d5

    .line 1994
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v16

    .line 1995
    .local v16, h:I
    sget v5, Ljcifs/smb/SmbFile;->HASH_DOT:I

    move/from16 v0, v16

    if-eq v0, v5, :cond_c2

    sget v5, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_d5

    .line 1996
    :cond_c2
    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    const-string v5, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 1990
    .end local v16           #h:I
    :cond_d2
    :goto_d2
    add-int/lit8 v17, v17, 0x1

    goto :goto_99

    .line 2000
    :cond_d5
    if-eqz p5, :cond_e1

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2003
    :cond_e1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d2

    .line 2004
    new-instance v4, Ljcifs/smb/SmbFile;

    const/4 v7, 0x1

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v8

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v9

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v11

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v13

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 2006
    .local v4, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_109

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2009
    :cond_109
    if-eqz p2, :cond_111

    .line 2010
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 2012
    :cond_111
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 2017
    .end local v4           #f:Ljcifs/smb/SmbFile;
    .end local v6           #name:Ljava/lang/String;
    .end local v15           #e:Ljcifs/smb/FileEntry;
    :cond_117
    move-object/from16 v0, v21

    iget-boolean v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v5, :cond_123

    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-nez v5, :cond_134

    .line 2027
    :cond_123
    :try_start_123
    new-instance v5, Ljcifs/smb/SmbComFindClose2;

    move/from16 v0, v23

    invoke-direct {v5, v0}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_133
    .catch Ljcifs/smb/SmbException; {:try_start_123 .. :try_end_133} :catch_14f

    .line 2032
    :cond_133
    :goto_133
    return-void

    .line 2021
    :cond_134
    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    move-object/from16 v0, v21

    iget-object v7, v0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    .line 2022
    invoke-virtual/range {v21 .. v21}, Ljcifs/smb/Trans2FindFirst2Response;->reset()V

    .line 2023
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_97

    .line 2028
    :catch_14f
    move-exception v22

    .line 2029
    .local v22, se:Ljcifs/smb/SmbException;
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v5, v7, :cond_133

    .line 2030
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_133
.end method

.method doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1856
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v2, rpc:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ncacn_np:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[\\PIPE\\srvsvc]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v3, v4}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    .line 1870
    .local v0, handle:Ljcifs/dcerpc/DcerpcHandle;
    :try_start_33
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1871
    iget v3, v2, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    if-eqz v3, :cond_48

    .line 1872
    new-instance v3, Ljcifs/smb/SmbException;

    iget v4, v2, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 1875
    :catchall_43
    move-exception v3

    .line 1876
    :try_start_44
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5d

    .line 1880
    :cond_47
    :goto_47
    throw v3

    .line 1873
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_43

    move-result-object v3

    .line 1876
    :try_start_4c
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 1880
    :cond_4f
    :goto_4f
    return-object v3

    .line 1877
    :catch_50
    move-exception v1

    .line 1878
    .local v1, ioe:Ljava/io/IOException;
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_4f

    .line 1879
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4f

    .line 1877
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_5d
    move-exception v1

    .line 1878
    .restart local v1       #ioe:Ljava/io/IOException;
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_47

    .line 1879
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_47
.end method

.method doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 28
    .parameter "list"
    .parameter "files"
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1902
    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_51

    const/16 v16, 0x0

    .line 1906
    .local v16, listType:I
    :goto_10
    if-nez v16, :cond_56

    .line 1907
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1908
    new-instance v19, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v4, v4, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v6, -0x8000

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v6}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1910
    .local v19, req:Ljcifs/smb/SmbComTransaction;
    new-instance v20, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct/range {v20 .. v20}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    .line 1922
    .local v20, resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1924
    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v4, :cond_92

    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v6, 0xea

    if-eq v4, v6, :cond_92

    .line 1926
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, v20

    iget v6, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v4

    .line 1902
    .end local v16           #listType:I
    .end local v19           #req:Ljcifs/smb/SmbComTransaction;
    .end local v20           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_51
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v16

    goto :goto_10

    .line 1911
    .restart local v16       #listType:I
    :cond_56
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_71

    .line 1912
    new-instance v19, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v6}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1913
    .restart local v19       #req:Ljcifs/smb/SmbComTransaction;
    new-instance v20, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct/range {v20 .. v20}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    .restart local v20       #resp:Ljcifs/smb/SmbComTransactionResponse;
    goto :goto_2f

    .line 1915
    .end local v19           #req:Ljcifs/smb/SmbComTransaction;
    .end local v20           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_71
    new-instance v4, Ljcifs/smb/SmbException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The requested list operations is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1928
    .restart local v19       #req:Ljcifs/smb/SmbComTransaction;
    .restart local v20       #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_92
    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v6, 0xea

    if-ne v4, v6, :cond_c2

    const/16 v17, 0x1

    .line 1930
    .local v17, more:Z
    :goto_9c
    if-eqz v17, :cond_c5

    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 v18, v4, -0x1

    .line 1931
    .local v18, n:I
    :goto_a4
    const/4 v15, 0x0

    .local v15, i:I
    :goto_a5
    move/from16 v0, v18

    if-ge v15, v0, :cond_fd

    .line 1932
    move-object/from16 v0, v20

    iget-object v4, v0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v14, v4, v15

    .line 1933
    .local v14, e:Ljcifs/smb/FileEntry;
    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1934
    .local v5, name:Ljava/lang/String;
    if-eqz p5, :cond_cc

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 1931
    :cond_bf
    :goto_bf
    add-int/lit8 v15, v15, 0x1

    goto :goto_a5

    .line 1928
    .end local v5           #name:Ljava/lang/String;
    .end local v14           #e:Ljcifs/smb/FileEntry;
    .end local v15           #i:I
    .end local v17           #more:Z
    .end local v18           #n:I
    :cond_c2
    const/16 v17, 0x0

    goto :goto_9c

    .line 1930
    .restart local v17       #more:Z
    :cond_c5
    move-object/from16 v0, v20

    iget v0, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    move/from16 v18, v0

    goto :goto_a4

    .line 1936
    .restart local v5       #name:Ljava/lang/String;
    .restart local v14       #e:Ljcifs/smb/FileEntry;
    .restart local v15       #i:I
    .restart local v18       #n:I
    :cond_cc
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_bf

    .line 1938
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getType()I

    move-result v6

    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 1940
    .local v3, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_ef

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 1942
    :cond_ef
    if-eqz p2, :cond_f7

    .line 1943
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 1945
    :cond_f7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 1949
    .end local v3           #f:Ljcifs/smb/SmbFile;
    .end local v5           #name:Ljava/lang/String;
    .end local v14           #e:Ljcifs/smb/FileEntry;
    :cond_fd
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_105

    .line 1956
    :goto_104
    return-void

    .line 1952
    :cond_105
    const/16 v4, -0x29

    move-object/from16 v0, v19

    iput-byte v4, v0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 1953
    const/4 v6, 0x0

    move-object/from16 v4, v20

    check-cast v4, Ljcifs/smb/NetServerEnum2Response;

    iget-object v4, v4, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    .line 1954
    invoke-virtual/range {v20 .. v20}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    .line 1955
    if-nez v17, :cond_2f

    goto :goto_104
.end method

.method doNetShareEnum()[Ljcifs/smb/FileEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1884
    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    .line 1885
    .local v0, req:Ljcifs/smb/SmbComTransaction;
    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    .line 1887
    .local v1, resp:Ljcifs/smb/SmbComTransactionResponse;
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1889
    iget v2, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v2, :cond_1a

    .line 1890
    new-instance v2, Ljcifs/smb/SmbException;

    iget v3, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2

    .line 1892
    :cond_1a
    iget-object v2, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    return-object v2
.end method

.method doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 29
    .parameter "list"
    .parameter "files"
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 1748
    .local v21, p:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1754
    .local v19, last:Ljava/io/IOException;
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3b

    .line 1755
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " directory must end with \'/\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1756
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_63

    .line 1757
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested list operations is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1759
    :cond_63
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1761
    .local v20, map:Ljava/util/HashMap;
    sget-object v3, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3, v5, v6}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1766
    :try_start_78
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v16

    .line 1767
    .local v16, entries:[Ljcifs/smb/FileEntry;
    const/4 v15, 0x0

    .local v15, ei:I
    :goto_7d
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v15, v3, :cond_a3

    .line 1768
    aget-object v14, v16, v15

    .line 1769
    .local v14, e:Ljcifs/smb/FileEntry;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 1770
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_91} :catch_94

    .line 1767
    :cond_91
    add-int/lit8 v15, v15, 0x1

    goto :goto_7d

    .line 1772
    .end local v14           #e:Ljcifs/smb/FileEntry;
    .end local v15           #ei:I
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    :catch_94
    move-exception v17

    .line 1773
    .local v17, ioe:Ljava/io/IOException;
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_a3

    .line 1774
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1778
    .end local v17           #ioe:Ljava/io/IOException;
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v13

    .line 1779
    .local v13, addr:Ljcifs/UniAddress;
    :goto_a7
    if-eqz v13, :cond_f2

    .line 1781
    :try_start_a9
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_dc

    .line 1783
    :try_start_ac
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_c8

    move-result-object v16

    .line 1789
    .restart local v16       #entries:[Ljcifs/smb/FileEntry;
    :goto_b0
    const/4 v15, 0x0

    .restart local v15       #ei:I
    :goto_b1
    :try_start_b1
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v15, v3, :cond_f2

    .line 1790
    aget-object v14, v16, v15

    .line 1791
    .restart local v14       #e:Ljcifs/smb/FileEntry;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 1792
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    :cond_c5
    add-int/lit8 v15, v15, 0x1

    goto :goto_b1

    .line 1784
    .end local v14           #e:Ljcifs/smb/FileEntry;
    .end local v15           #ei:I
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    :catch_c8
    move-exception v17

    .line 1785
    .restart local v17       #ioe:Ljava/io/IOException;
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_d7

    .line 1786
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1787
    :cond_d7
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_da} :catch_dc

    move-result-object v16

    .restart local v16       #entries:[Ljcifs/smb/FileEntry;
    goto :goto_b0

    .line 1795
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    .end local v17           #ioe:Ljava/io/IOException;
    :catch_dc
    move-exception v17

    .line 1796
    .restart local v17       #ioe:Ljava/io/IOException;
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_eb

    .line 1797
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1798
    :cond_eb
    move-object/from16 v19, v17

    .line 1800
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v13

    goto :goto_a7

    .line 1803
    .end local v17           #ioe:Ljava/io/IOException;
    :cond_f2
    if-eqz v19, :cond_113

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1804
    move-object/from16 v0, v19

    instance-of v3, v0, Ljcifs/smb/SmbException;

    if-nez v3, :cond_110

    .line 1805
    new-instance v3, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v3, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1806
    :cond_110
    check-cast v19, Ljcifs/smb/SmbException;

    .end local v19           #last:Ljava/io/IOException;
    throw v19

    .line 1809
    .restart local v19       #last:Ljava/io/IOException;
    :cond_113
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1810
    .local v18, iter:Ljava/util/Iterator;
    :cond_11b
    :goto_11b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_168

    .line 1811
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljcifs/smb/FileEntry;

    .line 1812
    .restart local v14       #e:Ljcifs/smb/FileEntry;
    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1813
    .local v4, name:Ljava/lang/String;
    if-eqz p5, :cond_137

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v4}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 1815
    :cond_137
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11b

    .line 1817
    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getType()I

    move-result v5

    const/16 v6, 0x11

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 1819
    .local v2, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_15a

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 1821
    :cond_15a
    if-eqz p2, :cond_162

    .line 1822
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1824
    :cond_162
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1828
    .end local v2           #f:Ljcifs/smb/SmbFile;
    .end local v4           #name:Ljava/lang/String;
    .end local v14           #e:Ljcifs/smb/FileEntry;
    :cond_168
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    .line 2738
    instance-of v3, p1, Ljcifs/smb/SmbFile;

    if-eqz v3, :cond_48

    move-object v0, p1

    .line 2739
    check-cast v0, Ljcifs/smb/SmbFile;

    .line 2742
    .local v0, f:Ljcifs/smb/SmbFile;
    if-ne p0, v0, :cond_b

    .line 2743
    const/4 v1, 0x1

    .line 2764
    .end local v0           #f:Ljcifs/smb/SmbFile;
    :goto_a
    return v1

    .line 2748
    .restart local v0       #f:Ljcifs/smb/SmbFile;
    :cond_b
    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2750
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2751
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2753
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2755
    :try_start_2d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v3

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_2d .. :try_end_38} :catch_3a

    move-result v1

    .local v1, ret:Z
    goto :goto_a

    .line 2756
    .end local v1           #ret:Z
    :catch_3a
    move-exception v2

    .line 2757
    .local v2, uhe:Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_a

    .line 2764
    .end local v0           #f:Ljcifs/smb/SmbFile;
    .end local v1           #ret:Z
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    :cond_48
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public exists()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 1389
    iget-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 1390
    iget-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 1437
    :goto_f
    return v2

    .line 1393
    :cond_10
    const/16 v2, 0x11

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 1394
    iput-wide v7, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1395
    iput-wide v7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 1396
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 1399
    :try_start_1b
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_36

    .line 1420
    :goto_27
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_2a} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_1b .. :try_end_2a} :catch_5c

    .line 1435
    :goto_2a
    :sswitch_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 1437
    iget-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_f

    .line 1400
    :cond_36
    :try_start_36
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_65

    .line 1401
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 1402
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    goto :goto_27

    .line 1422
    :catch_4c
    move-exception v2

    goto :goto_2a

    .line 1404
    :cond_4e
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/net/UnknownHostException; {:try_start_36 .. :try_end_5b} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_36 .. :try_end_5b} :catch_5c

    goto :goto_27

    .line 1423
    :catch_5c
    move-exception v1

    .line 1424
    .local v1, se:Ljcifs/smb/SmbException;
    invoke-virtual {v1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    .line 1431
    throw v1

    .line 1406
    .end local v1           #se:Ljcifs/smb/SmbException;
    :cond_65
    :try_start_65
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v6, :cond_79

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1408
    :cond_79
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    goto :goto_27

    .line 1410
    :cond_7d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x101

    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 1412
    .local v0, info:Ljcifs/smb/Info;
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 1413
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1414
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J
    :try_end_99
    .catch Ljava/net/UnknownHostException; {:try_start_65 .. :try_end_99} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_65 .. :try_end_99} :catch_5c

    goto :goto_27

    .line 1424
    :sswitch_data_9a
    .sparse-switch
        -0x3ffffff1 -> :sswitch_2a
        -0x3fffffcd -> :sswitch_2a
        -0x3fffffcc -> :sswitch_2a
        -0x3fffffc6 -> :sswitch_2a
    .end sparse-switch
.end method

.method getAddress()Ljcifs/UniAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 816
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    if-nez v0, :cond_9

    .line 817
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    .line 818
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_8
.end method

.method public getAttributes()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2617
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2618
    const/4 v0, 0x0

    .line 2621
    :goto_c
    return v0

    .line 2620
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2621
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_c
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1219
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    :goto_2e
    return-object v1

    :cond_2f
    const-string v1, "smb://"

    goto :goto_2e
.end method

.method public getContentLength()I
    .registers 5

    .prologue
    .line 2795
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 2798
    :goto_b
    return v0

    .line 2796
    :catch_c
    move-exception v0

    .line 2798
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 2808
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 2811
    :goto_4
    return-wide v0

    .line 2809
    :catch_5
    move-exception v0

    .line 2811
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getDfsPath()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x2f

    .line 1529
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 1530
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_b

    .line 1538
    :cond_a
    :goto_a
    return-object v0

    .line 1533
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smb:/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v2, v2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v2, v2, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, path:Ljava/lang/String;
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1535
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDiskFreeSpace()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2461
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    iget v2, p0, Ljcifs/smb/SmbFile;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 2462
    :cond_d
    const/16 v1, 0x3ef

    .line 2464
    .local v1, level:I
    :try_start_f
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J
    :try_end_12
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_12} :catch_14

    move-result-wide v2

    .line 2476
    .end local v1           #level:I
    :goto_13
    return-wide v2

    .line 2465
    .restart local v1       #level:I
    :catch_14
    move-exception v0

    .line 2466
    .local v0, ex:Ljcifs/smb/SmbException;
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 2473
    :pswitch_1c
    throw v0

    .line 2470
    :pswitch_1d
    const/4 v1, 0x1

    .line 2471
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v2

    goto :goto_13

    .line 2476
    .end local v0           #ex:Ljcifs/smb/SmbException;
    .end local v1           #level:I
    :cond_23
    const-wide/16 v2, 0x0

    goto :goto_13

    .line 2466
    :pswitch_data_26
    .packed-switch -0x3fffffff
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method getFirstAddress()Ljcifs/UniAddress;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 821
    iput v12, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 823
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, host:Ljava/lang/String;
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, path:Ljava/lang/String;
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 827
    .local v5, query:Ljava/lang/String;
    if-eqz v5, :cond_63

    .line 828
    const-string v8, "server"

    invoke-static {v5, v8}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 829
    .local v6, server:Ljava/lang/String;
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_37

    .line 830
    new-array v8, v11, [Ljcifs/UniAddress;

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 831
    iget-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-static {v6}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v9

    aput-object v9, v8, v12

    .line 832
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v8

    .line 862
    .end local v6           #server:Ljava/lang/String;
    :goto_36
    return-object v8

    .line 834
    .restart local v6       #server:Ljava/lang/String;
    :cond_37
    const-string v8, "address"

    invoke-static {v5, v8}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_63

    .line 836
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 837
    .local v3, ip:[B
    new-array v8, v11, [Ljcifs/UniAddress;

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 838
    iget-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    new-instance v9, Ljcifs/UniAddress;

    invoke-static {v2, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct {v9, v10}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v12

    .line 839
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v8

    goto :goto_36

    .line 843
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #ip:[B
    .end local v6           #server:Ljava/lang/String;
    :cond_63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a0

    .line 845
    :try_start_69
    const-string v8, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 847
    .local v0, addr:Ljcifs/netbios/NbtAddress;
    const/4 v8, 0x1

    new-array v8, v8, [Ljcifs/UniAddress;

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 848
    iget-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_83
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_83} :catch_88

    .line 862
    .end local v0           #addr:Ljcifs/netbios/NbtAddress;
    :goto_83
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v8

    goto :goto_36

    .line 849
    :catch_88
    move-exception v7

    .line 850
    .local v7, uhe:Ljava/net/UnknownHostException;
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 851
    sget-object v8, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 852
    throw v7

    .line 854
    :cond_97
    sget-object v8, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v8, v11}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v8

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_83

    .line 856
    .end local v7           #uhe:Ljava/net/UnknownHostException;
    :cond_a0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_ae

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 857
    :cond_ae
    invoke-static {v2, v11}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v8

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_83

    .line 859
    :cond_b5
    invoke-static {v2, v12}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v8

    iput-object v8, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_83
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2833
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 2821
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 2824
    :goto_4
    return-wide v0

    .line 2822
    :catch_5
    move-exception v0

    .line 2824
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 1061
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1062
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    .line 1063
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 1064
    .local v0, i:I
    :goto_16
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_21

    .line 1065
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1067
    :cond_21
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1073
    .end local v0           #i:I
    :goto_29
    return-object v1

    .line 1068
    :cond_2a
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 1070
    :cond_42
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_66

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 1073
    :cond_66
    const-string v1, "smb://"

    goto :goto_29
.end method

.method getNextAddress()Ljcifs/UniAddress;
    .registers 5

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, addr:Ljcifs/UniAddress;
    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 867
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    aget-object v0, v1, v2

    .line 868
    :cond_12
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2842
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x2f

    .line 1088
    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 1091
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "smb://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1096
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3c

    .line 1097
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    :goto_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .line 1105
    .local v0, i:I
    :goto_33
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_40

    .line 1106
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 1099
    .end local v0           #i:I
    :cond_3c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 1109
    .restart local v0       #i:I
    :cond_40
    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1112
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :goto_47
    return-object v3

    :cond_48
    const-string v3, "smb://"

    goto :goto_47
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2964
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .registers 12
    .parameter "resolveSids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2881
    const/high16 v7, 0x2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v4, v5

    :goto_d
    invoke-virtual {p0, v5, v7, v6, v4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v1

    .line 2887
    .local v1, f:I
    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v4, 0x4

    invoke-direct {v2, v1, v4}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    .line 2888
    .local v2, request:Ljcifs/smb/NtTransQuerySecurityDesc;
    new-instance v3, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v3}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    .line 2891
    .local v3, response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :try_start_1c
    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2e

    .line 2893
    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2896
    iget-object v4, v3, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v4, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 2897
    .local v0, aces:[Ljcifs/smb/ACE;
    if-eqz v0, :cond_2b

    .line 2898
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    .line 2900
    :cond_2b
    return-object v0

    .end local v0           #aces:[Ljcifs/smb/ACE;
    .end local v1           #f:I
    .end local v2           #request:Ljcifs/smb/NtTransQuerySecurityDesc;
    .end local v3           #response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :cond_2c
    move v4, v6

    .line 2881
    goto :goto_d

    .line 2893
    .restart local v1       #f:I
    .restart local v2       #request:Ljcifs/smb/NtTransQuerySecurityDesc;
    .restart local v3       #response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :catchall_2e
    move-exception v4

    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    throw v4
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1257
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 1259
    const/4 v0, 0x0

    .line 1261
    .end local v0           #str:Ljava/lang/String;
    :cond_d
    return-object v0
.end method

.method getServerWithDfs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_9

    .line 1242
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 1244
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getShare()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1237
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .registers 12
    .parameter "resolveSids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2920
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2925
    .local v3, p:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2926
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v5

    .line 2928
    .local v5, server:Ljava/lang/String;
    new-instance v4, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v6, v6, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    .local v4, rpc:Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ncacn_np:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\\PIPE\\srvsvc]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v6, v7}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    .line 2932
    .local v1, handle:Ljcifs/dcerpc/DcerpcHandle;
    :try_start_37
    invoke-virtual {v1, v4}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 2933
    iget v6, v4, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    if-eqz v6, :cond_4c

    .line 2934
    new-instance v6, Ljcifs/smb/SmbException;

    iget v7, v4, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v6
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_47

    .line 2939
    :catchall_47
    move-exception v6

    .line 2940
    :try_start_48
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_66

    .line 2944
    :cond_4b
    :goto_4b
    throw v6

    .line 2935
    :cond_4c
    :try_start_4c
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    move-result-object v0

    .line 2936
    .local v0, aces:[Ljcifs/smb/ACE;
    if-eqz v0, :cond_55

    .line 2937
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_47

    .line 2940
    :cond_55
    :try_start_55
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 2947
    :cond_58
    :goto_58
    return-object v0

    .line 2941
    :catch_59
    move-exception v2

    .line 2942
    .local v2, ioe:Ljava/io/IOException;
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lt v6, v9, :cond_58

    .line 2943
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_58

    .line 2941
    .end local v0           #aces:[Ljcifs/smb/ACE;
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_66
    move-exception v2

    .line 2942
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v7, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    if-lt v7, v9, :cond_4b

    .line 2943
    sget-object v7, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4b
.end method

.method public getType()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1270
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v3, :cond_12

    .line 1271
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_15

    .line 1272
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1304
    :cond_12
    :goto_12
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    :goto_14
    return v3

    .line 1273
    :cond_15
    iget-object v3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 1275
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1276
    iget-object v3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v4, "IPC$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1277
    const/16 v3, 0x10

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1278
    :cond_2b
    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "LPT1:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1279
    const/16 v3, 0x20

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1280
    :cond_3c
    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "COMM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1281
    const/16 v3, 0x40

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1283
    :cond_4d
    const/16 v3, 0x8

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1285
    :cond_52
    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_69

    .line 1286
    :cond_66
    iput v5, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1290
    :cond_69
    :try_start_69
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;
    :try_end_6c
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_6c} :catch_8c

    move-result-object v0

    .line 1294
    .local v0, addr:Ljcifs/UniAddress;
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    if-eqz v3, :cond_99

    .line 1295
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v1

    .line 1296
    .local v1, code:I
    const/16 v3, 0x1d

    if-eq v1, v3, :cond_87

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_99

    .line 1297
    :cond_87
    iput v5, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1298
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_14

    .line 1291
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v1           #code:I
    :catch_8c
    move-exception v2

    .line 1292
    .local v2, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1301
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    .restart local v0       #addr:Ljcifs/UniAddress;
    :cond_99
    const/4 v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_12
.end method

.method public getUncPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1203
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method getUncPath0()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x2e

    const/4 v11, 0x1

    const/16 v10, 0x2f

    .line 1128
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v8, :cond_a2

    .line 1129
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1130
    .local v1, in:[C
    array-length v8, v1

    new-array v5, v8, [C

    .line 1131
    .local v5, out:[C
    array-length v2, v1

    .line 1135
    .local v2, length:I
    const/4 v6, 0x0

    .line 1136
    .local v6, state:I
    const/4 v3, 0x0

    .line 1137
    .local v3, o:I
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v3

    .end local v3           #o:I
    .local v4, o:I
    :goto_1c
    if-ge v0, v2, :cond_82

    .line 1138
    packed-switch v6, :pswitch_data_de

    move v3, v4

    .line 1137
    .end local v4           #o:I
    .restart local v3       #o:I
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #o:I
    .restart local v4       #o:I
    goto :goto_1c

    .line 1140
    :pswitch_26
    aget-char v8, v1, v0

    if-eq v8, v10, :cond_2b

    .line 1195
    .end local v0           #i:I
    .end local v1           #in:[C
    .end local v2           #length:I
    .end local v4           #o:I
    .end local v5           #out:[C
    .end local v6           #state:I
    :goto_2a
    return-object v7

    .line 1143
    .restart local v0       #i:I
    .restart local v1       #in:[C
    .restart local v2       #length:I
    .restart local v4       #o:I
    .restart local v5       #out:[C
    .restart local v6       #state:I
    :cond_2b
    add-int/lit8 v3, v4, 0x1

    .end local v4           #o:I
    .restart local v3       #o:I
    aget-char v8, v1, v0

    aput-char v8, v5, v4

    .line 1144
    const/4 v6, 0x1

    .line 1145
    goto :goto_22

    .line 1147
    .end local v3           #o:I
    .restart local v4       #o:I
    :pswitch_33
    aget-char v8, v1, v0

    if-ne v8, v10, :cond_39

    move v3, v4

    .line 1148
    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_22

    .line 1149
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_39
    aget-char v8, v1, v0

    if-ne v8, v9, :cond_4b

    add-int/lit8 v8, v0, 0x1

    if-ge v8, v2, :cond_47

    add-int/lit8 v8, v0, 0x1

    aget-char v8, v1, v8

    if-ne v8, v10, :cond_4b

    .line 1151
    :cond_47
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .line 1152
    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_22

    .line 1153
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_4b
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v2, :cond_75

    aget-char v8, v1, v0

    if-ne v8, v9, :cond_75

    add-int/lit8 v8, v0, 0x1

    aget-char v8, v1, v8

    if-ne v8, v9, :cond_75

    add-int/lit8 v8, v0, 0x2

    if-ge v8, v2, :cond_63

    add-int/lit8 v8, v0, 0x2

    aget-char v8, v1, v8

    if-ne v8, v10, :cond_75

    .line 1157
    :cond_63
    add-int/lit8 v0, v0, 0x2

    .line 1158
    if-ne v4, v11, :cond_69

    move v3, v4

    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_22

    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_69
    move v3, v4

    .line 1160
    .end local v4           #o:I
    .restart local v3       #o:I
    :cond_6a
    add-int/lit8 v3, v3, -0x1

    .line 1161
    if-le v3, v11, :cond_22

    add-int/lit8 v8, v3, -0x1

    aget-char v8, v5, v8

    if-ne v8, v10, :cond_6a

    goto :goto_22

    .line 1164
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_75
    const/4 v6, 0x2

    .line 1166
    :pswitch_76
    aget-char v8, v1, v0

    if-ne v8, v10, :cond_7b

    .line 1167
    const/4 v6, 0x1

    .line 1169
    :cond_7b
    add-int/lit8 v3, v4, 0x1

    .end local v4           #o:I
    .restart local v3       #o:I
    aget-char v8, v1, v0

    aput-char v8, v5, v4

    goto :goto_22

    .line 1174
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_82
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 1176
    if-le v4, v11, :cond_d6

    .line 1177
    add-int/lit8 v3, v4, -0x1

    .line 1178
    .end local v4           #o:I
    .restart local v3       #o:I
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1179
    if-gez v0, :cond_a5

    .line 1180
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1181
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1195
    .end local v0           #i:I
    .end local v1           #in:[C
    .end local v2           #length:I
    .end local v3           #o:I
    .end local v5           #out:[C
    .end local v6           #state:I
    :cond_a2
    :goto_a2
    iget-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_2a

    .line 1182
    .restart local v0       #i:I
    .restart local v1       #in:[C
    .restart local v2       #length:I
    .restart local v3       #o:I
    .restart local v5       #out:[C
    .restart local v6       #state:I
    :cond_a5
    if-ne v0, v3, :cond_b4

    .line 1183
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1184
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a2

    .line 1186
    :cond_b4
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1187
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v8, v5, v3

    if-ne v8, v10, :cond_d3

    .end local v3           #o:I
    :goto_c2
    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1188
    iget-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v8, 0x5c

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a2

    .line 1187
    .restart local v3       #o:I
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 1191
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_d6
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1192
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a2

    .line 1138
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_26
        :pswitch_33
        :pswitch_76
    .end packed-switch
.end method

.method hasNextAddress()Z
    .registers 3

    .prologue
    .line 871
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 2688
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->hashCode()I
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_7} :catch_17

    move-result v0

    .line 2692
    .local v0, hash:I
    :goto_8
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2693
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 2689
    .end local v0           #hash:I
    :catch_17
    move-exception v1

    .line 2690
    .local v1, uhe:Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .restart local v0       #hash:I
    goto :goto_8
.end method

.method isConnected()Z
    .registers 3

    .prologue
    .line 960
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isDirectory()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1480
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 1484
    :cond_c
    :goto_c
    return v0

    .line 1483
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_c

    .line 1484
    :cond_15
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public isFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1494
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 1498
    :goto_c
    return v1

    .line 1497
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1498
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_18

    :goto_16
    move v1, v0

    goto :goto_c

    :cond_18
    move v0, v1

    goto :goto_16
.end method

.method public isHidden()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1510
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1519
    :cond_6
    :goto_6
    return v1

    .line 1512
    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1d

    .line 1513
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    .line 1514
    goto :goto_6

    .line 1518
    :cond_1d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1519
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    :goto_27
    move v1, v0

    goto :goto_6

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method isOpen()Z
    .registers 4

    .prologue
    .line 1004
    iget-boolean v1, p0, Ljcifs/smb/SmbFile;->opened:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Ljcifs/smb/SmbFile;->tree_num:I

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v2, v2, Ljcifs/smb/SmbTree;->tree_num:I

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    .line 1005
    .local v0, ans:Z
    :goto_13
    return v0

    .line 1004
    .end local v0           #ans:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isWorkgroup0()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 1307
    iget v2, p0, Ljcifs/smb/SmbFile;->type:I

    if-eq v2, v4, :cond_12

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 1308
    :cond_12
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    move v2, v3

    .line 1324
    :goto_15
    return v2

    .line 1311
    :cond_16
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1312
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 1313
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    .line 1314
    .local v0, addr:Ljcifs/UniAddress;
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_3f

    .line 1315
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v2}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v1

    .line 1316
    .local v1, code:I
    const/16 v2, 0x1d

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_3f

    .line 1317
    :cond_3b
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    move v2, v3

    .line 1318
    goto :goto_15

    .line 1321
    .end local v1           #code:I
    :cond_3f
    const/4 v2, 0x4

    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1324
    .end local v0           #addr:Ljcifs/UniAddress;
    :cond_42
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public lastModified()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 1572
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1573
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 1575
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public length()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2428
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_d

    .line 2429
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2448
    :goto_c
    return-wide v3

    .line 2432
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_37

    .line 2434
    const/4 v1, 0x1

    .line 2436
    .local v1, level:I
    new-instance v2, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v2, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2437
    .local v2, response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    new-instance v3, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v3, v1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v3, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2439
    iget-object v3, v2, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v3}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v3

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2447
    .end local v1           #level:I
    .end local v2           #response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2448
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_c

    .line 2440
    :cond_37
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_59

    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_59

    .line 2441
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x102

    invoke-virtual {p0, v3, v4}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 2443
    .local v0, info:Ljcifs/smb/Info;
    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v3

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_2b

    .line 2445
    .end local v0           #info:Ljcifs/smb/Info;
    :cond_59
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_2b
.end method

.method public list()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1599
    const-string v0, "*"

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .registers 12
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v1, list:Ljava/util/ArrayList;
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1703
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public list(Ljcifs/smb/SmbFilenameFilter;)[Ljava/lang/String;
    .registers 5
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1612
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1641
    const-string v0, "*"

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .registers 4
    .parameter "wildcard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1674
    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .registers 12
    .parameter "wildcard"
    .parameter "searchAttributes"
    .parameter "fnf"
    .parameter "ff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v1, list:Ljava/util/ArrayList;
    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1709
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljcifs/smb/SmbFile;

    check-cast v0, [Ljcifs/smb/SmbFile;

    return-object v0
.end method

.method public listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .registers 5
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1697
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .registers 5
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1686
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2505
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 2508
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2515
    :cond_13
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_32

    .line 2516
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2518
    :cond_32
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2520
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2521
    return-void
.end method

.method public mkdirs()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2537
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_18

    .line 2541
    .local v1, parent:Ljcifs/smb/SmbFile;
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2542
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->mkdirs()V

    .line 2544
    :cond_14
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 2545
    .end local v1           #parent:Ljcifs/smb/SmbFile;
    :goto_17
    return-void

    .line 2538
    :catch_18
    move-exception v0

    .line 2539
    .local v0, ioe:Ljava/io/IOException;
    goto :goto_17
.end method

.method open(IIII)V
    .registers 6
    .parameter "flags"
    .parameter "access"
    .parameter "attrs"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1002
    :goto_6
    return-void

    .line 999
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbFile;->fid:I

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 1001
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v0, v0, Ljcifs/smb/SmbTree;->tree_num:I

    iput v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    goto :goto_6
.end method

.method open0(IIII)I
    .registers 16
    .parameter "flags"
    .parameter "access"
    .parameter "attrs"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 965
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 967
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_26

    .line 968
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 974
    :cond_26
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 975
    new-instance v9, Ljcifs/smb/SmbComNTCreateAndXResponse;

    invoke-direct {v9}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    .line 976
    .local v9, response:Ljcifs/smb/SmbComNTCreateAndXResponse;
    new-instance v0, Ljcifs/smb/SmbComNTCreateAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    .line 977
    .local v0, request:Ljcifs/smb/SmbComNTCreateAndX;
    instance-of v1, p0, Ljcifs/smb/SmbNamedPipe;

    if-eqz v1, :cond_59

    .line 978
    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 v1, v1, 0x16

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 979
    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 980
    iput-boolean v10, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    .line 982
    :cond_59
    invoke-virtual {p0, v0, v9}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 983
    iget v8, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 984
    .local v8, f:I
    iget v1, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 986
    iput-boolean v10, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 993
    .end local v0           #request:Ljcifs/smb/SmbComNTCreateAndX;
    .end local v9           #response:Ljcifs/smb/SmbComNTCreateAndXResponse;
    :goto_6f
    return v8

    .line 988
    .end local v8           #f:I
    :cond_70
    new-instance v9, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {v9}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    .line 989
    .local v9, response:Ljcifs/smb/SmbComOpenAndXResponse;
    new-instance v1, Ljcifs/smb/SmbComOpenAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1, v7}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, v1, v9}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 990
    iget v8, v9, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    .restart local v8       #f:I
    goto :goto_6f
.end method

.method protected pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "path1"
    .parameter "path2"

    .prologue
    const/16 v0, 0x2f

    const/16 v3, 0x2e

    const/4 v1, 0x1

    .line 2701
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2702
    .local v2, p1:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2703
    .local v4, p2:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v2

    .line 2704
    .local v5, l1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v4

    .line 2707
    .local v6, l2:I
    if-le v5, v1, :cond_24

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_24

    .line 2712
    :cond_23
    :goto_23
    return v1

    .line 2709
    :cond_24
    if-le v6, v1, :cond_2e

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_23

    .line 2712
    :cond_2e
    if-ne v5, v6, :cond_38

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_38
    const/4 v1, 0x0

    goto :goto_23
.end method

.method queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .registers 8
    .parameter "path"
    .parameter "infoLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1330
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_22

    .line 1331
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1348
    :cond_22
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1354
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    .line 1356
    .local v0, response:Ljcifs/smb/Trans2QueryPathInformationResponse;
    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1358
    iget-object v0, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    .line 1369
    .end local v0           #response:Ljcifs/smb/Trans2QueryPathInformationResponse;
    :goto_3f
    return-object v0

    .line 1365
    :cond_40
    new-instance v0, Ljcifs/smb/SmbComQueryInformationResponse;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    .line 1368
    .local v0, response:Ljcifs/smb/SmbComQueryInformationResponse;
    new-instance v1, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_3f
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .registers 7
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2048
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 2049
    :cond_18
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_20
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2053
    invoke-virtual {p1, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2055
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2056
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_38
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_65

    .line 2060
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2062
    :cond_65
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2063
    iput-wide v3, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2069
    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2070
    return-void
.end method

.method resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .registers 16
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 664
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 666
    sget-object v8, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v9, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v9, v9, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v9, v9, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v9, v9, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v10, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v10, v10, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v11, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v12, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v8, v9, v10, v11, v12}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    .line 671
    .local v1, dr:Ljcifs/smb/DfsReferral;
    if-eqz v1, :cond_12f

    .line 672
    const/4 v5, 0x0

    .line 674
    .local v5, service:Ljava/lang/String;
    if-eqz p1, :cond_26

    .line 675
    iget-byte v8, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v8, :sswitch_data_154

    .line 686
    const-string v5, "A:"

    .line 690
    :cond_26
    :goto_26
    :pswitch_26
    move-object v6, v1

    .line 691
    .local v6, start:Ljcifs/smb/DfsReferral;
    const/4 v4, 0x0

    .line 695
    .local v4, se:Ljcifs/smb/SmbException;
    :cond_28
    :try_start_28
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_47

    .line 696
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DFS redirect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 698
    :cond_47
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v8}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    .line 699
    .local v0, addr:Ljcifs/UniAddress;
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-static {v0, v8}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v7

    .line 705
    .local v7, trans:Ljcifs/smb/SmbTransport;
    invoke-virtual {v7}, Ljcifs/smb/SmbTransport;->connect()V

    .line 706
    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v7, v8}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v8

    iget-object v9, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v8

    iput-object v8, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 708
    if-eq v1, v6, :cond_75

    iget-object v8, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v8, :cond_75

    .line 709
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    iget-object v9, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_75} :catch_86

    .line 712
    :cond_75
    const/4 v4, 0x0

    .line 726
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v7           #trans:Ljcifs/smb/SmbTransport;
    :goto_76
    if-eqz v4, :cond_9b

    .line 727
    throw v4

    .end local v4           #se:Ljcifs/smb/SmbException;
    .end local v6           #start:Ljcifs/smb/DfsReferral;
    :sswitch_79
    move-object v8, p1

    .line 678
    check-cast v8, Ljcifs/smb/SmbComTransaction;

    iget-byte v8, v8, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_15e

    .line 682
    const-string v5, "A:"

    .line 684
    goto :goto_26

    .line 715
    .restart local v4       #se:Ljcifs/smb/SmbException;
    .restart local v6       #start:Ljcifs/smb/DfsReferral;
    :catch_86
    move-exception v3

    .line 716
    .local v3, ioe:Ljava/io/IOException;
    instance-of v8, v3, Ljcifs/smb/SmbException;

    if-eqz v8, :cond_93

    move-object v4, v3

    .line 717
    check-cast v4, Ljcifs/smb/SmbException;

    .line 723
    :goto_8e
    iget-object v1, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 724
    if-ne v1, v6, :cond_28

    goto :goto_76

    .line 719
    :cond_93
    new-instance v4, Ljcifs/smb/SmbException;

    .end local v4           #se:Ljcifs/smb/SmbException;
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v4, v8, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #se:Ljcifs/smb/SmbException;
    goto :goto_8e

    .line 729
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_9b
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_a7

    .line 730
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v8, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 732
    :cond_a7
    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 733
    iget v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v8, :cond_11c

    .line 734
    iput v13, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 738
    :cond_af
    :goto_af
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v9, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, dunc:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 740
    const-string v2, "\\"

    .line 741
    :cond_c1
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e4

    .line 742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    :cond_e4
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 745
    if-eqz p1, :cond_111

    iget-object v8, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v8, :cond_111

    iget-object v8, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_111

    const-string v8, "\\"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_111

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 751
    :cond_111
    if-eqz p1, :cond_11b

    .line 752
    iput-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 753
    iget v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 764
    .end local v2           #dunc:Ljava/lang/String;
    .end local v4           #se:Ljcifs/smb/SmbException;
    .end local v5           #service:Ljava/lang/String;
    .end local v6           #start:Ljcifs/smb/DfsReferral;
    :cond_11b
    :goto_11b
    return-void

    .line 735
    .restart local v4       #se:Ljcifs/smb/SmbException;
    .restart local v5       #service:Ljava/lang/String;
    .restart local v6       #start:Ljcifs/smb/DfsReferral;
    :cond_11c
    iget v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v9, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_af

    .line 736
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_af

    .line 755
    .end local v4           #se:Ljcifs/smb/SmbException;
    .end local v5           #service:Ljava/lang/String;
    .end local v6           #start:Ljcifs/smb/DfsReferral;
    :cond_12f
    iget-object v8, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v8, v8, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v8, :cond_14a

    instance-of v8, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    if-nez v8, :cond_14a

    instance-of v8, p1, Ljcifs/smb/SmbComClose;

    if-nez v8, :cond_14a

    instance-of v8, p1, Ljcifs/smb/SmbComFindClose2;

    if-nez v8, :cond_14a

    .line 759
    new-instance v8, Ljcifs/smb/SmbException;

    const v9, -0x3ffffddb

    invoke-direct {v8, v9, v13}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v8

    .line 761
    :cond_14a
    if-eqz p1, :cond_11b

    .line 762
    iget v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    and-int/lit16 v8, v8, -0x1001

    iput v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto :goto_11b

    .line 675
    nop

    :sswitch_data_154
    .sparse-switch
        0x25 -> :sswitch_79
        0x32 -> :sswitch_79
    .end sparse-switch

    .line 678
    :pswitch_data_15e
    .packed-switch 0x10
        :pswitch_26
    .end packed-switch
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 5
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 768
    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 770
    :try_start_3
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_8
    .catch Ljcifs/smb/DfsReferral; {:try_start_3 .. :try_end_8} :catch_9

    .line 779
    return-void

    .line 772
    :catch_9
    move-exception v0

    .line 773
    .local v0, dre:Ljcifs/smb/DfsReferral;
    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-eqz v1, :cond_f

    .line 774
    throw v0

    .line 776
    :cond_f
    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    goto :goto_0
.end method

.method public setAttributes(I)V
    .registers 8
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 2632
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2633
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2635
    :cond_15
    and-int/lit16 v1, p1, 0x30a7

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2636
    return-void
.end method

.method public setCreateTime(J)V
    .registers 9
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2584
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2585
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2588
    :cond_13
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2589
    return-void
.end method

.method public setLastModified(J)V
    .registers 9
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2600
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2601
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2604
    :cond_13
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2605
    return-void
.end method

.method setPathInformation(IJJ)V
    .registers 16
    .parameter "attrs"
    .parameter "ctime"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 2562
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2563
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v7, v0, 0x10

    .line 2565
    .local v7, dir:I
    const/16 v3, 0x100

    if-eqz v7, :cond_2a

    move v0, v2

    :goto_f
    invoke-virtual {p0, v2, v3, v7, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v1

    .line 2567
    .local v1, f:I
    new-instance v0, Ljcifs/smb/Trans2SetFileInformation;

    or-int v2, p1, v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v2, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v2}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2569
    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2571
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2572
    return-void

    .line 2565
    .end local v1           #f:I
    :cond_2a
    const/16 v0, 0x40

    goto :goto_f
.end method

.method public setReadOnly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2645
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 2646
    return-void
.end method

.method public setReadWrite()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2655
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 2656
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2783
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 2669
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    return-object v0
.end method
