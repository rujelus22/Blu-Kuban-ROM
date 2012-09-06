.class Lcom/google/android/music/MusicUtils$LogEntry;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field count:J

.field item:Ljava/lang/Object;

.field time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    .line 961
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    .line 962
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/sql/Time;Ljava/text/DateFormat;)V
    .registers 8
    .parameter "out"
    .parameter "timeObj"
    .parameter "dateFormat"

    .prologue
    .line 965
    iget-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    invoke-virtual {p2, v0, v1}, Ljava/sql/Time;->setTime(J)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occurrences) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    :cond_45
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_53

    .line 971
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 975
    :goto_52
    return-void

    .line 973
    :cond_53
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_52
.end method
