.class final Lafv;
.super Lafl;
.source "CharMatcher.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    return v0
.end method
