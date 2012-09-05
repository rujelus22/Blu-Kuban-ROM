.class public Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;
.super Ljava/lang/Object;
.source "smlDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtCap"
.end annotation


# instance fields
.field public ctType:Ljava/lang/String;

.field public ctValueSize:I

.field public type:[I

.field public value:[Ljava/lang/String;

.field public verCT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x96

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    .line 43
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    .line 37
    return-void
.end method
