.class public Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
.super Ljava/lang/Object;
.source "ScheduleEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/samsung/ScheduleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allDay:Z

.field private begin:J

.field private description:Ljava/lang/String;

.field private end:J

.field private location:Ljava/lang/String;

.field private organizer:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "title"

    .prologue
    const-wide/16 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin:J

    .line 32
    iput-wide v1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay:Z

    .line 36
    iput-object p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->title:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay:Z

    return v0
.end method


# virtual methods
.method public allDay(Z)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 2
    .parameter "allDay"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay:Z

    return-object p0
.end method

.method public begin(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 3
    .parameter "begin"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin:J

    return-object p0
.end method

.method public build()Lcom/vlingo/client/samsung/ScheduleEvent;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lcom/vlingo/client/samsung/ScheduleEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/samsung/ScheduleEvent;-><init>(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;Lcom/vlingo/client/samsung/ScheduleEvent$1;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 2
    .parameter "description"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public end(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 3
    .parameter "end"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end:J

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 2
    .parameter "location"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public organizer(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    .registers 2
    .parameter "organizer"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer:Ljava/lang/String;

    return-object p0
.end method
