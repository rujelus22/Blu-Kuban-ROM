.class public LhD;
.super Ljava/lang/Object;
.source "AccountInformationImpl.java"

# interfaces
.implements LhB;


# instance fields
.field private a:Ljava/lang/String;

.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "LhC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, LhD;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, LhD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_3

    .line 64
    :cond_2
    :goto_2
    return-void

    .line 60
    :cond_3
    const-string v0, "accountInformation_accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p0, v0}, LhD;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(LhC;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LhD;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LhD;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    :cond_8
    return-void

    .line 47
    :cond_9
    iput-object p1, p0, LhD;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p0, LhD;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhC;

    .line 50
    invoke-interface {v0}, LhC;->b()V

    goto :goto_11
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "accountInformation_accountName"

    invoke-virtual {p0}, LhD;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
