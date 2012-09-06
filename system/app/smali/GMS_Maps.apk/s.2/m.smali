.class public Ls/m;
.super Ls/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ls/q;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Z
    .registers 2

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method
