.class public final Lcom/sec/android/app/sns/type/SnsSpType;
.super Ljava/lang/Object;
.source "SnsSpType.java"


# static fields
.field public static final LIST:[Ljava/lang/Integer;

.field public static final NAME:[Ljava/lang/String;

.field public static final SUPPORTED_LIST:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "facebook"

    aput-object v1, v0, v3

    const-string v1, "myspace"

    aput-object v1, v0, v4

    const-string v1, "twitter"

    aput-object v1, v0, v5

    const-string v1, "bebo"

    aput-object v1, v0, v6

    const-string v1, "friendster"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "skyrock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "kaixin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "renren"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "linkedin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "plurk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lastfm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "orkut"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mixi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "me2day"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "qzone"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "multisp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[Ljava/lang/Integer;

    .line 100
    sget-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[Ljava/lang/Integer;

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAccountType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "spType"

    .prologue
    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, type:I
    packed-switch v0, :pswitch_data_28

    .line 151
    :pswitch_7
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 121
    :pswitch_9
    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    goto :goto_8

    .line 124
    :pswitch_c
    const-string v1, "com.sec.android.app.snsaccountmixi.account_type"

    goto :goto_8

    .line 127
    :pswitch_f
    const-string v1, "com.sec.android.app.snsaccountmyspace.account_type"

    goto :goto_8

    .line 130
    :pswitch_12
    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    goto :goto_8

    .line 133
    :pswitch_15
    const-string v1, "com.sec.android.app.snsaccountlinkedin.account_type"

    goto :goto_8

    .line 136
    :pswitch_18
    const-string v1, "com.sec.android.app.snsaccountme2day.account_type"

    goto :goto_8

    .line 139
    :pswitch_1b
    const-string v1, "com.sec.android.app.snsaccountkaixin.account_type"

    goto :goto_8

    .line 142
    :pswitch_1e
    const-string v1, "com.sec.android.app.snsaccountrenren.account_type"

    goto :goto_8

    .line 145
    :pswitch_21
    const-string v1, "com.sec.android.app.snsaccountqzone.account_type"

    goto :goto_8

    .line 148
    :pswitch_24
    const-string v1, "com.sec.android.app.snsaccountplurk.account_type"

    goto :goto_8

    .line 118
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1b
        :pswitch_1e
        :pswitch_15
        :pswitch_7
        :pswitch_24
        :pswitch_7
        :pswitch_7
        :pswitch_c
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method
