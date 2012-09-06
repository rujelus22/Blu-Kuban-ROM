.class public Lcom/android/email/mail/store/imap/ImapUtility;
.super Ljava/lang/Object;
.source "ImapUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImapRangeValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter "range"

    .prologue
    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_46

    .line 106
    const/16 v7, 0x3a

    :try_start_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 107
    .local v0, colonPos:I
    if-lez v0, :cond_46

    .line 108
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, first:I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 110
    .local v5, second:I
    if-ge v2, v5, :cond_31

    .line 111
    move v3, v2

    .local v3, i:I
    :goto_25
    if-gt v3, v5, :cond_46

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 115
    .end local v3           #i:I
    :cond_31
    move v3, v2

    .restart local v3       #i:I
    :goto_32
    if-lt v3, v5, :cond_46

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_3b} :catch_3e

    .line 115
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 121
    .end local v0           #colonPos:I
    .end local v2           #first:I
    .end local v3           #i:I
    .end local v5           #second:I
    :catch_3e
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "Email"

    const-string v8, "Invalid range value"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_46
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 125
    .local v6, stringList:[Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter "set"

    .prologue
    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_41

    .line 71
    const-string v12, ","

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, setItems:[Ljava/lang/String;
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .local v4, i$:I
    :goto_11
    if-ge v4, v6, :cond_41

    aget-object v5, v0, v4

    .line 73
    .local v5, item:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_31

    .line 76
    :try_start_1e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_28

    .line 72
    .end local v4           #i$:I
    :cond_24
    :goto_24
    add-int/lit8 v3, v4, 0x1

    .restart local v3       #i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_11

    .line 78
    :catch_28
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v12, "Email"

    const-string v13, "Invalid UID value"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 83
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_31
    invoke-static {v5}, Lcom/android/email/mail/store/imap/ImapUtility;->getImapRangeValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_37
    if-ge v3, v7, :cond_24

    aget-object v9, v1, v3

    .line 84
    .local v9, rangeItem:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 89
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #rangeItem:Ljava/lang/String;
    .end local v10           #setItems:[Ljava/lang/String;
    :cond_41
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Ljava/lang/String;

    .line 90
    .local v11, stringList:[Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    return-object v12
.end method

.method public static imapQuoted(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 48
    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, result:Ljava/lang/String;
    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
