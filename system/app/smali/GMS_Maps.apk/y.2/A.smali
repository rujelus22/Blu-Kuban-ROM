.class public abstract Ly/a;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:Ly/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly/b;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Ly/a;->a:Ly/b;

    .line 36
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ly/b;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Ly/a;->a:Ly/b;

    return-object v0
.end method

.method public i()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 23
    const v0, 0xdbba0

    return v0
.end method
