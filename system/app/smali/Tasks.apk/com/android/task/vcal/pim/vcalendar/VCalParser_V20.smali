.class public Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;
.super Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;
.source "VCalParser_V20.java"


# static fields
.field private static final acceptableComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final acceptableV20Props:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasTZ:Z

.field private index:I

.field private lines:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "VEVENT"

    aput-object v2, v1, v3

    const-string v2, "VTODO"

    aput-object v2, v1, v4

    const-string v2, "VALARM"

    aput-object v2, v1, v5

    const-string v2, "VTIMEZONE"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v3

    const-string v2, "DTEND"

    aput-object v2, v1, v4

    const-string v2, "DTSTART"

    aput-object v2, v1, v5

    const-string v2, "DUE"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    return-void
.end method

.method private parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 12
    .parameter "lines"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    :goto_2
    :try_start_2
    const-string v6, "VERSION:2.0"

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 84
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_2

    .line 101
    :catch_15
    move-exception v0

    .line 105
    :cond_16
    :goto_16
    return v4

    .line 85
    :cond_17
    const-string v6, "VERSION:1.0\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    .line 88
    :goto_22
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_63

    .line 89
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, p1, v6

    const-string v7, ":"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, keyAndValue:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 91
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v3, v2, v6

    .line 93
    .local v3, value:Ljava/lang/String;
    const-string v6, "BEGIN"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 96
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    .line 97
    invoke-direct {p0, v3, p2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 88
    :cond_5c
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I
    :try_end_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_62} :catch_15

    goto :goto_22

    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyAndValue:[Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_63
    move v4, v5

    .line 105
    goto :goto_16
.end method

.method private parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 13
    .parameter "compName"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "END:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, endTag:Ljava/lang/String;
    sget-object v6, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 125
    const-string v6, "VEVENT"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    const-string v6, "VTODO"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 126
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BEGIN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_4a
    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ef

    .line 128
    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    const-string v7, ":"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, propAndValue:[Ljava/lang/String;
    aget-object v6, v1, v4

    const-string v7, ";"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v4

    .line 130
    .local v2, propName:Ljava/lang/String;
    aget-object v3, v1, v5

    .line 132
    .local v3, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_82

    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8e

    .line 133
    :cond_82
    const-string v6, "\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_87
    :goto_87
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_4a

    .line 134
    :cond_8e
    sget-object v6, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 136
    :cond_b7
    const-string v6, "BEGIN"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    const-string v6, "VALARM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 139
    const-string v6, "AALARM:default\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :goto_da
    const-string v6, "END:VALARM"

    iget-object v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v8, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 141
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_da

    .line 147
    .end local v1           #propAndValue:[Ljava/lang/String;
    .end local v2           #propName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_ef
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    :goto_105
    move v4, v5

    .line 172
    :cond_106
    return v4

    .line 148
    :cond_107
    const-string v6, "VALARM"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_106

    .line 151
    const-string v6, "VTIMEZONE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 153
    :cond_117
    iget-boolean v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    if-nez v6, :cond_159

    .line 154
    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    const-string v7, ":"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1       #propAndValue:[Ljava/lang/String;
    aget-object v6, v1, v4

    const-string v7, ";"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v4

    .line 157
    .restart local v2       #propName:Ljava/lang/String;
    const-string v6, "TZOFFSETFROM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 158
    aget-object v3, v1, v5

    .line 159
    .restart local v3       #value:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TZ:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iput-boolean v5, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    .line 163
    .end local v1           #propAndValue:[Ljava/lang/String;
    .end local v2           #propName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_159
    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    .line 164
    iget-object v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    goto :goto_105

    .line 168
    :cond_16c
    :goto_16c
    iget-object v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    .line 169
    iget v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_16c
.end method

.method private splitProperty(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "scStr"

    .prologue
    .line 181
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, strs:[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/task/vcal/pim/VBuilder;)Z
    .registers 11
    .parameter "is"
    .parameter "encoding"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 46
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 47
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v1, scStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, v10str:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->splitProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    .line 51
    iput v3, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    .line 53
    const-string v4, "BEGIN:VCALENDAR"

    iget-object v5, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 54
    const-string v4, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    .line 58
    iget-object v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    iget-object v5, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_49

    .line 66
    :cond_48
    :goto_48
    return v3

    .line 61
    :cond_49
    iget-object v4, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    if-ne v4, v5, :cond_48

    const-string v4, "END:VCALENDAR"

    iget-object v5, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 62
    const-string v3, "END:VCALENDAR\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-super {p0, v3, p2, p3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/task/vcal/pim/VBuilder;)Z

    move-result v3

    goto :goto_48
.end method
