.class public Lcom/android/providers/contacts/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ADN_FROM_CONTACTS_URI:Landroid/net/Uri;

.field public static final ADN_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/Constants;->ADN_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://icc/adn/from_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/Constants;->ADN_FROM_CONTACTS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
