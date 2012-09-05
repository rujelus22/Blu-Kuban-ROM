.class public final Lcom/android/emailcommon/provider/EmailContent$HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostAuth"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$HostAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddress:Ljava/lang/String;

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
    .line 7581
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

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 7629
    const/16 v0, 0x8

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

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 7976
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7638
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 7639
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 7642
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7643
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 8005
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 8006
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 8007
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 8008
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 8009
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 8010
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 8011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 8012
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 8013
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 8014
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 8015
    return-void
.end method

.method public static getSchemeFlags(Ljava/lang/String;)I
    .registers 8
    .parameter "scheme"

    .prologue
    const/4 v6, 0x2

    .line 7728
    const-string v4, "\\+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7729
    .local v3, schemeParts:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 7730
    .local v0, flags:I
    array-length v4, v3

    if-lt v4, v6, :cond_28

    .line 7731
    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 7732
    .local v1, part1:Ljava/lang/String;
    const-string v4, "ssl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 7733
    or-int/lit8 v0, v0, 0x1

    .line 7737
    :cond_18
    :goto_18
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_28

    .line 7738
    aget-object v2, v3, v6

    .line 7739
    .local v2, part2:Ljava/lang/String;
    const-string v4, "trustallcerts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 7740
    or-int/lit8 v0, v0, 0x8

    .line 7744
    .end local v1           #part1:Ljava/lang/String;
    .end local v2           #part2:Ljava/lang/String;
    :cond_28
    return v0

    .line 7734
    .restart local v1       #part1:Ljava/lang/String;
    :cond_29
    const-string v4, "tls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 7735
    or-int/lit8 v0, v0, 0x2

    goto :goto_18
.end method

