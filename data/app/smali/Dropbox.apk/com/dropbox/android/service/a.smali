.class final Lcom/dropbox/android/service/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/AuthenticationService;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/AuthenticationService;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dropbox/android/service/a;->a:Lcom/dropbox/android/service/AuthenticationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->e()V

    .line 34
    return-void
.end method
