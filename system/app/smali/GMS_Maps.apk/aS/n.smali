.class Las/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 317
    sput-boolean v0, Las/n;->a:Z

    .line 319
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 322
    array-length v2, v1

    :goto_14
    if-ge v0, v2, :cond_25

    aget-object v3, v1, v0

    .line 323
    const-string v4, "com.google"

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 324
    const/4 v0, 0x1

    sput-boolean v0, Las/n;->a:Z

    .line 328
    :cond_25
    return-void

    .line 322
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
