.class public Lcom/sec/android/app/sns/type/SnsAccountType;
.super Ljava/lang/Object;
.source "SnsAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.snsaccountbebo.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.snsaccountfriendster.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.snsaccountskyrock.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.snsaccountlinkedin.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.snsaccountvz.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.snsaccountplurk.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.snsaccountlastfm.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.snsaccountorkut.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.snsaccountmixi.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.snsaccountme2day.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
