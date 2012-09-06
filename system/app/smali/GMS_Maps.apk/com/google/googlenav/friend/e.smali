.class public Lcom/google/googlenav/friend/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/d;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/googlenav/friend/e;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/google/googlenav/friend/e;->a:I

    invoke-static {v0}, Lcom/google/googlenav/friend/aB;->b(I)V

    .line 31
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/google/googlenav/friend/e;->a:I

    invoke-static {v0}, Lcom/google/googlenav/friend/aB;->a(I)V

    .line 36
    return-void
.end method
