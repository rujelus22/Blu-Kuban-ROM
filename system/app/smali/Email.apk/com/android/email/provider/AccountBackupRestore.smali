.class public Lcom/android/email/provider/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backup(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    return-void
.end method