.method public static getSchemeString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "protocol"
    .parameter "flags"

    .prologue
    .line 7706
    const-string v0, ""

    .line 7707
    .local v0, security:Ljava/lang/String;
    and-int/lit8 v1, p1, 0xb

    sparse-switch v1, :sswitch_data_26

    .line 7721
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7709
    :sswitch_19
    const-string v0, "+ssl+"

    .line 7710
    goto :goto_7

    .line 7712
    :sswitch_1c
    const-string v0, "+ssl+trustallcerts"

    .line 7713
    goto :goto_7

    .line 7715
    :sswitch_1f
    const-string v0, "+tls+"

    .line 7716
    goto :goto_7

    .line 7718
    :sswitch_22
    const-string v0, "+tls+trustallcerts"

    goto :goto_7

    .line 7707
    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_1f
        0x9 -> :sswitch_1c
        0xa -> :sswitch_22
    .end sparse-switch
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 7653
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7656
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_69
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_13} :catch_53

    move-result-object v1

    .line 7659
    if-nez v1, :cond_2a

    .line 7660
    :try_start_16
    const-string v0, "EmailContent >>"

    const-string v2, "restoreHostAuthWithId : null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_79

    .line 7672
    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_28

    .line 7673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_28
    move-object v0, v6

    .line 7675
    :cond_29
    :goto_29
    return-object v0

    .line 7664
    :cond_2a
    if-eqz v1, :cond_46

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 7665
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_3a} :catch_79

    .line 7672
    if-eqz v1, :cond_29

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_29

    .line 7673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 7672
    :cond_46
    if-eqz v1, :cond_51

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_51

    .line 7673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_51
    move-object v0, v6

    goto :goto_29

    .line 7669
    :catch_53
    move-exception v0

    move-object v1, v6

    .line 7670
    :goto_55
    :try_start_55
    const-string v2, "EmailContent >>"

    const-string v3, "RuntimeException in restoreHostAuthWithId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_77

    .line 7672
    if-eqz v1, :cond_67

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_67

    .line 7673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_67
    move-object v0, v6

    .line 7675
    goto :goto_29

    .line 7672
    :catchall_69
    move-exception v0

    move-object v1, v6

    :goto_6b
    if-eqz v1, :cond_76

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_76

    .line 7673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0

    .line 7672
    :catchall_77
    move-exception v0

    goto :goto_6b

    .line 7669
    :catch_79
    move-exception v0

    goto :goto_55
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 7970
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 8019
    instance-of v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_6

    .line 8023
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 8022
    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 8023
    .local v0, that:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getStoreUri()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 7782
    const/4 v2, 0x0

    .line 7783
    .local v2, userInfo:Ljava/lang/String;
    iget v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_33

    .line 7784
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 7785
    .local v10, trimUser:Ljava/lang/String;
    :goto_12
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 7786
    .local v9, trimPassword:Ljava/lang/String;
    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7788
    .end local v9           #trimPassword:Ljava/lang/String;
    .end local v10           #trimUser:Ljava/lang/String;
    :cond_33
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v6, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v4, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7789
    .local v1, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 7790
    .local v3, address:Ljava/lang/String;
    :goto_45
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    if-eqz v4, :cond_74

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7794
    .local v5, path:Ljava/lang/String;
    :goto_5e
    :try_start_5e
    new-instance v0, Ljava/net/URI;

    iget v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7795
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/net/URISyntaxException; {:try_start_5e .. :try_end_6a} :catch_76

    move-result-object v11

    .line 7797
    .end local v0           #uri:Ljava/net/URI;
    :goto_6b
    return-object v11

    .line 7784
    .end local v1           #scheme:Ljava/lang/String;
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_6c
    const-string v10, ""

    goto :goto_12

    .line 7785
    .restart local v10       #trimUser:Ljava/lang/String;
    :cond_6f
    const-string v9, ""

    goto :goto_1c

    .end local v10           #trimUser:Ljava/lang/String;
    .restart local v1       #scheme:Ljava/lang/String;
    :cond_72
    move-object v3, v11

    .line 7789
    goto :goto_45

    .restart local v3       #address:Ljava/lang/String;
    :cond_74
    move-object v5, v11

    .line 7790
    goto :goto_5e

    .line 7796
    .restart local v5       #path:Ljava/lang/String;
    :catch_76
    move-exception v8

    .line 7797
    .local v8, e:Ljava/net/URISyntaxException;
    goto :goto_6b
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 7749
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 7750
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 7751
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 7752
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 7753
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7754
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7755
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 7756
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 7757
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 7758
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "scheme"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 7836
    const-string v3, "\\+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7837
    .local v2, schemeParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 7838
    .local v1, protocol:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeFlags(Ljava/lang/String;)I

    move-result v0

    .line 7840
    .local v0, flags:I
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 7841
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter "protocol"
    .parameter "address"
    .parameter "port"
    .parameter "flags"

    .prologue
    .line 7845
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 7847
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, -0xc

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7848
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, p4, 0xb

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7850
    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 7851
    iput p3, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7852
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    .line 7853
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    const/4 v0, 0x1

    .line 7863
    .local v0, useSSL:Z
    :goto_1f
    const-string v1, "pop3"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7864
    if-eqz v0, :cond_32

    const/16 v1, 0x3e3

    :goto_2d
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7873
    .end local v0           #useSSL:Z
    :cond_2f
    :goto_2f
    return-void

    .line 7853
    :cond_30
    const/4 v0, 0x0

    goto :goto_1f

    .line 7864
    .restart local v0       #useSSL:Z
    :cond_32
    const/16 v1, 0x6e

    goto :goto_2d

    .line 7865
    :cond_35
    const-string v1, "imap"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 7866
    if-eqz v0, :cond_46

    const/16 v1, 0x3e1

    :goto_43
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2f

    :cond_46
    const/16 v1, 0x8f

    goto :goto_43

    .line 7867
    :cond_49
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 7868
    if-eqz v0, :cond_5a

    const/16 v1, 0x1bb

    :goto_57
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2f

    :cond_5a
    const/16 v1, 0x50

    goto :goto_57

    .line 7869
    :cond_5d
    const-string v1, "smtp"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 7870
    if-eqz v0, :cond_6e

    const/16 v1, 0x1d1

    :goto_6b
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2f

    :cond_6e
    const/16 v1, 0x24b

    goto :goto_6b
.end method

.method public setLogin(Ljava/lang/String;)V
    .registers 8
    .parameter "userInfo"

    .prologue
    const/4 v5, 0x1

    .line 7805
    const/4 v1, 0x0

    .line 7806
    .local v1, userName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 7807
    .local v2, userPassword:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 7808
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 7809
    .local v0, userInfoParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 7810
    array-length v3, v0

    if-le v3, v5, :cond_18

    .line 7811
    aget-object v2, v0, v5

    .line 7814
    .end local v0           #userInfoParts:[Ljava/lang/String;
    :cond_18
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 7815
    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "userName"
    .parameter "userPassword"

    .prologue
    .line 7821
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 7822
    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 7824
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 7825
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7829
    :goto_e
    return-void

    .line 7827
    :cond_f
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    goto :goto_e
.end method

