.class public Lcom/sec/android/app/clockpackage/stopwatch/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field private index:Ljava/lang/String;

.field private millisecond:Ljava/lang/String;

.field private millisecondDiff:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timeDiff:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .parameter "index"
    .parameter "time"
    .parameter "millisecond"
    .parameter "timeDiff"
    .parameter "millisecondDiff"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->setIndex(I)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->setTime(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->setMillisecond(I)V

    .line 79
    invoke-virtual {p0, p4}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->setTimeDiff(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p5}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->setMillisecondDiff(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getMillisecond()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->millisecond:Ljava/lang/String;

    return-object v0
.end method

.method public getMillisecondDiff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->millisecondDiff:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeDiff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->timeDiff:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->index:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setMillisecond(I)V
    .registers 5
    .parameter "millisecond"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v2, p1, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->millisecond:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMillisecondDiff(I)V
    .registers 5
    .parameter "millisecondDiff"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, sb1:Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v2, p1, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->millisecondDiff:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->time:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTimeDiff(Ljava/lang/String;)V
    .registers 2
    .parameter "timeDiff"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->timeDiff:Ljava/lang/String;

    .line 134
    return-void
.end method
