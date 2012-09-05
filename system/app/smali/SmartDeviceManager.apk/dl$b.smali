.class public final Ldl$b;
.super Ldl;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldl$b;-><init>(Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 13
    const/16 v0, 0x191

    invoke-direct {p0, v0, p1}, Ldl;-><init>(ILjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
