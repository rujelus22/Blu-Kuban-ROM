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

    .line 269
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

    .line 484
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

    if-eqz v0, :cond_23

    .line 465
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smb://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 466
    :goto_1d
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 467
    return-void

    .line 466
    :cond_23
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_1d
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

    if-eqz v0, :cond_2e

    .line 587
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smb://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 588
    :goto_1d
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 589
    and-int/lit8 v0, p3, -0x8

    if-eqz v0, :cond_38

    .line 590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_2e
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_1d

    .line 592
    :cond_38
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

    if-eqz v1, :cond_6a

    .line 621
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smb://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 622
    :goto_23
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 625
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 628
    iget-object v1, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 629
    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 630
    iget-object v1, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 632
    :cond_36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 633
    .local v0, last:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_49

    .line 634
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 636
    :cond_49
    iget-object v1, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_8d

    .line 637
    const-string v1, "\\"

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 646
    :goto_51
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

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    .line 653
    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 655
    return-void

    .line 622
    .end local v0           #last:I
    :cond_6a
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x10

    if-lez v1, :cond_8a

    const-string v1, "/"

    :goto_7d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_23

    :cond_8a
    const-string v1, ""

    goto :goto_7d

    .line 638
    .restart local v0       #last:I
    :cond_8d
    iget-object v1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_51

    .line 641
    :cond_ad
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_51
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
    .line 2867
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v4

    .line 2870
    .local v4, server:Ljava/lang/String;
    if-eqz p2, :cond_2f

    .line 2871
    array-length v6, p1

    new-array v5, v6, [Ljcifs/smb/SID;

    .line 2872
    .local v5, sids:[Ljcifs/smb/SID;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 2874
    .local v2, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, ai:I
    :goto_d
    array-length v6, p1

    if-lt v0, v6, :cond_15

    .line 2878
    const/4 v3, 0x0

    .local v3, off:I
    :goto_11
    array-length v6, v5

    if-lt v3, v6, :cond_1e

    .line 2890
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #off:I
    .end local v5           #sids:[Ljcifs/smb/SID;
    :cond_14
    return-void

    .line 2875
    .restart local v2       #names:[Ljava/lang/String;
    .restart local v5       #sids:[Ljcifs/smb/SID;
    :cond_15
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v6, v5, v0

    .line 2874
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2879
    .restart local v3       #off:I
    :cond_1e
    array-length v6, v5

    sub-int v1, v6, v3

    .line 2880
    .local v1, len:I
    const/16 v6, 0x40

    if-le v1, v6, :cond_27

    .line 2881
    const/16 v1, 0x40

    .line 2882
    :cond_27
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v4, v6, v5, v3, v1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    .line 2878
    add-int/lit8 v3, v3, 0xa

    goto :goto_11

    .line 2885
    .end local v0           #ai:I
    .end local v1           #len:I
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #off:I
    .end local v5           #sids:[Ljcifs/smb/SID;
    :cond_2f
    const/4 v0, 0x0

    .restart local v0       #ai:I
    :goto_30
    array-length v6, p1

    if-ge v0, v6, :cond_14

    .line 2886
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v4, v6, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 2887
    aget-object v6, p1, v0

    iget-object v6, v6, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iget-object v7, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v7, v6, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 2885
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
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
    .line 2503
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2504
    .local v0, response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2506
    iget v1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_24

    .line 2507
    iget-object v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2511
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

    if-lt v2, v6, :cond_23

    .line 801
    if-le v1, v5, :cond_4d

    .line 802
    new-instance v4, Ljava/lang/String;

    sub-int v6, v1, v5

    invoke-direct {v4, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 803
    .local v4, p:Ljava/lang/String;
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

    .line 809
    .end local v4           #p:Ljava/lang/String;
    :goto_22
    return-object v6

    .line 787
    :cond_23
    aget-char v0, v3, v2

    .line 788
    .local v0, ch:I
    const/16 v6, 0x26

    if-ne v0, v6, :cond_47

    .line 789
    if-le v1, v5, :cond_42

    .line 790
    new-instance v4, Ljava/lang/String;

    sub-int v6, v1, v5

    invoke-direct {v4, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 791
    .restart local v4       #p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 792
    add-int/lit8 v1, v1, 0x1

    .line 793
    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v6, v3, v1, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_22

    .line 796
    .end local v4           #p:Ljava/lang/String;
    :cond_42
    add-int/lit8 v5, v2, 0x1

    .line 786
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 797
    :cond_47
    const/16 v6, 0x3d

    if-ne v0, v6, :cond_44

    .line 798
    move v1, v2

    goto :goto_44

    .line 809
    .end local v0           #ch:I
    :cond_4d
    const/4 v6, 0x0

    goto :goto_22
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
    .line 1470
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 1471
    const/4 v0, 0x1

    .line 1473
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

    .line 1488
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 1491
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
    .line 1047
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    .line 1048
    return-void
.end method

.method close(IJ)V
    .registers 8
    .parameter "f"
    .parameter "lastWriteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1026
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_19

    .line 1027
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1032
    :cond_19
    iget v1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2c

    .line 1033
    new-instance v1, Ljcifs/smb/SmbComClose;

    invoke-direct {v1, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1038
    :goto_2b
    return-void

    .line 1035
    :cond_2c
    new-instance v0, Ljcifs/smb/SmbComClosePrintFile;

    iget v1, p0, Ljcifs/smb/SmbFile;->fid:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComClosePrintFile;-><init>(J)V

    .line 1036
    .local v0, request:Ljcifs/smb/SmbComClosePrintFile;
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_2b
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
    .line 1040
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1045
    :goto_6
    return-void

    .line 1043
    :cond_7
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    goto :goto_6
.end method

.method public closePrintJob()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2933
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->close()V

    .line 2934
    return-void
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
    .line 2303
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p1

    iget-object v1, v0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 2304
    :cond_c
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Invalid operation for workgroups or servers"

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2307
    :cond_14
    new-instance v14, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v14}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    .line 2308
    .local v14, req:Ljcifs/smb/SmbComReadAndX;
    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    .line 2310
    .local v7, resp:Ljcifs/smb/SmbComReadAndXResponse;
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2311
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2322
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2328
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2329
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v5, 0x0

    .line 2330
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

    .line 2329
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2331
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Source and destination paths overlap."

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_2a .. :try_end_65} :catch_65

    .line 2333
    :catch_65
    move-exception v1

    .line 2336
    :cond_66
    new-instance v5, Ljcifs/smb/SmbFile$WriterThread;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    .line 2337
    .local v5, w:Ljcifs/smb/SmbFile$WriterThread;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljcifs/smb/SmbFile$WriterThread;->setDaemon(Z)V

    .line 2338
    invoke-virtual {v5}, Ljcifs/smb/SmbFile$WriterThread;->start()V

    .line 2344
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v15, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 2345
    .local v15, t1:Ljcifs/smb/SmbTransport;
    move-object/from16 v0, p1

    iget-object v1, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    .line 2347
    .local v16, t2:Ljcifs/smb/SmbTransport;
    iget v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    move-object/from16 v0, v16

    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v1, v2, :cond_bf

    .line 2348
    iget v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    move-object/from16 v0, v16

    iput v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 2353
    :goto_94
    iget v1, v15, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v1, v1, -0x46

    iget v2, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v2, v2, -0x46

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2354
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

    .line 2357
    :try_start_b2
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c6

    .line 2359
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2361
    return-void

    .line 2350
    .end local v3           #b:[[B
    .end local v4           #bsize:I
    :cond_bf
    move-object/from16 v0, v16

    iget v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v1, v15, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_94

    .line 2358
    .restart local v3       #b:[[B
    .restart local v4       #bsize:I
    :catchall_c6
    move-exception v1

    .line 2359
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2360
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
    .line 2160
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_57

    .line 2161
    const/16 v4, 0x11

    move-object/from16 v0, p0

    iput v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2162
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2163
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2164
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2166
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    .line 2167
    const/16 v5, 0x101

    .line 2166
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v21

    .line 2168
    .local v21, info:Ljcifs/smb/Info;
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getAttributes()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2169
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2170
    invoke-interface/range {v21 .. v21}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2175
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2179
    .end local v21           #info:Ljcifs/smb/Info;
    :cond_57
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 2183
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v23

    .line 2184
    .local v23, path:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7c

    .line 2186
    :try_start_68
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 2187
    move-object/from16 v0, p0

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_7c
    .catch Ljcifs/smb/SmbException; {:try_start_68 .. :try_end_7c} :catch_92

    .line 2196
    :cond_7c
    const-string v4, "*"

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v18

    .line 2198
    .local v18, files:[Ljcifs/smb/SmbFile;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_8a
    :try_start_8a
    move-object/from16 v0, v18

    array-length v4, v0
    :try_end_8d
    .catch Ljava/net/UnknownHostException; {:try_start_8a .. :try_end_8d} :catch_da
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_8d} :catch_eb

    move/from16 v0, v19

    if-lt v0, v4, :cond_a6

    .line 2277
    .end local v18           #files:[Ljcifs/smb/SmbFile;
    .end local v19           #i:I
    .end local v23           #path:Ljava/lang/String;
    :goto_91
    return-void

    .line 2188
    .restart local v23       #path:Ljava/lang/String;
    :catch_92
    move-exception v25

    .line 2189
    .local v25, se:Ljcifs/smb/SmbException;
    invoke-virtual/range {v25 .. v25}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3fffffde

    if-eq v4, v5, :cond_7c

    .line 2190
    invoke-virtual/range {v25 .. v25}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3fffffcb

    if-eq v4, v5, :cond_7c

    .line 2191
    throw v25

    .line 2199
    .end local v25           #se:Ljcifs/smb/SmbException;
    .restart local v18       #files:[Ljcifs/smb/SmbFile;
    .restart local v19       #i:I
    :cond_a6
    :try_start_a6
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 2200
    aget-object v4, v18, v19

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2201
    aget-object v4, v18, v19

    iget v6, v4, Ljcifs/smb/SmbFile;->type:I

    .line 2202
    aget-object v4, v18, v19

    iget v7, v4, Ljcifs/smb/SmbFile;->attributes:I

    .line 2203
    aget-object v4, v18, v19

    iget-wide v8, v4, Ljcifs/smb/SmbFile;->createTime:J

    .line 2204
    aget-object v4, v18, v19

    iget-wide v10, v4, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2205
    aget-object v4, v18, v19

    iget-wide v12, v4, Ljcifs/smb/SmbFile;->size:J

    move-object/from16 v4, p1

    .line 2199
    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 2206
    .local v3, ndest:Ljcifs/smb/SmbFile;
    aget-object v4, v18, v19

    move-object v5, v3

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_d7
    .catch Ljava/net/UnknownHostException; {:try_start_a6 .. :try_end_d7} :catch_da
    .catch Ljava/net/MalformedURLException; {:try_start_a6 .. :try_end_d7} :catch_eb

    .line 2198
    add-int/lit8 v19, v19, 0x1

    goto :goto_8a

    .line 2208
    .end local v3           #ndest:Ljcifs/smb/SmbFile;
    :catch_da
    move-exception v26

    .line 2209
    .local v26, uhe:Ljava/net/UnknownHostException;
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2210
    .end local v26           #uhe:Ljava/net/UnknownHostException;
    :catch_eb
    move-exception v22

    .line 2211
    .local v22, mue:Ljava/net/MalformedURLException;
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2217
    .end local v18           #files:[Ljcifs/smb/SmbFile;
    .end local v19           #i:I
    .end local v22           #mue:Ljava/net/MalformedURLException;
    .end local v23           #path:Ljava/lang/String;
    :cond_fc
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x0

    :try_start_101
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_106} :catch_143

    .line 2219
    const/16 v4, 0x52

    .line 2220
    const/16 v5, 0x102

    .line 2221
    :try_start_10a
    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    .line 2219
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_17c
    .catch Ljcifs/smb/SmbAuthException; {:try_start_10a .. :try_end_114} :catch_155
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_114} :catch_143

    .line 2235
    :goto_114
    const/16 v19, 0x0

    .line 2236
    .restart local v19       #i:I
    const-wide/16 v8, 0x0

    .line 2238
    .local v8, off:J
    :goto_118
    :try_start_118
    move-object/from16 v0, p0

    iget v4, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v4, v8, v9, v1}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    .line 2239
    aget-object v4, p2, v19

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    .line 2240
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2242
    monitor-enter p4
    :try_end_135
    .catchall {:try_start_118 .. :try_end_135} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_135} :catch_143

    .line 2243
    :try_start_135
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_185

    .line 2244
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    .line 2242
    :catchall_140
    move-exception v4

    monitor-exit p4
    :try_end_142
    .catchall {:try_start_135 .. :try_end_142} :catchall_140

    :try_start_142
    throw v4
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_143} :catch_143

    .line 2270
    .end local v8           #off:J
    .end local v19           #i:I
    :catch_143
    move-exception v17

    .line 2271
    .local v17, ex:Ljava/lang/Exception;
    :try_start_144
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_150

    .line 2272
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_150
    .catchall {:try_start_144 .. :try_end_150} :catchall_17c

    .line 2274
    :cond_150
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    goto/16 :goto_91

    .line 2222
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_155
    move-exception v24

    .line 2223
    .local v24, sae:Ljcifs/smb/SmbAuthException;
    :try_start_156
    move-object/from16 v0, p1

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_181

    .line 2226
    move-object/from16 v0, p1

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v5, v4, -0x2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2227
    const/16 v4, 0x52

    .line 2228
    const/16 v5, 0x102

    .line 2229
    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    .line 2227
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_17b
    .catchall {:try_start_156 .. :try_end_17b} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_17b} :catch_143

    goto :goto_114

    .line 2273
    .end local v24           #sae:Ljcifs/smb/SmbAuthException;
    :catchall_17c
    move-exception v4

    .line 2274
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    .line 2275
    throw v4

    .line 2231
    .restart local v24       #sae:Ljcifs/smb/SmbAuthException;
    :cond_181
    :try_start_181
    throw v24
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_182} :catch_143

    .line 2248
    .end local v24           #sae:Ljcifs/smb/SmbAuthException;
    .restart local v8       #off:J
    .restart local v19       #i:I
    :cond_182
    :try_start_182
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_140
    .catch Ljava/lang/InterruptedException; {:try_start_182 .. :try_end_185} :catch_196

    .line 2246
    :cond_185
    :try_start_185
    move-object/from16 v0, p4

    iget-boolean v4, v0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    if-eqz v4, :cond_182

    .line 2253
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_1a7

    .line 2254
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    .line 2249
    :catch_196
    move-exception v20

    .line 2250
    .local v20, ie:Ljava/lang/InterruptedException;
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, p1

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2256
    .end local v20           #ie:Ljava/lang/InterruptedException;
    :cond_1a7
    move-object/from16 v0, p6

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v4, :cond_1d9

    .line 2257
    monitor-exit p4
    :try_end_1ae
    .catchall {:try_start_185 .. :try_end_1ae} :catchall_140

    .line 2266
    :try_start_1ae
    new-instance v10, Ljcifs/smb/Trans2SetFileInformation;

    .line 2267
    move-object/from16 v0, p1

    iget v11, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p0

    iget v12, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-direct/range {v10 .. v16}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    .line 2268
    new-instance v4, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v4}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    .line 2266
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2269
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_1d4
    .catchall {:try_start_1ae .. :try_end_1d4} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1d4} :catch_143

    .line 2274
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    goto/16 :goto_91

    .line 2259
    :cond_1d9
    :try_start_1d9
    aget-object v5, p2, v19

    move-object/from16 v0, p6

    iget v6, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    move-object/from16 v4, p4

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2242
    monitor-exit p4
    :try_end_1e7
    .catchall {:try_start_1d9 .. :try_end_1e7} :catchall_140

    .line 2262
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_1f6

    const/16 v19, 0x0

    .line 2263
    :goto_1ee
    :try_start_1ee
    move-object/from16 v0, p6

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_1f2
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f2} :catch_143

    int-to-long v4, v4

    add-long/2addr v8, v4

    .line 2237
    goto/16 :goto_118

    .line 2262
    :cond_1f6
    const/16 v19, 0x1

    goto :goto_1ee
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

    .line 2574
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2575
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2577
    :cond_14
    const/16 v0, 0x33

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2578
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
    .line 1575
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 1576
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1577
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1579
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
    .line 2373
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2374
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2375
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    .line 2376
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

    .line 2378
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_15

    .line 2379
    new-instance v4, Ljcifs/smb/SmbException;

    const-string v5, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v4, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2382
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_51

    .line 2383
    const/16 v4, 0x11

    iput v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2384
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2385
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2386
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2388
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    .line 2389
    const/16 v5, 0x101

    .line 2388
    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v1

    .line 2390
    .local v1, info:Ljcifs/smb/Info;
    invoke-interface {v1}, Ljcifs/smb/Info;->getAttributes()I

    move-result v4

    iput v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2391
    invoke-interface {v1}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2392
    invoke-interface {v1}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2395
    iput-boolean v10, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2398
    .end local v1           #info:Ljcifs/smb/Info;
    :cond_51
    iget v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5a

    .line 2399
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    .line 2406
    :cond_5a
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_73

    .line 2407
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2409
    :cond_73
    iget v4, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_ab

    .line 2415
    :try_start_79
    const-string v4, "*"

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v2

    .line 2416
    .local v2, l:[Ljcifs/smb/SmbFile;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_84
    array-length v4, v2
    :try_end_85
    .catch Ljcifs/smb/SmbException; {:try_start_79 .. :try_end_85} :catch_a0

    if-lt v0, v4, :cond_98

    .line 2429
    .end local v0           #i:I
    .end local v2           #l:[Ljcifs/smb/SmbFile;
    :cond_87
    new-instance v4, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v4, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2434
    :goto_93
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v8, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2435
    return-void

    .line 2417
    .restart local v0       #i:I
    .restart local v2       #l:[Ljcifs/smb/SmbFile;
    :cond_98
    :try_start_98
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_9d
    .catch Ljcifs/smb/SmbException; {:try_start_98 .. :try_end_9d} :catch_a0

    .line 2416
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 2419
    .end local v0           #i:I
    .end local v2           #l:[Ljcifs/smb/SmbFile;
    :catch_a0
    move-exception v3

    .line 2424
    .local v3, se:Ljcifs/smb/SmbException;
    invoke-virtual {v3}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const v5, -0x3ffffff1

    if-eq v4, v5, :cond_87

    .line 2425
    throw v3

    .line 2431
    .end local v3           #se:Ljcifs/smb/SmbException;
    :cond_ab
    new-instance v4, Ljcifs/smb/SmbComDelete;

    invoke-direct {v4, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_93
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

    if-eqz v6, :cond_54

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

    if-eqz v6, :cond_6d

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
    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v6, v9, :cond_4c

    .line 904
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "doConnect: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 906
    :cond_4c
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_53
    .catch Ljcifs/smb/SmbAuthException; {:try_start_33 .. :try_end_53} :catch_6f

    .line 931
    :goto_53
    return-void

    .line 892
    .end local v2           #hostName:Ljava/lang/String;
    .end local v5           #trans:Ljcifs/smb/SmbTransport;
    :cond_54
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
    :cond_6d
    move v6, v8

    .line 897
    goto :goto_27

    .line 907
    :catch_6f
    move-exception v3

    .line 911
    .local v3, sae:Ljcifs/smb/SmbAuthException;
    iget-object v6, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v6, :cond_86

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

    goto :goto_53

    .line 916
    .end local v4           #ssn:Ljcifs/smb/SmbSession;
    :cond_86
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 915
    invoke-static {v6, v3}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    .local v0, a:Ljcifs/smb/NtlmPasswordAuthentication;
    if-eqz v0, :cond_c6

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

    if-eqz v9, :cond_c4

    :goto_b2
    iput-boolean v7, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 921
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v6, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v6, :cond_be

    .line 922
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v13, v6, Ljcifs/smb/SmbTree;->connectionState:I

    .line 924
    :cond_be
    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v6, v12, v12}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_53

    :cond_c4
    move v7, v8

    .line 920
    goto :goto_b2

    .line 926
    .end local v4           #ssn:Ljcifs/smb/SmbSession;
    :cond_c6
    sget v6, Ljcifs/util/LogStream;->level:I

    if-lt v6, v7, :cond_d5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 927
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v6}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 928
    :cond_d5
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

    .line 1852
    const/4 v0, 0x0

    .line 1855
    .local v0, handle:Ljcifs/dcerpc/DcerpcHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ncacn_np:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1857
    const-string v4, "[\\PIPE\\netdfs]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1855
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1857
    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 1855
    invoke-static {v3, v4}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    .line 1859
    :try_start_25
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v2, rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1861
    iget v3, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    if-eqz v3, :cond_43

    .line 1862
    new-instance v3, Ljcifs/smb/SmbException;

    iget v4, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3e

    .line 1864
    .end local v2           #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :catchall_3e
    move-exception v3

    .line 1866
    :try_start_3f
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_56

    .line 1871
    :cond_42
    :goto_42
    throw v3

    .line 1863
    .restart local v2       #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    move-result-object v3

    .line 1866
    :try_start_47
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 1863
    :cond_4a
    :goto_4a
    return-object v3

    .line 1867
    :catch_4b
    move-exception v1

    .line 1868
    .local v1, ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_4a

    .line 1869
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4a

    .line 1867
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #rpc:Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
    :catch_56
    move-exception v1

    .line 1868
    .restart local v1       #ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_42

    .line 1869
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_42
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
    .line 1738
    if-eqz p6, :cond_11

    instance-of v4, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v4, :cond_11

    move-object v0, p6

    .line 1739
    check-cast v0, Ljcifs/smb/DosFileFilter;

    .line 1740
    .local v0, dff:Ljcifs/smb/DosFileFilter;
    iget-object v4, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1741
    iget-object p3, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 1742
    :cond_f
    iget p4, v0, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 1746
    .end local v0           #dff:Ljcifs/smb/DosFileFilter;
    :cond_11
    :try_start_11
    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1747
    .local v1, hostlen:I
    if-eqz v1, :cond_24

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 1748
    :cond_24
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1759
    :goto_27
    return-void

    .line 1749
    :cond_28
    iget-object v4, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v4, :cond_3d

    .line 1750
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_2f} :catch_30
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_2f} :catch_41

    goto :goto_27

    .line 1754
    .end local v1           #hostlen:I
    :catch_30
    move-exception v3

    .line 1755
    .local v3, uhe:Ljava/net/UnknownHostException;
    new-instance v4, Ljcifs/smb/SmbException;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1752
    .end local v3           #uhe:Ljava/net/UnknownHostException;
    .restart local v1       #hostlen:I
    :cond_3d
    :try_start_3d
    invoke-virtual/range {p0 .. p6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_3d .. :try_end_40} :catch_30
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_27

    .line 1756
    .end local v1           #hostlen:I
    :catch_41
    move-exception v2

    .line 1757
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
    .line 1987
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v19

    .line 1988
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 1990
    .local v18, p:Ljava/lang/String;
    const/16 v5, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_3d

    .line 1991
    new-instance v5, Ljcifs/smb/SmbException;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " directory must end with \'/\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1994
    :cond_3d
    new-instance v20, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1995
    .local v20, req:Ljcifs/smb/SmbComTransaction;
    new-instance v21, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct/range {v21 .. v21}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 1997
    .local v21, resp:Ljcifs/smb/Trans2FindFirst2Response;
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x3

    if-lt v5, v7, :cond_6c

    .line 1998
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doFindFirstNext: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v8, v0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2000
    :cond_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2002
    move-object/from16 v0, v21

    iget v0, v0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    move/from16 v23, v0

    .line 2003
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

    .line 2008
    .restart local v20       #req:Ljcifs/smb/SmbComTransaction;
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iput-byte v5, v0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 2011
    :goto_91
    const/16 v17, 0x0

    .local v17, i:I
    :goto_93
    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_b8

    .line 2038
    move-object/from16 v0, v21

    iget-boolean v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v5, :cond_a7

    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-nez v5, :cond_12e

    .line 2048
    :cond_a7
    :try_start_a7
    new-instance v5, Ljcifs/smb/SmbComFindClose2;

    move/from16 v0, v23

    invoke-direct {v5, v0}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_b7
    .catch Ljcifs/smb/SmbException; {:try_start_a7 .. :try_end_b7} :catch_149

    .line 2053
    :cond_b7
    :goto_b7
    return-void

    .line 2012
    :cond_b8
    move-object/from16 v0, v21

    iget-object v5, v0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v15, v5, v17

    .line 2013
    .local v15, e:Ljcifs/smb/FileEntry;
    invoke-interface {v15}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2014
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-ge v5, v7, :cond_ec

    .line 2015
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v16

    .line 2016
    .local v16, h:I
    sget v5, Ljcifs/smb/SmbFile;->HASH_DOT:I

    move/from16 v0, v16

    if-eq v0, v5, :cond_d9

    sget v5, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_ec

    .line 2017
    :cond_d9
    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    const-string v5, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 2011
    .end local v16           #h:I
    :cond_e9
    :goto_e9
    add-int/lit8 v17, v17, 0x1

    goto :goto_93

    .line 2021
    :cond_ec
    if-eqz p5, :cond_f8

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 2024
    :cond_f8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e9

    .line 2025
    new-instance v4, Ljcifs/smb/SmbFile;

    const/4 v7, 0x1

    .line 2026
    invoke-interface {v15}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v8

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v9

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v11

    invoke-interface {v15}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v13

    move-object/from16 v5, p0

    .line 2025
    invoke-direct/range {v4 .. v14}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 2027
    .local v4, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_120

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 2030
    :cond_120
    if-eqz p2, :cond_128

    .line 2031
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 2033
    :cond_128
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 2042
    .end local v4           #f:Ljcifs/smb/SmbFile;
    .end local v6           #name:Ljava/lang/String;
    .end local v15           #e:Ljcifs/smb/FileEntry;
    :cond_12e
    move-object/from16 v0, v21

    iget v5, v0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    move-object/from16 v0, v21

    iget-object v7, v0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Ljcifs/smb/Trans2FindNext2;->reset(ILjava/lang/String;)V

    .line 2043
    invoke-virtual/range {v21 .. v21}, Ljcifs/smb/Trans2FindFirst2Response;->reset()V

    .line 2044
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_91

    .line 2049
    :catch_149
    move-exception v22

    .line 2050
    .local v22, se:Ljcifs/smb/SmbException;
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v5, v7, :cond_b7

    .line 2051
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_b7
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

    .line 1877
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v2, rpc:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ncacn_np:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1888
    const-string v4, "[\\PIPE\\srvsvc]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1886
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1888
    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 1886
    invoke-static {v3, v4}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    .line 1891
    .local v0, handle:Ljcifs/dcerpc/DcerpcHandle;
    :try_start_2f
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1892
    iget v3, v2, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    if-eqz v3, :cond_44

    .line 1893
    new-instance v3, Ljcifs/smb/SmbException;

    iget v4, v2, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3f

    .line 1895
    :catchall_3f
    move-exception v3

    .line 1897
    :try_start_40
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_57

    .line 1902
    :cond_43
    :goto_43
    throw v3

    .line 1894
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_3f

    move-result-object v3

    .line 1897
    :try_start_48
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 1894
    :cond_4b
    :goto_4b
    return-object v3

    .line 1898
    :catch_4c
    move-exception v1

    .line 1899
    .local v1, ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_4b

    .line 1900
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4b

    .line 1898
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_57
    move-exception v1

    .line 1899
    .restart local v1       #ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v6, :cond_43

    .line 1900
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_43
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
    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_51

    const/16 v16, 0x0

    .line 1927
    .local v16, listType:I
    :goto_10
    if-nez v16, :cond_56

    .line 1928
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1929
    new-instance v19, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v4, v4, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v4, v4, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 1930
    const/high16 v6, -0x8000

    .line 1929
    move-object/from16 v0, v19

    invoke-direct {v0, v4, v6}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1931
    .local v19, req:Ljcifs/smb/SmbComTransaction;
    new-instance v20, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct/range {v20 .. v20}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    .line 1943
    .local v20, resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1945
    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v4, :cond_8e

    .line 1946
    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v6, 0xea

    if-eq v4, v6, :cond_8e

    .line 1947
    new-instance v4, Ljcifs/smb/SmbException;

    move-object/from16 v0, v20

    iget v6, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v4

    .line 1923
    .end local v16           #listType:I
    .end local v19           #req:Ljcifs/smb/SmbComTransaction;
    .end local v20           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_51
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v16

    goto :goto_10

    .line 1932
    .restart local v16       #listType:I
    :cond_56
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_71

    .line 1933
    new-instance v19, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v6}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1934
    .restart local v19       #req:Ljcifs/smb/SmbComTransaction;
    new-instance v20, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct/range {v20 .. v20}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    .restart local v20       #resp:Ljcifs/smb/SmbComTransactionResponse;
    goto :goto_2f

    .line 1936
    .end local v19           #req:Ljcifs/smb/SmbComTransaction;
    .end local v20           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_71
    new-instance v4, Ljcifs/smb/SmbException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The requested list operations is invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 1949
    .restart local v19       #req:Ljcifs/smb/SmbComTransaction;
    .restart local v20       #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_8e
    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v6, 0xea

    if-ne v4, v6, :cond_ad

    const/16 v17, 0x1

    .line 1951
    .local v17, more:Z
    :goto_98
    if-eqz v17, :cond_b0

    move-object/from16 v0, v20

    iget v4, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 v18, v4, -0x1

    .line 1952
    .local v18, n:I
    :goto_a0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_a1
    move/from16 v0, v18

    if-lt v15, v0, :cond_b7

    .line 1970
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_101

    .line 1977
    :goto_ac
    return-void

    .line 1949
    .end local v15           #i:I
    .end local v17           #more:Z
    .end local v18           #n:I
    :cond_ad
    const/16 v17, 0x0

    goto :goto_98

    .line 1951
    .restart local v17       #more:Z
    :cond_b0
    move-object/from16 v0, v20

    iget v0, v0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    move/from16 v18, v0

    goto :goto_a0

    .line 1953
    .restart local v15       #i:I
    .restart local v18       #n:I
    :cond_b7
    move-object/from16 v0, v20

    iget-object v4, v0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v14, v4, v15

    .line 1954
    .local v14, e:Ljcifs/smb/FileEntry;
    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1955
    .local v5, name:Ljava/lang/String;
    if-eqz p5, :cond_d0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d0

    .line 1952
    :cond_cd
    :goto_cd
    add-int/lit8 v15, v15, 0x1

    goto :goto_a1

    .line 1957
    :cond_d0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_cd

    .line 1959
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getType()I

    move-result v6

    .line 1960
    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    .line 1959
    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 1961
    .local v3, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_f3

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 1963
    :cond_f3
    if-eqz p2, :cond_fb

    .line 1964
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 1966
    :cond_fb
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 1973
    .end local v3           #f:Ljcifs/smb/SmbFile;
    .end local v5           #name:Ljava/lang/String;
    .end local v14           #e:Ljcifs/smb/FileEntry;
    :cond_101
    const/16 v4, -0x29

    move-object/from16 v0, v19

    iput-byte v4, v0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 1974
    const/4 v6, 0x0

    move-object/from16 v4, v20

    check-cast v4, Ljcifs/smb/NetServerEnum2Response;

    iget-object v4, v4, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    .line 1975
    invoke-virtual/range {v20 .. v20}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    .line 1940
    if-nez v17, :cond_2f

    goto :goto_ac
