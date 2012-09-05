.class public final Ldl$a;
.super Ldl;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldl$a;-><init>(ILjava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ldl;-><init>(ILjava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
