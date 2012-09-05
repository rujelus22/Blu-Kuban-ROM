.class public Lorg/columba/ristretto/imap/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field protected messageSetString:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .parameter "uids"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/imap/MessageSet;->render([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/imap/MessageSet;->messageSetString:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/columba/ristretto/imap/MessageSet;->messageSetString:Ljava/lang/String;

    return-object v0
.end method

.method protected render([Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .parameter "uids"

    .prologue
    const/16 v7, 0x3a

    .line 72
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v4, result:Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 75
    .local v5, uidList:Ljava/util/List;
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, it:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 78
    .local v0, inRange:Z
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    .local v2, lastValue:I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    .local v3, nextValue:I
    add-int/lit8 v6, v2, 0x1

    if-ne v3, v6, :cond_37

    .line 88
    const/4 v0, 0x1

    .line 103
    :goto_35
    move v2, v3

    goto :goto_20

    .line 91
    :cond_37
    if-eqz v0, :cond_40

    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    const/4 v0, 0x0

    .line 99
    :cond_40
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 107
    .end local v3           #nextValue:I
    :cond_49
    if-eqz v0, :cond_51

    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    :cond_51
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
