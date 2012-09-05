.class public Lcom/google/android/syncadapters/calendar/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field static final DEFAULT_CALENDAR_INT_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-string v0, "#2952A3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/syncadapters/calendar/HandlerUtils;->DEFAULT_CALENDAR_INT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCallerIsSyncAdapterParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 34
    if-nez p1, :cond_13

    .line 35
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 40
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_12
.end method

.method static getCalendarEntryAccessLevelFromEntityAccessLevel(I)B
    .registers 2
    .parameter "entityAccessLevel"

    .prologue
    .line 67
    sparse-switch p0, :sswitch_data_12

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, accessLevel:B
    :goto_4
    return v0

    .line 69
    .end local v0           #accessLevel:B
    :sswitch_5
    const/4 v0, 0x0

    .line 70
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 72
    .end local v0           #accessLevel:B
    :sswitch_7
    const/4 v0, 0x1

    .line 73
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 75
    .end local v0           #accessLevel:B
    :sswitch_9
    const/4 v0, 0x2

    .line 76
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 78
    .end local v0           #accessLevel:B
    :sswitch_b
    const/4 v0, 0x3

    .line 79
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 81
    .end local v0           #accessLevel:B
    :sswitch_d
    const/4 v0, 0x4

    .line 82
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 84
    .end local v0           #accessLevel:B
    :sswitch_f
    const/4 v0, 0x5

    .line 85
    .restart local v0       #accessLevel:B
    goto :goto_4

    .line 67
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_7
        0x258 -> :sswitch_b
        0x2bc -> :sswitch_d
        0x320 -> :sswitch_f
    .end sparse-switch
.end method

.method static getCalendarHexColorFromInt(I)Ljava/lang/String;
    .registers 5
    .parameter "color"

    .prologue
    const/4 v3, 0x2

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1c

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, rgbString:Ljava/lang/String;
    :goto_13
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->validateCalendarHexColor(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 136
    const-string v2, "#2952A3"

    .line 138
    :goto_1b
    return-object v2

    .end local v1           #rgbString:Ljava/lang/String;
    :cond_1c
    move-object v1, v0

    .line 134
    goto :goto_13

    .line 138
    .restart local v1       #rgbString:Ljava/lang/String;
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method static swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TA;TB;>;)",
            "Ljava/util/HashMap",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, originalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TA;TB;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TB;TA;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 51
    .local v3, originalValue:Ljava/lang/Object;,"TB;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 57
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    .end local v3           #originalValue:Ljava/lang/Object;,"TB;"
    :cond_4a
    return-object v2
.end method

.method static validateCalendarHexColor(Ljava/lang/String;)Z
    .registers 5
    .parameter "hexString"

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_4

    .line 111
    :goto_3
    return v1

    .line 108
    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1a} :catch_1c

    .line 109
    const/4 v1, 0x1

    goto :goto_3

    .line 110
    :catch_1c
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_3
.end method

.method static validateCalendarIntColor(I)Z
    .registers 5
    .parameter "color"

    .prologue
    const/4 v3, 0x2

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, rgbString:Ljava/lang/String;
    :goto_13
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->validateCalendarHexColor(Ljava/lang/String;)Z

    move-result v2

    return v2

    .end local v1           #rgbString:Ljava/lang/String;
    :cond_18
    move-object v1, v0

    .line 123
    goto :goto_13
.end method
