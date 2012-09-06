.class final Las/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/accounts/AccountManager;

.field final synthetic b:Landroid/accounts/Account;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Las/m;->a:Landroid/accounts/AccountManager;

    iput-object p2, p0, Las/m;->b:Landroid/accounts/Account;

    iput-boolean p3, p0, Las/m;->c:Z

    iput-boolean p4, p0, Las/m;->d:Z

    iput-object p5, p0, Las/m;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 175
    iget-object v0, p0, Las/m;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Las/m;->b:Landroid/accounts/Account;

    iget-boolean v2, p0, Las/m;->c:Z

    iget-boolean v3, p0, Las/m;->d:Z

    iget-object v4, p0, Las/m;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Las/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    .line 177
    return-void
.end method
