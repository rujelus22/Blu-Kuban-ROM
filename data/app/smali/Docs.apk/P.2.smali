.class public abstract LP;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/os/Bundle;LQ;)LX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "LQ",
            "<TD;>;)",
            "LX",
            "<TD;>;"
        }
    .end annotation
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
