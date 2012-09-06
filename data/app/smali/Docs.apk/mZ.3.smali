.class LmZ;
.super Ljava/lang/Object;
.source "StreamAuthorImpl.java"

# interfaces
.implements LmY;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(LaeU;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, LaeU;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmZ;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, LaeU;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmZ;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, LaeU;->a()LaeV;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, LaeU;->a()LaeV;

    move-result-object v0

    invoke-virtual {v0}, LaeV;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 37
    invoke-virtual {p1}, LaeU;->a()LaeV;

    move-result-object v0

    invoke-virtual {v0}, LaeV;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LmZ;->a:Landroid/net/Uri;

    .line 41
    :goto_2d
    return-void

    .line 39
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, LmZ;->a:Landroid/net/Uri;

    goto :goto_2d
.end method

.method constructor <init>(LaeX;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, LaeX;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmZ;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, LaeX;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmZ;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, LaeX;->a()LaeY;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, LaeX;->a()LaeY;

    move-result-object v0

    invoke-virtual {v0}, LaeY;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 26
    invoke-virtual {p1}, LaeX;->a()LaeY;

    move-result-object v0

    invoke-virtual {v0}, LaeY;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LmZ;->a:Landroid/net/Uri;

    .line 30
    :goto_2d
    return-void

    .line 28
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, LmZ;->a:Landroid/net/Uri;

    goto :goto_2d
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, LmZ;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LmZ;->b:Ljava/lang/String;

    return-object v0
.end method
