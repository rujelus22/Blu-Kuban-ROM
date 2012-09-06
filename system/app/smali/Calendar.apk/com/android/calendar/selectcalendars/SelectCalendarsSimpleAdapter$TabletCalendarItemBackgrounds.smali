.class Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;
.super Ljava/lang/Object;
.source "SelectCalendarsSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabletCalendarItemBackgrounds"
.end annotation


# static fields
.field private static mBackgrounds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgrounds()[I
    .registers 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 116
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    if-eqz v0, :cond_f

    .line 117
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 152
    :goto_e
    return-object v0

    .line 120
    :cond_f
    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 122
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x0

    const v2, 0x7f02001c

    aput v2, v0, v1

    .line 124
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x1

    const v2, 0x7f020019

    aput v2, v0, v1

    .line 126
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x5

    const v2, 0x7f02000d

    aput v2, v0, v1

    .line 129
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f02000a

    aput v1, v0, v6

    .line 131
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xf

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 133
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x7

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 136
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f020016

    aput v1, v0, v4

    .line 137
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xb

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 139
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x3

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 141
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x4

    const v2, 0x7f020010

    aput v2, v0, v1

    .line 143
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f020013

    aput v1, v0, v5

    .line 145
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xe

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 147
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x6

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 149
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f02001f

    aput v1, v0, v3

    .line 150
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xa

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 151
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x2

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 152
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    goto/16 :goto_e
.end method
