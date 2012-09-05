.class public final Lcom/samsung/device/Features;
.super Ljava/lang/Object;
.source "Features.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSamsungDevice()Z
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x1

    return v0
.end method
