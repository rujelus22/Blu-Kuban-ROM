.class public abstract Lcom/google/googlenav/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .registers 2

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/google/googlenav/bx;->a()V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/bx;->b()V

    goto :goto_5
.end method

.method public abstract b()V
.end method
