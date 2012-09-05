.class public Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;
.super Ljava/lang/Object;
.source "Uinbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/Uinbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seven"
.end annotation


# static fields
.field public static final ACC_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

.field public static final SAMSUNG_IM:Ljava/lang/CharSequence;

.field public static final SAMSUNG_ISP:Ljava/lang/CharSequence;

.field public static final SAMSUNG_OWA:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 259
    const-string v0, "content://com.seven.provider.im/contacts/chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 282
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "im_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enterprise"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->ACC_PROJECTION:[Ljava/lang/String;

    .line 291
    const-string v0, ".isp"

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_ISP:Ljava/lang/CharSequence;

    .line 292
    const-string v0, ".im"

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_IM:Ljava/lang/CharSequence;

    .line 293
    const-string v0, ".owa"

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_OWA:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
