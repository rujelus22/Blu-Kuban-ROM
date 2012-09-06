.class public abstract Lak/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/f;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/i;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/i;->a:Z

    .line 22
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/i;->a:Z

    .line 17
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lak/i;->a:Z

    return v0
.end method
