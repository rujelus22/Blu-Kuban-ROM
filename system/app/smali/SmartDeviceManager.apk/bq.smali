.class public final Lbq;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityClass:Ljava/lang/String;

.field public activityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .registers 3

    .prologue
    .line 11
    const/16 v0, 0x7ab7

    .line 12
    iget-object v1, p0, Lbq;->activityName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lbq;->activityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x61

    xor-int/lit16 v0, v0, 0x7ab7

    .line 13
    :cond_10
    iget-object v1, p0, Lbq;->activityClass:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lbq;->activityClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    .line 14
    :cond_1d
    return v0
.end method
