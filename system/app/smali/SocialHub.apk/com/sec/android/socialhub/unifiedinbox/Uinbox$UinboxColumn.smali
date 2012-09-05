.class public Lcom/sec/android/socialhub/unifiedinbox/Uinbox$UinboxColumn;
.super Ljava/lang/Object;
.source "Uinbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/Uinbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UinboxColumn"
.end annotation


# static fields
.field public static final UINBOX_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "real_email_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "app"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "presence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_order"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "support_msg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$UinboxColumn;->UINBOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
