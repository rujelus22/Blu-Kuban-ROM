.class public Lcom/android/calendar/CalendarEventModel$ReminderEntry;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mMethod:I

.field private final mMinutes:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 130
    iput p2, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 131
    return-void
.end method

.method public static valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    .registers 2
    .parameter "minutes"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    .registers 3
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 109
    new-instance v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/CalendarEventModel$ReminderEntry;)I
    .registers 4
    .parameter "re"

    .prologue
    .line 171
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-eq v0, v1, :cond_c

    .line 172
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    sub-int/2addr v0, v1

    .line 177
    :goto_b
    return v0

    .line 174
    :cond_c
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v0, v1, :cond_18

    .line 175
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    sub-int/2addr v0, v1

    goto :goto_b

    .line 177
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 97
    check-cast p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->compareTo(Lcom/android/calendar/CalendarEventModel$ReminderEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 140
    if-ne p0, p1, :cond_6

    move v1, v2

    .line 156
    :cond_5
    :goto_5
    return v1

    .line 143
    :cond_6
    instance-of v3, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 149
    .local v0, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v4, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-ne v3, v4, :cond_5

    .line 156
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v4, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v4, :cond_29

    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_21

    iget v3, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v2, :cond_29

    :cond_21
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-ne v3, v2, :cond_5

    iget v3, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_5

    :cond_29
    move v1, v2

    goto :goto_5
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    return v0
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReminderEntry min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
