.class public Lcom/sec/android/providers/downloads/SecConstants;
.super Ljava/lang/Object;
.source "SecConstants.java"


# static fields
.field public static bInternalSDFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
