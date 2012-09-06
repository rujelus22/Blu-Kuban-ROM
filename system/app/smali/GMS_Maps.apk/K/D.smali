.class public Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;Ljava/lang/StringBuilder;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->j()Li/U;

    move-result-object v4

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->k()J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 194
    const-wide/16 v2, 0x2710

    .line 195
    const-string v0, "maxAgeMs"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 196
    const-string v0, "maxAgeMs"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    .line 198
    :cond_2e
    if-nez v4, :cond_37

    .line 199
    const-string v0, "SpeechMessage was null"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 208
    :goto_36
    return v0

    .line 201
    :cond_37
    invoke-virtual {v4}, Li/U;->a()Ljava/lang/String;

    move-result-object v7

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechMessage was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Li/U;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 203
    goto :goto_36

    .line 204
    :cond_65
    cmp-long v0, v5, v2

    if-lez v0, :cond_81

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechMessage was too old. age="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 206
    goto :goto_36

    .line 208
    :cond_81
    const/4 v0, 0x1

    goto :goto_36
.end method

.method public a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "maxAgeMs"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    return-object v0
.end method
