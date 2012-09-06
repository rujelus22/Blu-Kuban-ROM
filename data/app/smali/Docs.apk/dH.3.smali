.class public LdH;
.super Ljava/lang/Object;
.source "AccountDeletionCheckerImpl.java"

# interfaces
.implements LdG;


# instance fields
.field private a:LHW;


# direct methods
.method public constructor <init>(LHW;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, LdH;->a:LHW;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LdH;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 31
    const/4 v1, -0x1

    invoke-static {v0, p1}, LHY;->a([Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
