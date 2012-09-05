.class public abstract Lmz;
.super Lmm;
.source "a"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lmm;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lmz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
