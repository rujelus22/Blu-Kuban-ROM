.class public final Landroid/provider/ProviderStatus;
.super Ljava/lang/Object;
.source "ProviderStatus.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/provider_status"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_CHANGING_LOCALE:I = 0x3

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NO_ACCOUNTS_NO_CONTACTS:I = 0x4

.field public static final STATUS_UPGRADE_OUT_OF_MEMORY:I = 0x2

.field public static final STATUS_UPGRADING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ProviderStatus;->AUTHORITY_URI:Landroid/net/Uri;

    .line 28
    sget-object v0, Landroid/provider/ProviderStatus;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "provider_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method
