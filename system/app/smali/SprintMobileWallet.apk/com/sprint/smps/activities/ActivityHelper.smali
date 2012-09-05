.class public abstract Lcom/sprint/smps/activities/ActivityHelper;
.super Landroid/app/Activity;
.source "ActivityHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field protected static activities:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/activities/ActiveActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static dialogNumberShown:I

.field private static intents:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected errorMessage:Ljava/lang/String;

.field private p:Ljava/util/regex/Pattern;

.field protected viewToHaveFocus:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/sprint/smps/activities/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ActivityHelper;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/smps/activities/ActivityHelper;->intents:Ljava/util/Hashtable;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, ".+@.+\\.[a-z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/smps/activities/ActivityHelper;->p:Ljava/util/regex/Pattern;

    .line 25
    iput-object v1, p0, Lcom/sprint/smps/activities/ActivityHelper;->errorMessage:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/sprint/smps/activities/ActivityHelper;->viewToHaveFocus:Landroid/view/View;

    .line 19
    return-void
.end method

.method public static addActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .parameter "activity"
    .parameter "bookmark"

    .prologue
    .line 106
    invoke-static {p1}, Lcom/sprint/smps/activities/ActivityHelper;->doesBookMarkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 108
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 109
    .local v1, activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_13

    .line 118
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :goto_12
    return-void

    .line 111
    .restart local v1       #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_13
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    .line 112
    .local v0, activeActivity:Lcom/sprint/smps/activities/ActiveActivity;
    invoke-virtual {v0, p1}, Lcom/sprint/smps/activities/ActiveActivity;->isBookmarked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 113
    invoke-virtual {v0, p0}, Lcom/sprint/smps/activities/ActiveActivity;->setActivity(Landroid/app/Activity;)V

    goto :goto_c

    .line 117
    .end local v0           #activeActivity:Lcom/sprint/smps/activities/ActiveActivity;
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_23
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    new-instance v3, Lcom/sprint/smps/activities/ActiveActivity;

    invoke-direct {v3, p0, p1}, Lcom/sprint/smps/activities/ActiveActivity;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public static dismissActivities(Ljava/lang/String;)V
    .registers 2
    .parameter "bookmark"

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public static dismissActivities(Ljava/lang/String;Z)V
    .registers 9
    .parameter "bookmark"
    .parameter "clearProperties"

    .prologue
    .line 127
    sget-object v4, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    monitor-enter v4

    .line 129
    :try_start_3
    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 130
    .local v2, noOfElements:I
    move v1, v2

    .local v1, i:I
    :goto_c
    if-gez v1, :cond_21

    .line 145
    :cond_e
    if-eqz p1, :cond_1f

    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 147
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 148
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->initialized:Z

    .line 127
    :cond_1f
    monitor-exit v4

    .line 151
    return-void

    .line 132
    :cond_21
    const/4 v0, 0x0

    .line 133
    .local v0, activity:Lcom/sprint/smps/activities/ActiveActivity;
    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_32

    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activity:Lcom/sprint/smps/activities/ActiveActivity;
    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    .line 134
    .restart local v0       #activity:Lcom/sprint/smps/activities/ActiveActivity;
    :cond_32
    if-eqz v0, :cond_48

    .line 136
    if-eqz p0, :cond_3c

    invoke-virtual {v0, p0}, Lcom/sprint/smps/activities/ActiveActivity;->isBookmarked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 140
    :cond_3c
    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4b

    .line 141
    :try_start_41
    invoke-virtual {v0}, Lcom/sprint/smps/activities/ActiveActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_48} :catch_4e

    .line 130
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 127
    .end local v0           #activity:Lcom/sprint/smps/activities/ActiveActivity;
    .end local v1           #i:I
    .end local v2           #noOfElements:I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 141
    .restart local v0       #activity:Lcom/sprint/smps/activities/ActiveActivity;
    .restart local v1       #i:I
    .restart local v2       #noOfElements:I
    :catch_4e
    move-exception v3

    goto :goto_48
.end method

.method public static dismissActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "bookmark"

    .prologue
    .line 157
    if-eqz p0, :cond_2a

    :try_start_2
    invoke-static {p0}, Lcom/sprint/smps/activities/ActivityHelper;->doesBookMarkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 159
    invoke-static {p0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 160
    sget-object v1, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    .line 161
    .local v0, activity:Lcom/sprint/smps/activities/ActiveActivity;
    if-eqz p0, :cond_2a

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p0}, Lcom/sprint/smps/activities/ActiveActivity;->isBookmarked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 164
    sget-object v1, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 169
    .end local v0           #activity:Lcom/sprint/smps/activities/ActiveActivity;
    :cond_2a
    :goto_2a
    return-void

    .line 168
    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method public static dismissAllActivitiesBut(Ljava/lang/String;)V
    .registers 4
    .parameter "bookmark"

    .prologue
    .line 175
    if-eqz p0, :cond_14

    :try_start_2
    invoke-static {p0}, Lcom/sprint/smps/activities/ActivityHelper;->doesBookMarkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 177
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 178
    .local v1, activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_15

    .line 191
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_14
    :goto_14
    return-void

    .line 180
    .restart local v1       #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_15
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    .line 181
    .local v0, activity:Lcom/sprint/smps/activities/ActiveActivity;
    invoke-virtual {v0, p0}, Lcom/sprint/smps/activities/ActiveActivity;->isBookmarked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 184
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0}, Lcom/sprint/smps/activities/ActiveActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_e

    .line 190
    .end local v0           #activity:Lcom/sprint/smps/activities/ActiveActivity;
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :catch_2e
    move-exception v2

    goto :goto_14
