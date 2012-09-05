.class public Lcom/vlingo/client/samsung/ScheduleEvent;
.super Ljava/lang/Object;
.source "ScheduleEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/samsung/ScheduleEvent$1;,
        Lcom/vlingo/client/samsung/ScheduleEvent$Builder;
    }
.end annotation


# instance fields
.field private final allDay:Z

.field private final begin:J

.field private final description:Ljava/lang/String;

.field private final end:J

.field private final location:Ljava/lang/String;

.field private final organizer:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)V
    .registers 4
    .parameter "builder"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$100(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->title:Ljava/lang/String;

    .line 52
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$200(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->location:Ljava/lang/String;

    .line 53
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer:Ljava/lang/String;
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$300(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->organizer:Ljava/lang/String;

    .line 54
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description:Ljava/lang/String;
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$400(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->description:Ljava/lang/String;

    .line 55
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin:J
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$500(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->begin:J

    .line 56
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end:J
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$600(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->end:J

    .line 57
    #getter for: Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay:Z
    invoke-static {p1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->access$700(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->allDay:Z

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;Lcom/vlingo/client/samsung/ScheduleEvent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/vlingo/client/samsung/ScheduleEvent;-><init>(Lcom/vlingo/client/samsung/ScheduleEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getAllDay()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->allDay:Z

    return v0
.end method

.method public getBegin()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->begin:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->end:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenText(I)Ljava/lang/String;
    .registers 16
    .parameter "index"

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x4

    const/16 v9, 0xc

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 69
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 72
    .local v4, res:Landroid/content/res/Resources;
    const/4 v7, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const v7, 0x7f090270

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v11

    const v7, 0x7f09036c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v10

    const/4 v7, 0x2

    const v8, 0x7f090422

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const v8, 0x7f090271

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const v7, 0x7f09026f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v12

    .line 92
    .local v2, cardinals:[Ljava/lang/String;
    if-ltz p1, :cond_dd

    if-gt p1, v12, :cond_dd

    aget-object v1, v2, p1

    .line 93
    .local v1, cardinal:Ljava/lang/String;
    :goto_4c
    const v7, 0x7f09035f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->title:Ljava/lang/String;

    if-eqz v7, :cond_74

    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_74

    .line 97
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v7, ". "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_74
    iget-boolean v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->allDay:Z

    if-eqz v7, :cond_e1

    .line 103
    const v7, 0x7f09035d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :goto_82
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->organizer:Ljava/lang/String;

    if-eqz v7, :cond_a2

    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->organizer:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a2

    .line 158
    const v7, 0x7f090362

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->organizer:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_a2
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->location:Ljava/lang/String;

    if-eqz v7, :cond_c2

    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->location:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c2

    .line 166
    const v7, 0x7f09035e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->location:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_c2
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->description:Ljava/lang/String;

    if-eqz v7, :cond_d8

    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->description:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d8

    .line 171
    iget-object v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->description:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_d8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 92
    .end local v1           #cardinal:Ljava/lang/String;
    :cond_dd
    const-string v1, ""

    goto/16 :goto_4c

    .line 106
    .restart local v1       #cardinal:Ljava/lang/String;
    :cond_e1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 109
    .local v6, time:Landroid/text/format/Time;
    const v7, 0x7f090360

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-wide v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->begin:J

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 111
    invoke-virtual {v6, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, am:Z
    iget v7, v6, Landroid/text/format/Time;->hour:I

    if-le v7, v9, :cond_104

    .line 114
    const/4 v0, 0x0

    .line 115
    iget v7, v6, Landroid/text/format/Time;->hour:I

    add-int/lit8 v7, v7, -0xc

    iput v7, v6, Landroid/text/format/Time;->hour:I

    .line 117
    :cond_104
    iget v7, v6, Landroid/text/format/Time;->hour:I

    if-nez v7, :cond_10a

    .line 118
    iput v9, v6, Landroid/text/format/Time;->hour:I

    .line 119
    :cond_10a
    const-string v3, "00"

    .line 120
    .local v3, mins:Ljava/lang/String;
    iget v7, v6, Landroid/text/format/Time;->minute:I

    if-ge v7, v13, :cond_1aa

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Landroid/text/format/Time;->hour:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    if-eqz v0, :cond_1c1

    .line 127
    const-string v7, " AM "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :goto_148
    const v7, 0x7f090361

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-wide v7, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->end:J

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 134
    invoke-virtual {v6, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 135
    const/4 v0, 0x1

    .line 136
    iget v7, v6, Landroid/text/format/Time;->hour:I

    if-le v7, v9, :cond_166

    .line 137
    const/4 v0, 0x0

    .line 138
    iget v7, v6, Landroid/text/format/Time;->hour:I

    add-int/lit8 v7, v7, -0xc

    iput v7, v6, Landroid/text/format/Time;->hour:I

    .line 140
    :cond_166
    iget v7, v6, Landroid/text/format/Time;->hour:I

    if-nez v7, :cond_16c

    .line 141
    iput v9, v6, Landroid/text/format/Time;->hour:I

    .line 142
    :cond_16c
    iget v7, v6, Landroid/text/format/Time;->minute:I

    if-ge v7, v13, :cond_1c7

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :goto_185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Landroid/text/format/Time;->hour:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    if-eqz v0, :cond_1dd

    .line 148
    const-string v7, " AM. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_82

    .line 123
    :cond_1aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_125

    .line 129
    :cond_1c1
    const-string v7, " PM "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_148

    .line 145
    :cond_1c7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_185

    .line 150
    :cond_1dd
    const-string v7, " PM. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_82
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/samsung/ScheduleEvent;->title:Ljava/lang/String;

    return-object v0
.end method
