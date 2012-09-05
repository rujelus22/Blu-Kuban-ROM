.class public final Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;
.super Ljava/lang/Object;
.source "SocialHubDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/db/SocialHubDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "content://com.sec.android.socialhub.unifiedinbox/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.sec.android.socialhub.unifiedinbox/from_email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemoveAccountTrigger()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    const-string v0, " CREATE TRIGGER remove_account_trigger BEFORE DELETE ON accounts FOR EACH ROW  BEGIN  DELETE FROM messages WHERE messages.app_type = old.app_type and (account_id = old.real_email_id OR sp_type = old.real_email_id);  END;"

    return-object v0
.end method
