.class public Lcom/google/android/maps/driveabout/app/eE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 181
    :cond_18
    return-object p0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    if-eqz p2, :cond_1c

    .line 77
    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_1c
    const-string v1, "V"

    invoke-static {v1, p3}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 96
    if-nez p1, :cond_7

    .line 97
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eH;->a()V

    .line 153
    :goto_6
    return-void

    .line 100
    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    if-nez p2, :cond_10

    .line 101
    :cond_c
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eH;->b()V

    goto :goto_6

    .line 105
    :cond_10
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 108
    :cond_1e
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eH;->b()V

    goto :goto_6

    .line 113
    :cond_22
    const v1, 0x7f0d00ce

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eE;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 118
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 121
    :cond_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5e

    .line 122
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eH;->b()V

    goto :goto_6

    .line 127
    :cond_5e
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    new-instance v1, Lo/P;

    invoke-direct {v1, v0, v5, v5, v5}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v3, Lcom/google/android/maps/driveabout/app/eF;

    invoke-direct {v3, p3, p4, v1, v2}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;Lo/P;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v0, v3}, Lcom/google/android/maps/driveabout/app/al;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dA;)V

    goto :goto_6
.end method

.method static synthetic a(Ljava/util/List;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/eE;->b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V

    return-void
.end method

.method private static b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lo/P;

    .line 159
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    array-length v0, v2

    if-ge v1, v0, :cond_1d

    .line 160
    new-instance v3, Lo/P;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v4, v4}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 162
    :cond_1d
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/maps/driveabout/app/eG;

    invoke-direct {v1, p2}, Lcom/google/android/maps/driveabout/app/eG;-><init>(Lcom/google/android/maps/driveabout/app/eH;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a([Lo/P;ILcom/google/android/maps/driveabout/app/cJ;)V

    .line 174
    return-void
.end method
