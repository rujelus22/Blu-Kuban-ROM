.class public abstract Lcom/google/googlenav/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aV;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 263
    if-nez p1, :cond_6

    .line 265
    invoke-virtual {p0}, Lcom/google/googlenav/bD;->a()V

    .line 270
    :goto_5
    return-void

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/bD;->b()V

    goto :goto_5
.end method

.method public abstract b()V
.end method
