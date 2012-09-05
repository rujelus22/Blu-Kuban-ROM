.class public final Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;
.super Ljava/lang/Object;
.source "Emailcontent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/db/Emailcontent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailMessage"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 10
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
