.class public Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCalAlarm_t"
.end annotation


# instance fields
.field public RunTime:Landroid/text/format/Time;

.field public SnoozeTime:Landroid/text/format/Time;

.field public bUsed:Z

.field public nRepeatCount:I

.field public pString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
