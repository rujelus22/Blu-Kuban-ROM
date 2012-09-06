.class Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventInfo"
.end annotation


# instance fields
.field allDay:Z

.field color:I

.field end:J

.field id:J

.field selfAttendeeStatus:I

.field start:J

.field title:Ljava/lang/String;

.field visibTitle:I

.field visibWhen:I

.field visibWhere:I

.field when:Ljava/lang/String;

.field where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x8

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 92
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 93
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p0, p1, :cond_5

    .line 186
    :cond_4
    :goto_4
    return v1

    .line 144
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 145
    goto :goto_4

    .line 146
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 147
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 149
    .local v0, other:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v5, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_22

    move v1, v2

    .line 150
    goto :goto_4

    .line 151
    :cond_22
    iget-boolean v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    iget-boolean v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eq v3, v4, :cond_2a

    move v1, v2

    .line 152
    goto :goto_4

    .line 153
    :cond_2a
    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v5, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_34

    move v1, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_34
    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v5, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3e

    move v1, v2

    .line 156
    goto :goto_4

    .line 157
    :cond_3e
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_48

    .line 158
    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_54

    move v1, v2

    .line 159
    goto :goto_4

    .line 160
    :cond_48
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    move v1, v2

    .line 161
    goto :goto_4

    .line 162
    :cond_54
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    if-eq v3, v4, :cond_5c

    move v1, v2

    .line 163
    goto :goto_4

    .line 164
    :cond_5c
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    if-eq v3, v4, :cond_64

    move v1, v2

    .line 165
    goto :goto_4

    .line 166
    :cond_64
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    if-eq v3, v4, :cond_6c

    move v1, v2

    .line 167
    goto :goto_4

    .line 168
    :cond_6c
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v3, :cond_76

    .line 169
    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-eqz v3, :cond_82

    move v1, v2

    .line 170
    goto :goto_4

    .line 171
    :cond_76
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    move v1, v2

    .line 172
    goto :goto_4

    .line 174
    :cond_82
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v3, :cond_8d

    .line 175
    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-eqz v3, :cond_9a

    move v1, v2

    .line 176
    goto/16 :goto_4

    .line 177
    :cond_8d
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    move v1, v2

    .line 178
    goto/16 :goto_4

    .line 180
    :cond_9a
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    if-eq v3, v4, :cond_a3

    move v1, v2

    .line 181
    goto/16 :goto_4

    .line 183
    :cond_a3
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 184
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 123
    const/16 v0, 0x1f

    .line 124
    .local v0, prime:I
    const/4 v1, 0x1

    .line 125
    .local v1, result:I
    iget-boolean v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_68

    const/16 v2, 0x4cf

    :goto_c
    add-int/lit8 v1, v2, 0x1f

    .line 126
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 127
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 129
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_6b

    move v2, v3

    :goto_36
    add-int v1, v4, v2

    .line 130
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    add-int v1, v2, v4

    .line 131
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    add-int v1, v2, v4

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    add-int v1, v2, v4

    .line 133
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v2, :cond_72

    move v2, v3

    :goto_51
    add-int v1, v4, v2

    .line 134
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v4, :cond_79

    :goto_59
    add-int v1, v2, v3

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    add-int v1, v2, v3

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    add-int v1, v2, v3

    .line 137
    return v1

    .line 125
    :cond_68
    const/16 v2, 0x4d5

    goto :goto_c

    .line 129
    :cond_6b
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_36

    .line 133
    :cond_72
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_51

    .line 134
    :cond_79
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_59
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "EventInfo [visibTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", visibWhen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", visibWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", selfAttendeeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
