.class public LgR;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"


# instance fields
.field public final a:I

.field public final a:[I


# direct methods
.method private constructor <init>(I[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, LgR;->a:I

    .line 111
    iput-object p2, p0, LgR;->a:[I

    .line 112
    return-void
.end method

.method public synthetic constructor <init>(I[ILgK;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, LgR;-><init>(I[I)V

    return-void
.end method
