.class final Lcom/cooliris/picasa/PicasaApi$1;
.super Ljava/lang/Object;
.source "PicasaApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/picasa/PicasaApi;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaApi$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/cooliris/picasa/PicasaApi$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 108
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/picasa/PicasaApi;->access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 118
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    :goto_f
    return-void

    .line 115
    :catch_10
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