.end method

.method public static declared-synchronized doesBookMarkExist(Ljava/lang/String;)Z
    .registers 6
    .parameter "bookmark"

    .prologue
    .line 206
    const-class v4, Lcom/sprint/smps/activities/ActivityHelper;

    monitor-enter v4

    const/4 v2, 0x0

    .line 209
    .local v2, exists:Z
    :try_start_4
    sget-object v3, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    .local v1, activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_25

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v2, :cond_14

    .line 221
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_12
    :goto_12
    monitor-exit v4

    return v2

    .line 212
    .restart local v1       #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :cond_14
    :try_start_14
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    .line 213
    .local v0, activity:Lcom/sprint/smps/activities/ActiveActivity;
    invoke-virtual {v0, p0}, Lcom/sprint/smps/activities/ActiveActivity;->isBookmarked(Ljava/lang/String;)Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_25

    move-result v3

    if-eqz v3, :cond_a

    .line 214
    const/4 v2, 0x1

    goto :goto_a

    .line 206
    .end local v0           #activity:Lcom/sprint/smps/activities/ActiveActivity;
    .end local v1           #activityEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/activities/ActiveActivity;>;"
    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3

    .line 216
    :catch_25
    move-exception v3

    goto :goto_12
.end method

.method public static getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 88
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    .local v0, idInt:Ljava/lang/Integer;
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->intents:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 92
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->intents:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 101
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_15
    return-object v1

    .line 97
    :cond_16
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/sprint/smps/activities/ActivityHelper;->intents:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public static onBookmark(Ljava/lang/String;)Z
    .registers 2
    .parameter "bookmark"

    .prologue
    .line 197
    sget-object v0, Lcom/sprint/smps/activities/ActivityHelper;->activities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/activities/ActiveActivity;

    invoke-virtual {v0}, Lcom/sprint/smps/activities/ActiveActivity;->getBookmarkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteDialog(I)V
    .registers 4
    .parameter "no"

    .prologue
    const/4 v1, -0x1

    .line 31
    sget v0, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    if-le v0, v1, :cond_e

    sget v0, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    if-ne v0, p1, :cond_e

    .line 33
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->removeDialog(I)V

    .line 34
    sput v1, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    .line 36
    :cond_e
    return-void
.end method

.method public displayDialog(I)V
    .registers 4
    .parameter "no"

    .prologue
    .line 40
    sget v0, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 42
    sput p1, Lcom/sprint/smps/activities/ActivityHelper;->dialogNumberShown:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->showDialog(I)V

    .line 45
    :cond_a
    return-void
.end method

.method protected getCardType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cardNo"

    .prologue
    .line 49
    const-string v0, "Unknown"

    .line 50
    .local v0, cardType:Ljava/lang/String;
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 51
    const-string v0, "Visa"

    .line 66
    :cond_c
    :goto_c
    return-object v0

    .line 52
    :cond_d
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 53
    const-string v0, "MasterCard"

    goto :goto_c

    .line 54
    :cond_18
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 55
    const-string v0, "Discover Card"

    goto :goto_c

    .line 56
    :cond_23
    const-string v1, "34"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "37"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 57
    :cond_33
    const-string v0, "Amex"

    goto :goto_c

    .line 58
    :cond_36
    const-string v1, "30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "36"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "38"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 59
    :cond_4e
    const-string v0, "Diners Club"

    goto :goto_c

    .line 60
    :cond_51
    const-string v1, "2014"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "2149"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 61
    :cond_61
    const-string v0, "enRoute"

    goto :goto_c

    .line 62
    :cond_64
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "2131"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "1800"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 63
    :cond_7c
    const-string v0, "JCB"

    goto :goto_c
.end method

.method protected getYearArray(I)[Ljava/lang/String;
    .registers 6
    .parameter "currentYear"

    .prologue
    const/16 v3, 0x32

    .line 76
    new-array v1, v3, [Ljava/lang/String;

    .line 77
    .local v1, years:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-lt v0, v3, :cond_8

    .line 82
    return-object v1

    .line 79
    :cond_8
    add-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected isValidEmailAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "email"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sprint/smps/activities/ActivityHelper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 4
    .parameter "timeoutMsg"

    .prologue
    .line 226
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/ActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    .local v0, timeoutTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_e

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 233
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