.method public setStoreUri(Ljava/lang/String;)V
    .registers 15
    .parameter "uriString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 7884
    :try_start_3
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 7885
    .local v4, uri:Ljava/net/URI;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 7886
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 7887
    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v8, v8, -0x5

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7888
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 7889
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 7890
    .local v6, userInfoParts:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 7891
    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7892
    array-length v8, v6

    if-le v8, v11, :cond_38

    .line 7893
    const/4 v8, 0x1

    aget-object v8, v6, v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 7899
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_38
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7900
    .local v2, schemeParts:[Ljava/lang/String;
    array-length v8, v2

    if-lt v8, v11, :cond_48

    const/4 v7, 0x0

    aget-object v7, v2, v7

    :cond_48
    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 7901
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0xc

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7902
    const/4 v3, 0x0

    .line 7903
    .local v3, ssl:Z
    array-length v7, v2

    if-lt v7, v12, :cond_7b

    .line 7904
    const/4 v7, 0x1

    aget-object v0, v2, v7

    .line 7905
    .local v0, part1:Ljava/lang/String;
    const-string v7, "ssl"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 7906
    const/4 v3, 0x1

    .line 7907
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7911
    :cond_66
    :goto_66
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_7b

    .line 7912
    const/4 v7, 0x2

    aget-object v1, v2, v7

    .line 7913
    .local v1, part2:Ljava/lang/String;
    const-string v7, "trustallcerts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 7914
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 7919
    .end local v0           #part1:Ljava/lang/String;
    .end local v1           #part2:Ljava/lang/String;
    :cond_7b
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 7920
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v7

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7921
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9c

    .line 7928
    const-string v7, "pop3"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 7929
    if-eqz v3, :cond_ce

    const/16 v7, 0x3e3

    :goto_9a
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 7939
    :cond_9c
    :goto_9c
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b7

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b7

    .line 7940
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 7950
    :cond_b7
    return-void

    .line 7908
    .restart local v0       #part1:Ljava/lang/String;
    :cond_b8
    const-string v7, "tls"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 7909
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_c6
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_c6} :catch_c7

    goto :goto_66

    .line 7943
    .end local v0           #part1:Ljava/lang/String;
    .end local v2           #schemeParts:[Ljava/lang/String;
    .end local v3           #ssl:Z
    .end local v4           #uri:Ljava/net/URI;
    :catch_c7
    move-exception v5

    .line 7947
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 7929
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #schemeParts:[Ljava/lang/String;
    .restart local v3       #ssl:Z
    .restart local v4       #uri:Ljava/net/URI;
    :cond_ce
    const/16 v7, 0x6e

    goto :goto_9a

    .line 7930
    :cond_d1
    :try_start_d1
    const-string v7, "imap"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 7931
    if-eqz v3, :cond_e2

    const/16 v7, 0x3e1

    :goto_df
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_9c

    :cond_e2
    const/16 v7, 0x8f

    goto :goto_df

    .line 7932
    :cond_e5
    const-string v7, "eas"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 7933
    if-eqz v3, :cond_f6

    const/16 v7, 0x1bb

    :goto_f3
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_9c

    :cond_f6
    const/16 v7, 0x50

    goto :goto_f3

    .line 7934
    :cond_f9
    const-string v7, "smtp"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 7935
    if-eqz v3, :cond_10a

    const/16 v7, 0x1d1

    :goto_107
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I
    :try_end_109
    .catch Ljava/net/URISyntaxException; {:try_start_d1 .. :try_end_109} :catch_c7

    goto :goto_9c

    :cond_10a
    const/16 v7, 0x24b

    goto :goto_107
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 7762
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7763
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7764
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7765
    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7766
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7767
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7768
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7769
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7770
    const-string v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7771
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8036
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 7991
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7992
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7993
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7994
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7995
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7996
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7997
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7998
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8000
    return-void
.end method
