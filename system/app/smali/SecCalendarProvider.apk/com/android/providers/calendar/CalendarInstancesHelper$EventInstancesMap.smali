.class public final Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
.super Ljava/util/HashMap;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarInstancesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstancesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "syncIdKey"
    .parameter "values"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 53
    .local v0, instances:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    if-nez v0, :cond_10

    .line 54
    new-instance v0, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .end local v0           #instances:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;-><init>()V

    .line 55
    .restart local v0       #instances:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_10
    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
