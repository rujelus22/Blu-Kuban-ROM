.class public Lcom/arcsoft/android/camera/utils/MLocationInfo;
.super Ljava/lang/Object;
.source "MLocationInfo.java"


# instance fields
.field public altitude:D

.field public flag:I

.field public latitude:D

.field public longitude:D

.field public timeStamp:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v2, p0, Lcom/arcsoft/android/camera/utils/MLocationInfo;->flag:I

    .line 17
    iput v2, p0, Lcom/arcsoft/android/camera/utils/MLocationInfo;->timeStamp:I

    .line 18
    iput-wide v0, p0, Lcom/arcsoft/android/camera/utils/MLocationInfo;->longitude:D

    .line 19
    iput-wide v0, p0, Lcom/arcsoft/android/camera/utils/MLocationInfo;->latitude:D

    .line 20
    iput-wide v0, p0, Lcom/arcsoft/android/camera/utils/MLocationInfo;->altitude:D

    .line 21
    return-void
.end method
