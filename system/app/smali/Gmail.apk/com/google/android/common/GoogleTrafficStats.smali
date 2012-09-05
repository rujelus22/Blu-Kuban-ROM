.class public Lcom/google/android/common/GoogleTrafficStats;
.super Ljava/lang/Object;
.source "GoogleTrafficStats.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDomainType(Ljava/lang/String;)I
    .registers 2
    .parameter "accountName"

    .prologue
    .line 33
    const-string v0, "google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    const/high16 v0, 0x3000

    .line 39
    :goto_a
    return v0

    .line 35
    :cond_b
    const-string v0, "gmail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "googlemail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 37
    :cond_1b
    const/high16 v0, 0x1000

    goto :goto_a

    .line 39
    :cond_1e
    const/high16 v0, 0x2000

    goto :goto_a
.end method
