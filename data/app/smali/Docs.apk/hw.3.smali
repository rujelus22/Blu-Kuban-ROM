.class public Lhw;
.super Ljava/lang/Object;
.source "VersionCheckImpl.java"

# interfaces
.implements Lht;


# instance fields
.field private final a:LFX;

.field a:Ljava/lang/String;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "versionFlag"
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFX;LXJ;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lhw;->a:LFX;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {}, LZG;->a()I

    move-result v1

    .line 37
    iget-object v2, p0, Lhw;->a:LFX;

    iget-object v3, p0, Lhw;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, LFX;->a(Ljava/lang/String;I)I

    move-result v2

    .line 42
    if-ltz v1, :cond_11

    if-lt v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0
.end method
