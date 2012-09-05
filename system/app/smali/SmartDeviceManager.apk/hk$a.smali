.class public abstract Lhk$a;
.super Lhk;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x421
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lhk;-><init>()V

    return-void
.end method
