.class public Lcom/google/android/maps/driveabout/app/eS;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_1c

    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    const-string v1, "V"

    invoke-static {v1, p3}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V
    .registers 11

    const/4 v5, 0x0

    if-nez p1, :cond_7

    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eV;->a()V

    :goto_6
    return-void

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    if-nez p2, :cond_10

    :cond_c
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eV;->b()V

    goto :goto_6

    :cond_10
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    :cond_1e
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eV;->b()V

    goto :goto_6

    :cond_22
    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

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

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eS;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5e

    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/eV;->b()V

    goto :goto_6

    :cond_5e
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lu/P;

    invoke-direct {v1, v0, v5, v5, v5}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/eT;

    invoke-direct {v3, p3, p4, v1, v2}, Lcom/google/android/maps/driveabout/app/eT;-><init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;Lu/P;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v0, v3}, Lcom/google/android/maps/driveabout/app/am;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dL;)V

    goto :goto_6
.end method

.method static synthetic a(Ljava/util/List;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/eS;->b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V

    return-void
.end method

.method private static b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V
    .registers 8

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lu/P;

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    array-length v0, v2

    if-ge v1, v0, :cond_1d

    new-instance v3, Lu/P;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v4, v4}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1d
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/maps/driveabout/app/eU;

    invoke-direct {v1, p2}, Lcom/google/android/maps/driveabout/app/eU;-><init>(Lcom/google/android/maps/driveabout/app/eV;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a([Lu/P;ILcom/google/android/maps/driveabout/app/cV;)V

    return-void
.end method
