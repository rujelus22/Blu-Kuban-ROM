.class public Lvm;
.super Lanf;
.source "JsCacheModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 20
    const-class v0, Lvg;

    invoke-virtual {p0, v0}, Lvm;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lvi;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 21
    const-class v0, LXP;

    invoke-virtual {p0, v0}, Lvm;->a(Ljava/lang/Class;)V

    .line 22
    const-class v0, Llu;

    invoke-virtual {p0, v0}, Lvm;->a(Ljava/lang/Class;)V

    .line 23
    const-class v0, Lkm;

    invoke-virtual {p0, v0}, Lvm;->a(Ljava/lang/Class;)V

    .line 24
    return-void
.end method