.end method

.method doNetShareEnum()[Ljcifs/smb/FileEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1905
    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    .line 1906
    .local v0, req:Ljcifs/smb/SmbComTransaction;
    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    .line 1908
    .local v1, resp:Ljcifs/smb/SmbComTransactionResponse;
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1910
    iget v2, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v2, :cond_1a

    .line 1911
    new-instance v2, Ljcifs/smb/SmbException;

    iget v3, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2

    .line 1913
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
    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 1769
    .local v21, p:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1775
    .local v19, last:Ljava/io/IOException;
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3b

    .line 1776
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " directory must end with \'/\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1777
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5f

    .line 1778
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The requested list operations is invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 1780
    :cond_5f
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1782
    .local v20, map:Ljava/util/HashMap;
    sget-object v3, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3, v5, v6}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1787
    :try_start_74
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v16

    .line 1788
    .local v16, entries:[Ljcifs/smb/FileEntry;
    const/4 v15, 0x0

    .local v15, ei:I
    :goto_79
    move-object/from16 v0, v16

    array-length v3, v0
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_b4

    if-lt v15, v3, :cond_a2

    .line 1799
    .end local v15           #ei:I
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    :cond_7e
    :goto_7e
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v13

    .line 1800
    .local v13, addr:Ljcifs/UniAddress;
    :goto_82
    if-nez v13, :cond_c2

    .line 1824
    :cond_84
    if-eqz v19, :cond_10b

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 1825
    move-object/from16 v0, v19

    instance-of v3, v0, Ljcifs/smb/SmbException;

    if-nez v3, :cond_108

    .line 1826
    new-instance v3, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v3, v5, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1789
    .end local v13           #addr:Ljcifs/UniAddress;
    .restart local v15       #ei:I
    .restart local v16       #entries:[Ljcifs/smb/FileEntry;
    :cond_a2
    :try_start_a2
    aget-object v14, v16, v15

    .line 1790
    .local v14, e:Ljcifs/smb/FileEntry;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 1791
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b1} :catch_b4

    .line 1788
    :cond_b1
    add-int/lit8 v15, v15, 0x1

    goto :goto_79

    .line 1793
    .end local v14           #e:Ljcifs/smb/FileEntry;
    .end local v15           #ei:I
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    :catch_b4
    move-exception v17

    .line 1794
    .local v17, ioe:Ljava/io/IOException;
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_7e

    .line 1795
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_7e

    .line 1802
    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v13       #addr:Ljcifs/UniAddress;
    :cond_c2
    :try_start_c2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_f3

    .line 1804
    :try_start_c5
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_e1

    move-result-object v16

    .line 1810
    .restart local v16       #entries:[Ljcifs/smb/FileEntry;
    :goto_c9
    const/4 v15, 0x0

    .restart local v15       #ei:I
    :goto_ca
    :try_start_ca
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v15, v3, :cond_84

    .line 1811
    aget-object v14, v16, v15

    .line 1812
    .restart local v14       #e:Ljcifs/smb/FileEntry;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 1813
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    :cond_de
    add-int/lit8 v15, v15, 0x1

    goto :goto_ca

    .line 1805
    .end local v14           #e:Ljcifs/smb/FileEntry;
    .end local v15           #ei:I
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    :catch_e1
    move-exception v17

    .line 1806
    .restart local v17       #ioe:Ljava/io/IOException;
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_ee

    .line 1807
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1808
    :cond_ee
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_f1} :catch_f3

    move-result-object v16

    .restart local v16       #entries:[Ljcifs/smb/FileEntry;
    goto :goto_c9

    .line 1816
    .end local v16           #entries:[Ljcifs/smb/FileEntry;
    .end local v17           #ioe:Ljava/io/IOException;
    :catch_f3
    move-exception v17

    .line 1817
    .restart local v17       #ioe:Ljava/io/IOException;
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_100

    .line 1818
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1819
    :cond_100
    move-object/from16 v19, v17

    .line 1821
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v13

    goto/16 :goto_82

    .line 1827
    .end local v17           #ioe:Ljava/io/IOException;
    :cond_108
    check-cast v19, Ljcifs/smb/SmbException;

    .end local v19           #last:Ljava/io/IOException;
    throw v19

    .line 1830
    .restart local v19       #last:Ljava/io/IOException;
    :cond_10b
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1831
    .local v18, iter:Ljava/util/Iterator;
    :cond_113
    :goto_113
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11a

    .line 1849
    return-void

    .line 1832
    :cond_11a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljcifs/smb/FileEntry;

    .line 1833
    .restart local v14       #e:Ljcifs/smb/FileEntry;
    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1834
    .local v4, name:Ljava/lang/String;
    if-eqz p5, :cond_130

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v4}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1836
    :cond_130
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_113

    .line 1838
    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-interface {v14}, Ljcifs/smb/FileEntry;->getType()I

    move-result v5

    .line 1839
    const/16 v6, 0x11

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v3, p0

    .line 1838
    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 1840
    .local v2, f:Ljcifs/smb/SmbFile;
    if-eqz p6, :cond_153

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1842
    :cond_153
    if-eqz p2, :cond_15b

    .line 1843
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113

    .line 1845
    :cond_15b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    .line 2759
    instance-of v3, p1, Ljcifs/smb/SmbFile;

    if-eqz v3, :cond_48

    move-object v0, p1

    .line 2760
    check-cast v0, Ljcifs/smb/SmbFile;

    .line 2763
    .local v0, f:Ljcifs/smb/SmbFile;
    if-ne p0, v0, :cond_b

    .line 2764
    const/4 v1, 0x1

    .line 2785
    .end local v0           #f:Ljcifs/smb/SmbFile;
    :goto_a
    return v1

    .line 2769
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

    .line 2771
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2772
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2774
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2776
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

    .line 2777
    .end local v1           #ret:Z
    :catch_3a
    move-exception v2

    .line 2778
    .local v2, uhe:Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_a

    .line 2785
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

    .line 1410
    iget-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 1411
    iget-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 1458
    :goto_f
    return v2

    .line 1414
    :cond_10
    const/16 v2, 0x11

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 1415
    iput-wide v7, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1416
    iput-wide v7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 1417
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 1420
    :try_start_1b
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 1421
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_5b

    .line 1422
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    .line 1423
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 1441
    :cond_3c
    :goto_3c
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_3f
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_3f} :catch_59
    .catch Ljcifs/smb/SmbException; {:try_start_1b .. :try_end_3f} :catch_73

    .line 1456
    :goto_3f
    :sswitch_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 1458
    iget-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_f

    .line 1425
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    goto :goto_3c

    .line 1443
    :catch_59
    move-exception v2

    goto :goto_3f

    .line 1427
    :cond_5b
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v6, :cond_6f

    .line 1428
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1429
    :cond_6f
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V
    :try_end_72
    .catch Ljava/net/UnknownHostException; {:try_start_4b .. :try_end_72} :catch_59
    .catch Ljcifs/smb/SmbException; {:try_start_4b .. :try_end_72} :catch_73

    goto :goto_3c

    .line 1444
    :catch_73
    move-exception v1

    .line 1445
    .local v1, se:Ljcifs/smb/SmbException;
    invoke-virtual {v1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    .line 1452
    throw v1

    .line 1431
    .end local v1           #se:Ljcifs/smb/SmbException;
    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    .line 1432
    const/16 v3, 0x101

    .line 1431
    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 1433
    .local v0, info:Ljcifs/smb/Info;
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 1434
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1435
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J
    :try_end_98
    .catch Ljava/net/UnknownHostException; {:try_start_7c .. :try_end_98} :catch_59
    .catch Ljcifs/smb/SmbException; {:try_start_7c .. :try_end_98} :catch_73

    goto :goto_3c

    .line 1445
    nop

    :sswitch_data_9a
    .sparse-switch
        -0x3ffffff1 -> :sswitch_3f
        -0x3fffffcd -> :sswitch_3f
        -0x3fffffcc -> :sswitch_3f
        -0x3fffffc6 -> :sswitch_3f
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
    .line 2638
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2639
    const/4 v0, 0x0

    .line 2642
    :goto_c
    return v0

    .line 2641
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2642
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_c
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1240
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 1245
    :goto_2a
    return-object v1

    :cond_2b
    const-string v1, "smb://"

    goto :goto_2a
.end method

.method public getContentLength()I
    .registers 5

    .prologue
    .line 2816
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 2819
    :goto_b
    return v0

    .line 2817
    :catch_c
    move-exception v0

    .line 2819
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 2829
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 2832
    :goto_4
    return-wide v0

    .line 2830
    :catch_5
    move-exception v0

    .line 2832
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

    .line 1550
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 1551
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_b

    .line 1559
    :cond_a
    :goto_a
    return-object v0

    .line 1554
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb:/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 1555
    .local v0, path:Ljava/lang/String;
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1556
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 2482
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    iget v2, p0, Ljcifs/smb/SmbFile;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 2483
    :cond_d
    const/16 v1, 0x3ef

    .line 2485
    .local v1, level:I
    :try_start_f
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J
    :try_end_12
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_12} :catch_14

    move-result-wide v2

    .line 2497
    .end local v1           #level:I
    :goto_13
    return-wide v2

    .line 2486
    .restart local v1       #level:I
    :catch_14
    move-exception v0

    .line 2487
    .local v0, ex:Ljcifs/smb/SmbException;
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 2494
    :pswitch_1c
    throw v0

    .line 2491
    :pswitch_1d
    const/4 v1, 0x1

    .line 2492
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v2

    goto :goto_13

    .line 2497
    .end local v0           #ex:Ljcifs/smb/SmbException;
    .end local v1           #level:I
    :cond_23
    const-wide/16 v2, 0x0

    goto :goto_13

    .line 2487
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

    .line 846
    :try_start_69
    const-string v8, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 845
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
    .line 2854
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 2842
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 2845
    :goto_4
    return-wide v0

    .line 2843
    :catch_5
    move-exception v0

    .line 2845
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 1082
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1083
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    .line 1084
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 1085
    .local v0, i:I
    :goto_16
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_27

    .line 1088
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1094
    .end local v0           #i:I
    :goto_26
    return-object v1

    .line 1086
    .restart local v0       #i:I
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1089
    .end local v0           #i:I
    :cond_2a
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    .line 1091
    :cond_42
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_66

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    .line 1094
    :cond_66
    const-string v1, "smb://"

    goto :goto_26
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
    .line 2863
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x2f

    .line 1109
    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 1112
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "smb://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1116
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1117
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_41

    .line 1118
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1123
    :goto_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .line 1126
    .local v0, i:I
    :goto_33
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_45

    .line 1130
    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :goto_40
    return-object v3

    .line 1120
    .restart local v1       #sb:Ljava/lang/StringBuffer;
    :cond_41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 1127
    .restart local v0       #i:I
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 1133
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_48
    const-string v3, "smb://"

    goto :goto_40
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 1063
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
    .line 3086
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

    .line 3003
    const/high16 v7, 0x2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v4, v5

    :goto_d
    invoke-virtual {p0, v5, v7, v6, v4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v1

    .line 3009
    .local v1, f:I
    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v4, 0x4

    invoke-direct {v2, v1, v4}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    .line 3010
    .local v2, request:Ljcifs/smb/NtTransQuerySecurityDesc;
    new-instance v3, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v3}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    .line 3013
    .local v3, response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :try_start_1c
    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2e

    .line 3015
    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 3018
    iget-object v4, v3, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v4, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 3019
    .local v0, aces:[Ljcifs/smb/ACE;
    if-eqz v0, :cond_2b

    .line 3020
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    .line 3022
    :cond_2b
    return-object v0

    .end local v0           #aces:[Ljcifs/smb/ACE;
    .end local v1           #f:I
    .end local v2           #request:Ljcifs/smb/NtTransQuerySecurityDesc;
    .end local v3           #response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :cond_2c
    move v4, v6

    .line 3003
    goto :goto_d

    .line 3014
    .restart local v1       #f:I
    .restart local v2       #request:Ljcifs/smb/NtTransQuerySecurityDesc;
    .restart local v3       #response:Ljcifs/smb/NtTransQuerySecurityDescResponse;
    :catchall_2e
    move-exception v4

    .line 3015
    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 3016
    throw v4
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1278
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 1280
    const/4 v0, 0x0

    .line 1282
    .end local v0           #str:Ljava/lang/String;
    :cond_d
    return-object v0
.end method

.method getServerWithDfs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_9

    .line 1263
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 1265
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
    .line 1258
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

    .line 3042
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 3047
    .local v3, p:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 3048
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v5

    .line 3050
    .local v5, server:Ljava/lang/String;
    new-instance v4, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v6, v6, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    .local v4, rpc:Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ncacn_np:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 3054
    .local v1, handle:Ljcifs/dcerpc/DcerpcHandle;
    :try_start_33
    invoke-virtual {v1, v4}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 3055
    iget v6, v4, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    if-eqz v6, :cond_48

    .line 3056
    new-instance v6, Ljcifs/smb/SmbException;

    iget v7, v4, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v6
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 3060
    :catchall_43
    move-exception v6

    .line 3062
    :try_start_44
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_55

    .line 3067
    :cond_47
    :goto_47
    throw v6

    .line 3057
    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    move-result-object v0

    .line 3058
    .local v0, aces:[Ljcifs/smb/ACE;
    if-eqz v0, :cond_51

    .line 3059
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_43

    .line 3062
    :cond_51
    :try_start_51
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_60

    .line 3069
    :cond_54
    :goto_54
    return-object v0

    .line 3063
    .end local v0           #aces:[Ljcifs/smb/ACE;
    :catch_55
    move-exception v2

    .line 3064
    .local v2, ioe:Ljava/io/IOException;
    sget v7, Ljcifs/util/LogStream;->level:I

    if-lt v7, v9, :cond_47

    .line 3065
    sget-object v7, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_47

    .line 3063
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #aces:[Ljcifs/smb/ACE;
    :catch_60
    move-exception v2

    .line 3064
    .restart local v2       #ioe:Ljava/io/IOException;
    sget v6, Ljcifs/util/LogStream;->level:I

    if-lt v6, v9, :cond_54

    .line 3065
    sget-object v6, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_54
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

    .line 1291
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v3, :cond_12

    .line 1292
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_15

    .line 1293
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1325
    :cond_12
    :goto_12
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    :goto_14
    return v3

    .line 1294
    :cond_15
    iget-object v3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 1296
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1297
    iget-object v3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v4, "IPC$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1298
    const/16 v3, 0x10

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1299
    :cond_2b
    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "LPT1:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1300
    const/16 v3, 0x20

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1301
    :cond_3c
    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "COMM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1302
    const/16 v3, 0x40

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1304
    :cond_4d
    const/16 v3, 0x8

    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1306
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

    .line 1307
    :cond_66
    iput v5, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_12

    .line 1311
    :cond_69
    :try_start_69
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;
    :try_end_6c
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_6c} :catch_8c

    move-result-object v0

    .line 1315
    .local v0, addr:Ljcifs/UniAddress;
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    if-eqz v3, :cond_99

    .line 1316
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v1

    .line 1317
    .local v1, code:I
    const/16 v3, 0x1d

    if-eq v1, v3, :cond_87

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_99

    .line 1318
    :cond_87
    iput v5, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1319
    iget v3, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_14

    .line 1312
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v1           #code:I
    :catch_8c
    move-exception v2

    .line 1313
    .local v2, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1322
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
    .line 1224
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    goto :goto_1c
.end method

.method getUncPath0()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x2e

    const/4 v11, 0x1

    const/16 v10, 0x2f

    .line 1149
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v8, :cond_3e

    .line 1150
    iget-object v8, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1151
    .local v1, in:[C
    array-length v8, v1

    new-array v5, v8, [C

    .line 1152
    .local v5, out:[C
    array-length v2, v1

    .line 1156
    .local v2, length:I
    const/4 v6, 0x0

    .line 1157
    .local v6, state:I
    const/4 v3, 0x0

    .line 1158
    .local v3, o:I
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v3

    .end local v3           #o:I
    .local v4, o:I
    :goto_1c
    if-lt v0, v2, :cond_41

    .line 1195
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 1197
    if-le v4, v11, :cond_d6

    .line 1198
    add-int/lit8 v3, v4, -0x1

    .line 1199
    .end local v4           #o:I
    .restart local v3       #o:I
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1200
    if-gez v0, :cond_a4

    .line 1201
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1202
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1216
    .end local v0           #i:I
    .end local v1           #in:[C
    .end local v2           #length:I
    .end local v3           #o:I
    .end local v5           #out:[C
    .end local v6           #state:I
    :cond_3e
    :goto_3e
    iget-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    :cond_40
    return-object v7

    .line 1159
    .restart local v0       #i:I
    .restart local v1       #in:[C
    .restart local v2       #length:I
    .restart local v4       #o:I
    .restart local v5       #out:[C
    .restart local v6       #state:I
    :cond_41
    packed-switch v6, :pswitch_data_de

    move v3, v4

    .line 1158
    .end local v4           #o:I
    .restart local v3       #o:I
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #o:I
    .restart local v4       #o:I
    goto :goto_1c

    .line 1161
    :pswitch_49
    aget-char v8, v1, v0

    if-ne v8, v10, :cond_40

    .line 1164
    add-int/lit8 v3, v4, 0x1

    .end local v4           #o:I
    .restart local v3       #o:I
    aget-char v8, v1, v0

    aput-char v8, v5, v4

    .line 1165
    const/4 v6, 0x1

    .line 1166
    goto :goto_45

    .line 1168
    .end local v3           #o:I
    .restart local v4       #o:I
    :pswitch_55
    aget-char v8, v1, v0

    if-ne v8, v10, :cond_5b

    move v3, v4

    .line 1169
    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_45

    .line 1170
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_5b
    aget-char v8, v1, v0

    if-ne v8, v9, :cond_6d

    .line 1171
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v2, :cond_69

    add-int/lit8 v8, v0, 0x1

    aget-char v8, v1, v8

    if-ne v8, v10, :cond_6d

    .line 1172
    :cond_69
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .line 1173
    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_45

    .line 1174
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_6d
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v2, :cond_97

    .line 1175
    aget-char v8, v1, v0

    if-ne v8, v9, :cond_97

    .line 1176
    add-int/lit8 v8, v0, 0x1

    aget-char v8, v1, v8

    if-ne v8, v9, :cond_97

    .line 1177
    add-int/lit8 v8, v0, 0x2

    if-ge v8, v2, :cond_85

    add-int/lit8 v8, v0, 0x2

    aget-char v8, v1, v8

    if-ne v8, v10, :cond_97

    .line 1178
    :cond_85
    add-int/lit8 v0, v0, 0x2

    .line 1179
    if-ne v4, v11, :cond_8b

    move v3, v4

    .end local v4           #o:I
    .restart local v3       #o:I
    goto :goto_45

    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_8b
    move v3, v4

    .line 1181
    .end local v4           #o:I
    .restart local v3       #o:I
    :cond_8c
    add-int/lit8 v3, v3, -0x1

    .line 1182
    if-le v3, v11, :cond_45

    add-int/lit8 v8, v3, -0x1

    aget-char v8, v5, v8

    if-ne v8, v10, :cond_8c

    goto :goto_45

    .line 1185
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_97
    const/4 v6, 0x2

    .line 1187
    :pswitch_98
    aget-char v8, v1, v0

    if-ne v8, v10, :cond_9d

    .line 1188
    const/4 v6, 0x1

    .line 1190
    :cond_9d
    add-int/lit8 v3, v4, 0x1

    .end local v4           #o:I
    .restart local v3       #o:I
    aget-char v8, v1, v0

    aput-char v8, v5, v4

    goto :goto_45

    .line 1203
    :cond_a4
    if-ne v0, v3, :cond_b3

    .line 1204
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1205
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3e

    .line 1207
    :cond_b3
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1208
    iget-object v7, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v8, v5, v3

    if-ne v8, v10, :cond_d3

    .end local v3           #o:I
    :goto_c1
    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1209
    iget-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v8, 0x5c

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_3e

    .line 1208
    .restart local v3       #o:I
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 1212
    .end local v3           #o:I
    .restart local v4       #o:I
    :cond_d6
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1213
    const-string v7, "\\"

    iput-object v7, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_3e

    .line 1159
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_49
        :pswitch_55
        :pswitch_98
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
    .line 2709
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->hashCode()I
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_7} :catch_17

    move-result v0

    .line 2713
    .local v0, hash:I
    :goto_8
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2714
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 2710
    .end local v0           #hash:I
    :catch_17
    move-exception v1

    .line 2711
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

    .line 1501
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 1505
    :cond_c
    :goto_c
    return v0

    .line 1504
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_c

    .line 1505
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1515
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 1519
    :cond_c
    :goto_c
    return v0

    .line 1518
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1519
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public isHidden()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1531
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1540
    :cond_6
    :goto_6
    return v0

    .line 1533
    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_1d

    .line 1534
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1535
    goto :goto_6

    .line 1539
    :cond_1d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1540
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method isOpen()Z
    .registers 4

    .prologue
    .line 1021
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

    .line 1022
    .local v0, ans:Z
    :goto_13
    return v0

    .line 1021
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

    .line 1328
    iget v2, p0, Ljcifs/smb/SmbFile;->type:I

    if-eq v2, v4, :cond_12

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 1329
    :cond_12
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    move v2, v3

    .line 1345
    :goto_15
    return v2

    .line 1332
    :cond_16
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1333
    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 1334
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    .line 1335
    .local v0, addr:Ljcifs/UniAddress;
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_3f

    .line 1336
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v2}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v1

    .line 1337
    .local v1, code:I
    const/16 v2, 0x1d

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_3f

    .line 1338
    :cond_3b
    iput v4, p0, Ljcifs/smb/SmbFile;->type:I

    move v2, v3

    .line 1339
    goto :goto_15

    .line 1342
    .end local v1           #code:I
    :cond_3f
    const/4 v2, 0x4

    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1345
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
    .line 1592
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 1593
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1594
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 1596
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
    .line 2449
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_d

    .line 2450
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2469
    :goto_c
    return-wide v3

    .line 2453
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_37

    .line 2455
    const/4 v1, 0x1

    .line 2457
    .local v1, level:I
    new-instance v2, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v2, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2458
    .local v2, response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    new-instance v3, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v3, v1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v3, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2460
    iget-object v3, v2, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v3}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v3

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2468
    .end local v1           #level:I
    .end local v2           #response:Ljcifs/smb/Trans2QueryFSInformationResponse;
    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2469
    iget-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_c

    .line 2461
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

    .line 2462
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v3

    .line 2463
    const/16 v4, 0x102

    .line 2462
    invoke-virtual {p0, v3, v4}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 2464
    .local v0, info:Ljcifs/smb/Info;
    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v3

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_2b

    .line 2466
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

    .line 1620
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
    .line 1722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    .local v1, list:Ljava/util/ArrayList;
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1724
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

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
    .line 1633
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

    .line 1662
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

    .line 1695
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
    .line 1728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    .local v1, list:Ljava/util/ArrayList;
    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1730
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

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
    .line 1718
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
    .line 1707
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
    .line 2526
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    .line 2528
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 2529
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2536
    :cond_13
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2c

    .line 2537
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2539
    :cond_2c
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2541
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2542
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
    .line 2558
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_18

    .line 2562
    .local v1, parent:Ljcifs/smb/SmbFile;
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2563
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->mkdirs()V

    .line 2565
    :cond_14
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 2566
    .end local v1           #parent:Ljcifs/smb/SmbFile;
    :goto_17
    return-void

    .line 2559
    :catch_18
    move-exception v0

    .line 2560
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
    .line 997
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1003
    :goto_6
    return-void

    .line 1000
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbFile;->fid:I

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 1002
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
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_20

    .line 968
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 974
    :cond_20
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6a

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

    if-eqz v1, :cond_53

    .line 979
    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 v1, v1, 0x16

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 980
    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 981
    iput-boolean v10, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    .line 983
    :cond_53
    invoke-virtual {p0, v0, v9}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 984
    iget v8, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 985
    .local v8, f:I
    iget v1, v9, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 987
    iput-boolean v10, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 994
    .end local v0           #request:Ljcifs/smb/SmbComNTCreateAndX;
    .end local v9           #response:Ljcifs/smb/SmbComNTCreateAndXResponse;
    :goto_69
    return v8

    .line 989
    .end local v8           #f:I
    :cond_6a
    new-instance v9, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {v9}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    .line 990
    .local v9, response:Ljcifs/smb/SmbComOpenAndXResponse;
    new-instance v1, Ljcifs/smb/SmbComOpenAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1, v7}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, v1, v9}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 991
    iget v8, v9, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    .restart local v8       #f:I
    goto :goto_69
