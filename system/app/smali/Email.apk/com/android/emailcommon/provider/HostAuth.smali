.class public final Lcom/android/emailcommon/provider/HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mClientCertAlias:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "certAlias"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 352
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public static getSchemeFlags(Ljava/lang/String;)I
    .registers 8
    .parameter "scheme"

    .prologue
    const/4 v6, 0x2

    .line 150
    const-string v4, "\\+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, schemeParts:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 152
    .local v0, flags:I
    array-length v4, v3

    if-lt v4, v6, :cond_28

    .line 153
    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 154
    .local v1, part1:Ljava/lang/String;
    const-string v4, "ssl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 155
    or-int/lit8 v0, v0, 0x1

    .line 159
    :cond_18
    :goto_18
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_28

    .line 160
    aget-object v2, v3, v6

    .line 161
    .local v2, part2:Ljava/lang/String;
    const-string v4, "trustallcerts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 162
    or-int/lit8 v0, v0, 0x8

    .line 166
    .end local v1           #part1:Ljava/lang/String;
    .end local v2           #part2:Ljava/lang/String;
    :cond_28
    return v0

    .line 156
    .restart local v1       #part1:Ljava/lang/String;
    :cond_29
    const-string v4, "tls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 157
    or-int/lit8 v0, v0, 0x2

    goto :goto_18
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 99
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    return-object v0
.end method

.method public static setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    .registers 8
    .parameter "auth"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 407
    .local v3, uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 409
    .local v0, domain:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 411
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_15
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 414
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, scheme:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 366
    instance-of v2, p1, Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_6

    .line 370
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 369
    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    .line 370
    .local v0, that:Lcom/android/emailcommon/provider/HostAuth;
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getLogin()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 233
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_26

    .line 234
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, trimUser:Ljava/lang/String;
    :goto_10
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 236
    .local v0, password:Ljava/lang/String;
    :goto_16
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 238
    .end local v0           #password:Ljava/lang/String;
    .end local v1           #trimUser:Ljava/lang/String;
    :goto_1f
    return-object v2

    .line 234
    :cond_20
    const-string v1, ""

    goto :goto_10

    .line 235
    .restart local v1       #trimUser:Ljava/lang/String;
    :cond_23
    const-string v0, ""

    goto :goto_16

    .line 238
    .end local v1           #trimUser:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 386
    const/16 v0, 0x1d

    .line 387
    .local v0, hashCode:I
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 388
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_d
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 391
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 393
    :cond_1a
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    add-int/2addr v1, v2

    return v1
.end method

.method public isEasConnection()Z
    .registers 3

    .prologue
    .line 294
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 171
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 172
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 173
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 174
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 175
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 176
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 177
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 178
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 179
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 180
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "scheme"
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 424
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, schemeParts:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 426
    .local v1, protocol:Ljava/lang/String;
    const/4 v5, 0x0

    .line 427
    .local v5, clientCertAlias:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeFlags(Ljava/lang/String;)I

    move-result v4

    .line 430
    .local v4, flags:I
    array-length v0, v6

    if-le v0, v2, :cond_1c

    .line 431
    aget-object v5, v6, v2

    :cond_15
    :goto_15
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 438
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 439
    return-void

    .line 432
    :cond_1c
    array-length v0, v6

    if-le v0, v3, :cond_15

    .line 433
    const-string v0, "trustallcerts"

    aget-object v2, v6, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 434
    aget-object v0, v6, v3

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    goto :goto_15
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "protocol"
    .parameter "address"
    .parameter "port"
    .parameter "flags"

    .prologue
    .line 242
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 243
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .parameter "protocol"
    .parameter "address"
    .parameter "port"
    .parameter "flags"
    .parameter "clientCertAlias"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 260
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v3, v3, -0xc

    iput v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 261
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v4, p4, 0xb

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 263
    and-int/lit8 v3, p4, 0x3

    if-eqz v3, :cond_26

    move v1, v0

    .line 264
    .local v1, useSecureConnection:Z
    :goto_16
    if-nez v1, :cond_28

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t use client alias on non-secure connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #useSecureConnection:Z
    :cond_26
    move v1, v2

    .line 263
    goto :goto_16

    .line 268
    .restart local v1       #useSecureConnection:Z
    :cond_28
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 269
    iput p3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 270
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_47

    .line 271
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    .line 278
    .local v0, useSSL:Z
    :goto_37
    const-string v2, "pop3"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 279
    if-eqz v0, :cond_4c

    const/16 v2, 0x3e3

    :goto_45
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 289
    .end local v0           #useSSL:Z
    :cond_47
    :goto_47
    iput-object p5, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 290
    return-void

    :cond_4a
    move v0, v2

    .line 271
    goto :goto_37

    .line 279
    .restart local v0       #useSSL:Z
    :cond_4c
    const/16 v2, 0x6e

    goto :goto_45

    .line 280
    :cond_4f
    const-string v2, "imap"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 281
    if-eqz v0, :cond_60

    const/16 v2, 0x3e1

    :goto_5d
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    goto :goto_47

    :cond_60
    const/16 v2, 0x8f

    goto :goto_5d

    .line 282
    :cond_63
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 283
    if-eqz v0, :cond_74

    const/16 v2, 0x1bb

    :goto_71
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    goto :goto_47

    :cond_74
    const/16 v2, 0x50

    goto :goto_71

    .line 284
    :cond_77
    const-string v2, "smtp"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 285
    if-eqz v0, :cond_88

    const/16 v2, 0x1d1

    :goto_85
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    goto :goto_47

    :cond_88
    const/16 v2, 0x24b

    goto :goto_85
.end method

.method public setLogin(Ljava/lang/String;)V
    .registers 8
    .parameter "userInfo"

    .prologue
    const/4 v5, 0x1

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, userName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 204
    .local v2, userPassword:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 205
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, userInfoParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 207
    array-length v3, v0

    if-le v3, v5, :cond_18

    .line 208
    aget-object v2, v0, v5

    .line 211
    .end local v0           #userInfoParts:[Ljava/lang/String;
    :cond_18
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "userName"
    .parameter "userPassword"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 222
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 226
    :goto_e
    return-void

    .line 224
    :cond_f
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    goto :goto_e
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "certAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return-void
.end method
