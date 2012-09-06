.class public abstract Lac/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/c;->a:Z

    return-void
.end method


# virtual methods
.method public Z()V
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lac/c;->a:Z

    if-nez v0, :cond_a

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/c;->a:Z

    .line 28
    invoke-virtual {p0}, Lac/c;->a()V

    .line 30
    :cond_a
    return-void
.end method

.method public abstract a()V
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lac/c;->a:Z

    return v0
.end method
