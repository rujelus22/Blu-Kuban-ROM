.class public Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCal_t"
.end annotation


# instance fields
.field public AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

.field public DALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

.field public DESCRIPTION:Ljava/lang/String;

.field public DUEDATE:Landroid/text/format/Time;

.field public ENDDATE:Landroid/text/format/Time;

.field public LOCATION:Ljava/lang/String;

.field public RRULE:Ljava/lang/String;

.field public STARTDATE:Landroid/text/format/Time;

.field public SUMMARY:Ljava/lang/String;

.field public VERSION:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

.field public luid:I

.field public nALLDAY:I

.field public nCATEGORIES:I

.field public nCLASS:I

.field public nDbType:I

.field public nPRIORITY:I

.field public nSTATUS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
