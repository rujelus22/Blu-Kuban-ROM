.class public Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field private final mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "id"
    .parameter "displayName"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 76
    .local v4, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 77
    .local v2, offset:I
    iput v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    .line 78
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 79
    .local v3, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-gez v2, :cond_5f

    .line 83
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :goto_2a
    int-to-long v5, v3

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const v5, 0xea60

    div-int v0, v3, v5

    .line 92
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 94
    const/16 v5, 0xa

    if-ge v0, v5, :cond_47

    .line 95
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const/4 v5, 0x0

    const-string v6, "("

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    .line 102
    return-void

    .line 85
    .end local v0           #min:I
    :cond_5f
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 153
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_8

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p0, p1, :cond_5

    .line 148
    :cond_4
    :goto_4
    return v1

    .line 124
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 125
    goto :goto_4

    .line 127
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 128
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 131
    .local v0, other:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 132
    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 133
    goto :goto_4

    .line 135
    :cond_22
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 136
    goto :goto_4

    .line 138
    :cond_2e
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 139
    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v3, :cond_44

    move v1, v2

    .line 140
    goto :goto_4

    .line 142
    :cond_38
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    move v1, v2

    .line 143
    goto :goto_4

    .line 145
    :cond_44
    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 146
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x1f

    .line 112
    .local v0, prime:I
    const/4 v1, 0x1

    .line 113
    .local v1, result:I
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_1a

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 114
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v4, :cond_21

    :goto_11
    add-int v1, v2, v3

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    .line 116
    return v1

    .line 113
    :cond_1a
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 114
    :cond_21
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
