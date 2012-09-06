.class public abstract Laf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/b;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/k;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/k;->a:Z

    .line 15
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/k;->a:Z

    .line 19
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Laf/k;->a:Z

    return v0
.end method
