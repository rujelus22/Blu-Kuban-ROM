.class public Lorg/apache/log4j/helpers/AppenderAttachableImpl;
.super Ljava/lang/Object;
.source "AppenderAttachableImpl.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# instance fields
.field protected appenderList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .parameter "newAppender"

    .prologue
    .line 44
    if-nez p1, :cond_3

    .line 52
    :cond_2
    :goto_2
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    .line 50
    :cond_f
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I
    .registers 6
    .parameter "event"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, size:I
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v3, :cond_e

    .line 62
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-lt v1, v2, :cond_f

    .line 68
    .end local v1           #i:I
    :cond_e
    return v2

    .line 64
    .restart local v1       #i:I
    :cond_f
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 65
    .local v0, appender:Lorg/apache/log4j/Appender;
    invoke-interface {v0, p1}, Lorg/apache/log4j/Appender;->doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_5
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 7
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v4, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move-object v0, v3

    .line 105
    :cond_8
    :goto_8
    return-object v0

    .line 98
    :cond_9
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 100
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-lt v1, v2, :cond_14

    move-object v0, v3

    .line 105
    goto :goto_8

    .line 101
    :cond_14
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 102
    .local v0, appender:Lorg/apache/log4j/Appender;
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .registers 7
    .parameter "appender"

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v4, :cond_7

    if-nez p1, :cond_8

    .line 126
    :cond_7
    :goto_7
    return v3

    .line 119
    :cond_8
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 121
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_7

    .line 122
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 123
    .local v0, a:Lorg/apache/log4j/Appender;
    if-ne v0, p1, :cond_1d

    .line 124
    const/4 v3, 0x1

    goto :goto_7

    .line 121
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public removeAllAppenders()V
    .registers 5

    .prologue
    .line 136
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v3, :cond_15

    .line 137
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 138
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-lt v1, v2, :cond_16

    .line 142
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 143
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    .line 145
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_15
    return-void

    .line 139
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_16
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 140
    .local v0, a:Lorg/apache/log4j/Appender;
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->close()V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public removeAppender(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 165
    if-eqz p1, :cond_6

    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v2, :cond_7

    .line 173
    :cond_6
    :goto_6
    return-void

    .line 166
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 167
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_6

    .line 168
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 169
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_6

    .line 167
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .registers 3
    .parameter "appender"

    .prologue
    .line 153
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_7

    .line 156
    :cond_6
    :goto_6
    return-void

    .line 155
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_6
.end method