.end method

.method public openPrintJob(Ljava/lang/String;)I
    .registers 4
    .parameter "printJobName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2899
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_a

    .line 2900
    const/4 v0, -0x1

    .line 2905
    :goto_9
    return v0

    .line 2902
    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2903
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->print_open(Ljava/lang/String;)V

    .line 2905
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "path1"
    .parameter "path2"

    .prologue
    const/16 v0, 0x2f

    const/16 v3, 0x2e

    const/4 v1, 0x1

    .line 2722
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2723
    .local v2, p1:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2724
    .local v4, p2:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v2

    .line 2725
    .local v5, l1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v4

    .line 2728
    .local v6, l2:I
    if-le v5, v1, :cond_24

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_24

    .line 2733
    :cond_23
    :goto_23
    return v1

    .line 2730
    :cond_24
    if-le v6, v1, :cond_2e

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_23

    .line 2733
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

.method public declared-synchronized print(Ljava/io/InputStream;Ljava/lang/String;)I
    .registers 11
    .parameter "input_stream"
    .parameter "printJobName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2959
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3f

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_c

    .line 2960
    const/4 v7, -0x1

    .line 2989
    :goto_a
    monitor-exit p0

    return v7

    .line 2962
    :cond_c
    const/4 v7, 0x0

    .line 2963
    .local v7, total:I
    :try_start_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2964
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDfs:Z

    if-eqz v1, :cond_19

    .line 2974
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2976
    :cond_19
    invoke-virtual {p0, p2}, Ljcifs/smb/SmbFile;->print_open(Ljava/lang/String;)V

    .line 2977
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v6, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 2979
    .local v6, sndBufSize:I
    const/16 v1, 0x46

    if-gt v6, v1, :cond_42

    .end local v6           #sndBufSize:I
    :goto_28
    new-array v5, v6, [B

    .line 2980
    .local v5, buf:[B
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    int-to-long v3, v1

    .line 2981
    .local v3, numRead:J
    :goto_2f
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3b

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_45

    .line 2988
    :cond_3b
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->close()V
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3f

    goto :goto_a

    .line 2959
    .end local v3           #numRead:J
    .end local v5           #buf:[B
    .end local v7           #total:I
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2979
    .restart local v6       #sndBufSize:I
    .restart local v7       #total:I
    :cond_42
    add-int/lit8 v6, v6, -0x46

    goto :goto_28

    .line 2982
    .end local v6           #sndBufSize:I
    .restart local v3       #numRead:J
    .restart local v5       #buf:[B
    :cond_45
    :try_start_45
    new-instance v0, Ljcifs/smb/SmbComWritePrintFile;

    iget v1, p0, Ljcifs/smb/SmbFile;->fid:I

    int-to-long v1, v1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbComWritePrintFile;-><init>(JJ[B)V

    .line 2984
    .local v0, request:Ljcifs/smb/SmbComWritePrintFile;
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2985
    int-to-long v1, v7

    add-long/2addr v1, v3

    long-to-int v7, v1

    .line 2986
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_3f

    move-result v1

    int-to-long v3, v1

    goto :goto_2f
.end method

.method print_open(Ljava/lang/String;)V
    .registers 7
    .parameter "printJobName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1008
    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_28

    .line 1009
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "print_open: unc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", printJobName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1010
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1012
    :cond_28
    new-instance v0, Ljcifs/smb/SmbComOpenPrintFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComOpenPrintFile;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, request:Ljcifs/smb/SmbComOpenPrintFile;
    new-instance v1, Ljcifs/smb/SmbComOpenPrintFileResponse;

    invoke-direct {v1}, Ljcifs/smb/SmbComOpenPrintFileResponse;-><init>()V

    .line 1014
    .local v1, response:Ljcifs/smb/SmbComOpenPrintFileResponse;
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1015
    iget-wide v2, v1, Ljcifs/smb/SmbComOpenPrintFileResponse;->fid:J

    long-to-int v2, v2

    iput v2, p0, Ljcifs/smb/SmbFile;->fid:I

    .line 1016
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 1017
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v2, v2, Ljcifs/smb/SmbTree;->tree_num:I

    iput v2, p0, Ljcifs/smb/SmbFile;->tree_num:I

    .line 1018
    return-void
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
    .line 1349
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1351
    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1c

    .line 1352
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryPath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1369
    :cond_1c
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1376
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    .line 1377
    .local v0, response:Ljcifs/smb/Trans2QueryPathInformationResponse;
    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1379
    iget-object v0, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    .line 1390
    .end local v0           #response:Ljcifs/smb/Trans2QueryPathInformationResponse;
    :goto_39
    return-object v0

    .line 1387
    :cond_3a
    new-instance v0, Ljcifs/smb/SmbComQueryInformationResponse;

    .line 1388
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    .line 1387
    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    .line 1389
    .local v0, response:Ljcifs/smb/SmbComQueryInformationResponse;
    new-instance v1, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_39
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

    .line 2069
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

    .line 2070
    :cond_18
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2073
    :cond_20
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2074
    invoke-virtual {p1, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2076
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2077
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2080
    :cond_38
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5f

    .line 2081
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renameTo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 2083
    :cond_5f
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2084
    iput-wide v3, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2090
    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2091
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

    .line 667
    iget-object v9, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v9, v9, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v9, v9, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v9, v9, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 668
    iget-object v10, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v10, v10, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 669
    iget-object v11, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 670
    iget-object v12, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 666
    invoke-virtual {v8, v9, v10, v11, v12}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    .line 671
    .local v1, dr:Ljcifs/smb/DfsReferral;
    if-eqz v1, :cond_123

    .line 672
    const/4 v5, 0x0

    .line 674
    .local v5, service:Ljava/lang/String;
    if-eqz p1, :cond_26

    .line 675
    iget-byte v8, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v8, :sswitch_data_148

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
    sget v8, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_41

    .line 696
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DFS redirect: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 698
    :cond_41
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
    if-eq v1, v6, :cond_6f

    iget-object v8, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v8, :cond_6f

    .line 709
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    iget-object v9, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6f} :catch_80

    .line 712
    :cond_6f
    const/4 v4, 0x0

    .line 726
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v7           #trans:Ljcifs/smb/SmbTransport;
    :goto_70
    if-eqz v4, :cond_95

    .line 727
    throw v4

    .end local v4           #se:Ljcifs/smb/SmbException;
    .end local v6           #start:Ljcifs/smb/DfsReferral;
    :sswitch_73
    move-object v8, p1

    .line 678
    check-cast v8, Ljcifs/smb/SmbComTransaction;

    iget-byte v8, v8, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_152

    .line 682
    const-string v5, "A:"

    .line 684
    goto :goto_26

    .line 715
    .restart local v4       #se:Ljcifs/smb/SmbException;
    .restart local v6       #start:Ljcifs/smb/DfsReferral;
    :catch_80
    move-exception v3

    .line 716
    .local v3, ioe:Ljava/io/IOException;
    instance-of v8, v3, Ljcifs/smb/SmbException;

    if-eqz v8, :cond_8d

    move-object v4, v3

    .line 717
    check-cast v4, Ljcifs/smb/SmbException;

    .line 723
    :goto_88
    iget-object v1, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 724
    if-ne v1, v6, :cond_28

    goto :goto_70

    .line 719
    :cond_8d
    new-instance v4, Ljcifs/smb/SmbException;

    .end local v4           #se:Ljcifs/smb/SmbException;
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v4, v8, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #se:Ljcifs/smb/SmbException;
    goto :goto_88

    .line 729
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_95
    sget v8, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_9f

    .line 730
    sget-object v8, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v8, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 732
    :cond_9f
    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 733
    iget v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v8, :cond_110

    .line 734
    iput v13, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 738
    :cond_a7
    :goto_a7
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v9, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, dunc:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 740
    const-string v2, "\\"

    .line 741
    :cond_b9
    iget-object v8, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d8

    .line 742
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\\"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    :cond_d8
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 745
    if-eqz p1, :cond_105

    .line 746
    iget-object v8, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v8, :cond_105

    .line 747
    iget-object v8, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 748
    const-string v8, "\\"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_105

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 751
    :cond_105
    if-eqz p1, :cond_10f

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
    :cond_10f
    :goto_10f
    return-void

    .line 735
    .restart local v4       #se:Ljcifs/smb/SmbException;
    .restart local v5       #service:Ljava/lang/String;
    .restart local v6       #start:Ljcifs/smb/DfsReferral;
    :cond_110
    iget v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v9, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_a7

    .line 736
    iget-object v8, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_a7

    .line 755
    .end local v4           #se:Ljcifs/smb/SmbException;
    .end local v5           #service:Ljava/lang/String;
    .end local v6           #start:Ljcifs/smb/DfsReferral;
    :cond_123
    iget-object v8, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v8, v8, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v8, :cond_13e

    .line 756
    instance-of v8, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    if-nez v8, :cond_13e

    .line 757
    instance-of v8, p1, Ljcifs/smb/SmbComClose;

    if-nez v8, :cond_13e

    .line 758
    instance-of v8, p1, Ljcifs/smb/SmbComFindClose2;

    if-nez v8, :cond_13e

    .line 759
    new-instance v8, Ljcifs/smb/SmbException;

    const v9, -0x3ffffddb

    invoke-direct {v8, v9, v13}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v8

    .line 761
    :cond_13e
    if-eqz p1, :cond_10f

    .line 762
    iget v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    and-int/lit16 v8, v8, -0x1001

    iput v8, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto :goto_10f

    .line 675
    nop

    :sswitch_data_148
    .sparse-switch
        0x25 -> :sswitch_73
        0x32 -> :sswitch_73
    .end sparse-switch

    .line 678
    :pswitch_data_152
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

    .line 2653
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2654
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2656
    :cond_15
    and-int/lit16 v1, p1, 0x30a7

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2657
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
    .line 2605
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2606
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2609
    :cond_13
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2610
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
    .line 2621
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2622
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2625
    :cond_13
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2626
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

    .line 2583
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2584
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v7, v0, 0x10

    .line 2586
    .local v7, dir:I
    const/16 v3, 0x100

    .line 2587
    if-eqz v7, :cond_2a

    move v0, v2

    .line 2586
    :goto_f
    invoke-virtual {p0, v2, v3, v7, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v1

    .line 2588
    .local v1, f:I
    new-instance v0, Ljcifs/smb/Trans2SetFileInformation;

    or-int v2, p1, v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    .line 2589
    new-instance v2, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v2}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    .line 2588
    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2590
    invoke-virtual {p0, v1, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2592
    iput-wide v8, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2593
    return-void

    .line 2587
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
    .line 2666
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 2667
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
    .line 2676
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 2677
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2804
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
    .line 2690
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    return-object v0
.end method

.method public writePrintData([BI)I
    .registers 10
    .parameter "buffer"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2911
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDfs:Z

    if-eqz v1, :cond_9

    .line 2921
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2923
    :cond_9
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v6, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 2925
    .local v6, sndBufSize:I
    new-instance v0, Ljcifs/smb/SmbComWritePrintFile;

    iget v1, p0, Ljcifs/smb/SmbFile;->fid:I

    int-to-long v1, v1

    .line 2926
    int-to-long v3, p2

    move-object v5, p1

    .line 2925
    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbComWritePrintFile;-><init>(JJ[B)V

    .line 2927
    .local v0, request:Ljcifs/smb/SmbComWritePrintFile;
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2929
    return p2
.end method
