.class public LDigiCAP/LGT/DRM/DRMInterface;
.super Ljava/lang/Object;
.source "DRMInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native LDRMCleanupROStorage()I
.end method

.method public native LDRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I
.end method
