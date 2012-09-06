.class public abstract Lbk/j;
.super Lbk/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lbk/a;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lbk/k;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lbk/a;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Lbk/f;Lbk/i;I)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1, p3}, Lbk/f;->b(I)Z

    move-result v0

    return v0
.end method

.method protected s()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method
