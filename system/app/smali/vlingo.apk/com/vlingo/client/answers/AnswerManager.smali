.class public Lcom/vlingo/client/answers/AnswerManager;
.super Ljava/lang/Object;
.source "AnswerManager.java"


# static fields
.field private static final VARIABLE_POSTFIX:Ljava/lang/String; = "}"

.field private static final VARIABLE_PREFIX:Ljava/lang/String; = "${"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "context"

    .prologue
    const-wide/16 v11, 0x0

    .line 65
    :try_start_2
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getLastLat()D

    move-result-wide v1

    .line 66
    .local v1, lastLat:D
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getLastLong()D

    move-result-wide v3

    .line 69
    .local v3, lastLong:D
    cmpl-double v5, v1, v11

    if-nez v5, :cond_12

    cmpl-double v5, v3, v11

    if-eqz v5, :cond_6f

    .line 72
    :cond_12
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 73
    .local v0, geocoder:Landroid/location/Geocoder;
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 74
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6f

    .line 75
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 78
    .local v6, a:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, t:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, l:Ljava/lang/String;
    if-nez v10, :cond_39

    if-eqz v8, :cond_6f

    .line 81
    :cond_39
    const-string v9, ""

    .line 82
    .local v9, place:Ljava/lang/String;
    if-eqz v10, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 83
    :cond_54
    if-eqz v8, :cond_6d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6c} :catch_6e

    move-result-object v9

    .line 103
    .end local v0           #geocoder:Landroid/location/Geocoder;
    .end local v1           #lastLat:D
    .end local v3           #lastLong:D
    .end local v6           #a:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #l:Ljava/lang/String;
    .end local v9           #place:Ljava/lang/String;
    .end local v10           #t:Ljava/lang/String;
    :cond_6d
    :goto_6d
    return-object v9

    .line 98
    :catch_6e
    move-exception v5

    .line 103
    :cond_6f
    const-string v9, "unknown"

    goto :goto_6d
.end method

.method private static getTimeString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariable(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "variableName"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAnswerVariables(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "answer"

    .prologue
    .line 31
    const-string v3, "time"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 32
    invoke-static {p0}, Lcom/vlingo/client/answers/AnswerManager;->getTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, time:Ljava/lang/String;
    const-string v3, "time"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    .end local v2           #time:Ljava/lang/String;
    :cond_1a
    const-string v3, "date"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 36
    invoke-static {p0}, Lcom/vlingo/client/answers/AnswerManager;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, date:Ljava/lang/String;
    const-string v3, "date"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 39
    .end local v0           #date:Ljava/lang/String;
    :cond_34
    const-string v3, "location"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 40
    invoke-static {p0}, Lcom/vlingo/client/answers/AnswerManager;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, location:Ljava/lang/String;
    const-string v3, "location"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 43
    .end local v1           #location:Ljava/lang/String;
    :cond_4e
    const-string v3, "whereami"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 44
    invoke-static {p0}, Lcom/vlingo/client/answers/AnswerManager;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .restart local v1       #location:Ljava/lang/String;
    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    .end local v1           #location:Ljava/lang/String;
    :cond_71
    :goto_71
    return-object p1

    .line 49
    .restart local v1       #location:Ljava/lang/String;
    :cond_72
    const-string v3, "whereami"

    invoke-static {v3}, Lcom/vlingo/client/answers/AnswerManager;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_71
.end method
