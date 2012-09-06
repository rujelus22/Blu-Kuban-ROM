.class public abstract Labr;
.super Ljava/lang/Object;
.source "ActionBarHelperFactory.java"

# interfaces
.implements LIk;


# instance fields
.field private final a:LdL;


# direct methods
.method protected constructor <init>(LdL;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Labr;->a:LdL;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)LIi;
    .registers 4
    .parameter

    .prologue
    .line 37
    instance-of v0, p1, LcK;

    invoke-static {v0}, LafQ;->a(Z)V

    .line 38
    new-instance v0, Lej;

    iget-object v1, p0, Labr;->a:LdL;

    invoke-direct {v0, p1, v1}, Lej;-><init>(Landroid/app/Activity;LdL;)V

    .line 39
    invoke-virtual {p0, p1, v0}, Labr;->a(Landroid/app/Activity;LIC;)LIi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;LIC;)LIi;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0, p1, p2, v0}, Labr;->a(Landroid/app/Activity;LIC;Ljava/lang/String;)LIi;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/app/Activity;LIC;Ljava/lang/String;)LIi;
.end method
