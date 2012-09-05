.class public Lcom/wssnps/base/smlvCal$SmlvCal_t;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCal_t"
.end annotation


# instance fields
.field public AllDay:I

.field public AttachImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;",
            ">;"
        }
    .end annotation
.end field

.field public AttachSmemo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;",
            ">;"
        }
    .end annotation
.end field

.field public Attendee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;",
            ">;"
        }
    .end annotation
.end field

.field public AudioAlarm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;",
            ">;"
        }
    .end annotation
.end field

.field public DESCRIPTION:Ljava/lang/String;

.field public DisplayAlarm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;",
            ">;"
        }
    .end annotation
.end field

.field public DueDate:Landroid/text/format/Time;

.field public EXDATE:Landroid/text/format/Time;

.field public EndDate:Landroid/text/format/Time;

.field public LOCATION:Ljava/lang/String;

.field public Lunar:I

.field public RRULE:Ljava/lang/String;

.field public SUMMARY:Ljava/lang/String;

.field public StartDate:Landroid/text/format/Time;

.field public UID:Ljava/lang/String;

.field public VERSION:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

.field public XEXTYPE:I

.field public color:I

.field public dbtimezone:Ljava/lang/String;

.field public luid:I

.field public nCategory:I

.field public nClass:I

.field public nDbType:I

.field public nPriority:I

.field public nStatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DisplayAlarm:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Attendee:Ljava/util/List;

    .line 149
    iput v1, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->color:I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    .line 156
    iput v1, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    .line 157
    iput-object v2, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    .line 159
    iput-object v2, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    .line 128
    return-void
.end method
