.class public Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCalAttendee_t"
.end annotation


# instance fields
.field public AttendeeEmail:Ljava/lang/String;

.field public AttendeeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
