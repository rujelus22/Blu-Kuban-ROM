.class final LafG;
.super LafD;
.source "Equivalences.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LafD",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:LafG;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, LafG;

    invoke-direct {v0}, LafG;-><init>()V

    sput-object v0, LafG;->a:LafG;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, LafD;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
