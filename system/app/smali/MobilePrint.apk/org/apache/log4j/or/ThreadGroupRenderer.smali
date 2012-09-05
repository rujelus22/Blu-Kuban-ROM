.class public Lorg/apache/log4j/or/ThreadGroupRenderer;
.super Ljava/lang/Object;
.source "ThreadGroupRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "o"

    .prologue
    .line 50
    instance-of v4, p1, Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_72

    .line 51
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sbuf:Ljava/lang/StringBuffer;
    move-object v3, p1

    .line 52
    check-cast v3, Ljava/lang/ThreadGroup;

    .line 53
    .local v3, tg:Ljava/lang/ThreadGroup;
    const-string v4, "java.lang.ThreadGroup[name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v4, ", maxpri="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Thread;

    .line 59
    .local v2, t:[Ljava/lang/Thread;
    invoke-virtual {v3, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_33
    array-length v4, v2

    if-lt v0, v4, :cond_3b

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .end local v0           #i:I
    .end local v1           #sbuf:Ljava/lang/StringBuffer;
    .end local v2           #t:[Ljava/lang/Thread;
    .end local v3           #tg:Ljava/lang/ThreadGroup;
    :goto_3a
    return-object v4

    .line 61
    .restart local v0       #i:I
    .restart local v1       #sbuf:Ljava/lang/StringBuffer;
    .restart local v2       #t:[Ljava/lang/Thread;
    .restart local v3       #tg:Ljava/lang/ThreadGroup;
    :cond_3b
    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v4, "   Thread=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 68
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 73
    .end local v0           #i:I
    .end local v1           #sbuf:Ljava/lang/StringBuffer;
    .end local v2           #t:[Ljava/lang/Thread;
    .end local v3           #tg:Ljava/lang/ThreadGroup;
    :cond_72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a
.end method
