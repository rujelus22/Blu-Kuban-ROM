.class public Lcom/android/calendar/CalendarEventModel;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarEventModel$ReminderEntry;,
        Lcom/android/calendar/CalendarEventModel$Attendee;
    }
.end annotation


# instance fields
.field public mAccessLevel:I

.field public mAllDay:Z

.field public mAttendeesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailability:I

.field public mCalendarAccessLevel:I

.field public mCalendarAllowedAttendeeTypes:Ljava/lang/String;

.field public mCalendarAllowedAvailability:Ljava/lang/String;

.field public mCalendarAllowedReminders:Ljava/lang/String;

.field public mCalendarColor:I

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mCalendarMaxReminders:I

.field public mDefaultReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;

.field public mDuration:Ljava/lang/String;

.field public mEnd:J

.field public mGuestsCanInviteOthers:Z

.field public mGuestsCanModify:Z

.field public mGuestsCanSeeGuests:Z

.field public mHasAlarm:Z

.field public mHasAttendeeData:Z

.field public mId:J

.field public mIsFirstEventInSeries:Z

.field public mIsOrganizer:Z

.field public mLocation:Ljava/lang/String;

.field public mModelUpdatedWithEventCursor:Z

.field public mOrganizer:Ljava/lang/String;

.field public mOrganizerCanRespond:Z

.field public mOrganizerDisplayName:Ljava/lang/String;

.field public mOriginalAllDay:Ljava/lang/Boolean;

.field public mOriginalEnd:J

.field public mOriginalId:J

.field public mOriginalStart:J

.field public mOriginalSyncId:Ljava/lang/String;

.field public mOriginalTime:Ljava/lang/Long;

.field public mOwnerAccount:Ljava/lang/String;

.field public mOwnerAttendeeId:I

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mRrule:Ljava/lang/String;

.field public mSelfAttendeeStatus:I

.field public mStart:J

.field public mSyncAccount:Ljava/lang/String;

.field public mSyncAccountType:Ljava/lang/String;

.field public mSyncId:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTimezone2:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 196
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 197
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 199
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 205
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 220
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 225
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 226
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 230
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 231
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 232
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 235
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 237
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 241
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 242
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 243
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 244
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 245
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 246
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 247
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 248
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 253
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 259
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 271
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    .line 277
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 278
    invoke-static {p1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 280
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_default_reminder"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, defaultReminder:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 283
    .local v1, defaultReminderMins:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    .line 285
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 286
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 292
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/CalendarEventModel;-><init>(Landroid/content/Context;)V

    .line 294
    if-nez p2, :cond_6

    .line 345
    :cond_5
    return-void

    .line 298
    :cond_6
    const-string v13, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, title:Ljava/lang/String;
    if-eqz v12, :cond_14

    .line 300
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 303
    :cond_14
    const-string v13, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, location:Ljava/lang/String;
    if-eqz v10, :cond_22

    .line 305
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 308
    :cond_22
    const-string v13, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, description:Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 310
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 313
    :cond_30
    const-string v13, "availability"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 314
    .local v3, availability:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_40

    .line 315
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 318
    :cond_40
    const-string v13, "accessLevel"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 319
    .local v1, accessLevel:I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_54

    .line 320
    if-lez v1, :cond_50

    .line 323
    add-int/lit8 v1, v1, -0x1

    .line 325
    :cond_50
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 328
    :cond_54
    const-string v13, "rrule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, rrule:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_66

    .line 330
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 333
    :cond_66
    const-string v13, "android.intent.extra.EMAIL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, emails:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 335
    const-string v13, "[ ,;]"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, emailArray:[Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_7d
    if-ge v8, v9, :cond_5

    aget-object v5, v2, v8

    .line 337
    .local v5, email:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ab

    const-string v13, "@"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_ab

    .line 338
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ab

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    new-instance v14, Lcom/android/calendar/CalendarEventModel$Attendee;

    const-string v15, ""

    invoke-direct {v14, v15, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d
.end method


# virtual methods
.method public addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .registers 4
    .parameter "attendee"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V
    .registers 9
    .parameter "attendees"
    .parameter "validator"

    .prologue
    .line 430
    invoke-static {p1, p2}, Lcom/android/calendar/event/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 432
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 433
    :try_start_5
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 434
    .local v0, address:Landroid/text/util/Rfc822Token;
    new-instance v2, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v2, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 436
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 438
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_9

    .line 440
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    .end local v2           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 441
    return-void
.end method

.method protected checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z
    .registers 7
    .parameter "originalModel"

    .prologue
    const/4 v0, 0x0

    .line 687
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eq v1, v2, :cond_8

    .line 834
    :cond_7
    :goto_7
    return v0

    .line 690
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_c9

    .line 691
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_7

    .line 698
    :cond_10
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v3, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 702
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-ne v1, v2, :cond_7

    .line 705
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-ne v1, v2, :cond_7

    .line 708
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-ne v1, v2, :cond_7

    .line 711
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-ne v1, v2, :cond_7

    .line 714
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    if-ne v1, v2, :cond_7

    .line 717
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-ne v1, v2, :cond_7

    .line 720
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-ne v1, v2, :cond_7

    .line 723
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-ne v1, v2, :cond_7

    .line 726
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v3, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 729
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-ne v1, v2, :cond_7

    .line 733
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_d5

    .line 734
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 741
    :cond_5e
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_e1

    .line 742
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 749
    :cond_66
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_ed

    .line 750
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_7

    .line 757
    :cond_6e
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_f9

    .line 758
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 765
    :cond_76
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_105

    .line 766
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 773
    :cond_7e
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    if-ne v1, v2, :cond_7

    .line 776
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    if-ne v1, v2, :cond_7

    .line 779
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_111

    .line 780
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 787
    :cond_92
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_11d

    .line 788
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 795
    :cond_9a
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_129

    .line 796
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 803
    :cond_a2
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_135

    .line 804
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 811
    :cond_aa
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_141

    .line 812
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 819
    :cond_b2
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    if-ne v1, v2, :cond_7

    .line 823
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_14d

    .line 824
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 831
    :cond_c0
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    if-ne v1, v2, :cond_7

    .line 834
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 694
    :cond_c9
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_7

    .line 737
    :cond_d5
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto/16 :goto_7

    .line 745
    :cond_e1
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto/16 :goto_7

    .line 753
    :cond_ed
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    goto/16 :goto_7

    .line 761
    :cond_f9
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    goto/16 :goto_7

    .line 769
    :cond_105
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    goto/16 :goto_7

    .line 783
    :cond_111
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    goto/16 :goto_7

    .line 791
    :cond_11d
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto/16 :goto_7

    .line 799
    :cond_129
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto/16 :goto_7

    .line 807
    :cond_135
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto/16 :goto_7

    .line 815
    :cond_141
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    goto/16 :goto_7

    .line 827
    :cond_14d
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    goto/16 :goto_7
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 374
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 375
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 376
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 378
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 381
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 383
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 384
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 385
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 386
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 387
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 388
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 389
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 390
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 392
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 393
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 394
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 395
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 396
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 397
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 398
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 399
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 402
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 403
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 404
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 405
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 406
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 407
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 408
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 410
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 411
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 412
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 413
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 414
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 415
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 416
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 417
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 422
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 423
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 510
    if-ne p0, p1, :cond_5

    .line 593
    :cond_4
    :goto_4
    return v1

    .line 513
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 514
    goto :goto_4

    .line 516
    :cond_9
    instance-of v3, p1, Lcom/android/calendar/CalendarEventModel;

    if-nez v3, :cond_f

    move v1, v2

    .line 517
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 520
    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    .line 521
    .local v0, other:Lcom/android/calendar/CalendarEventModel;
    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v3

    if-nez v3, :cond_1a

    move v1, v2

    .line 522
    goto :goto_4

    .line 525
    :cond_1a
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 526
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_30

    move v1, v2

    .line 527
    goto :goto_4

    .line 529
    :cond_24
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    move v1, v2

    .line 530
    goto :goto_4

    .line 533
    :cond_30
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_3a

    .line 534
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_46

    move v1, v2

    .line 535
    goto :goto_4

    .line 537
    :cond_3a
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    move v1, v2

    .line 538
    goto :goto_4

    .line 541
    :cond_46
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_50

    .line 542
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_5c

    move v1, v2

    .line 543
    goto :goto_4

    .line 545
    :cond_50
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    move v1, v2

    .line 546
    goto :goto_4

    .line 549
    :cond_5c
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v3, :cond_66

    .line 550
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-eqz v3, :cond_72

    move v1, v2

    .line 551
    goto :goto_4

    .line 553
    :cond_66
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    move v1, v2

    .line 554
    goto :goto_4

    .line 557
    :cond_72
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7c

    move v1, v2

    .line 558
    goto :goto_4

    .line 560
    :cond_7c
    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    iget-boolean v4, v0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eq v3, v4, :cond_84

    move v1, v2

    .line 561
    goto :goto_4

    .line 563
    :cond_84
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8f

    move v1, v2

    .line 564
    goto/16 :goto_4

    .line 567
    :cond_8f
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9a

    move v1, v2

    .line 568
    goto/16 :goto_4

    .line 570
    :cond_9a
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a5

    move v1, v2

    .line 571
    goto/16 :goto_4

    .line 574
    :cond_a5
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b0

    move v1, v2

    .line 575
    goto/16 :goto_4

    .line 578
    :cond_b0
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v3, :cond_bb

    .line 579
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v3, :cond_c8

    move v1, v2

    .line 580
    goto/16 :goto_4

    .line 582
    :cond_bb
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c8

    move v1, v2

    .line 583
    goto/16 :goto_4

    .line 586
    :cond_c8
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v3, :cond_d3

    .line 587
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 588
    goto/16 :goto_4

    .line 590
    :cond_d3
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 591
    goto/16 :goto_4
.end method

.method public getAttendeesString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 450
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 451
    .local v4, name:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 452
    .local v2, email:Ljava/lang/String;
    iget v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, status:Ljava/lang/String;
    const-string v6, "name:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v6, " email:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v6, " status:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 457
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/16 v10, 0x20

    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/4 v5, 0x0

    .line 462
    const/16 v0, 0x1f

    .line 463
    .local v0, prime:I
    const/4 v1, 0x1

    .line 464
    .local v1, result:I
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_16e

    move v2, v3

    :goto_f
    add-int/lit8 v1, v2, 0x1f

    .line 465
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_171

    move v2, v5

    :goto_18
    add-int v1, v6, v2

    .line 466
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 467
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_17b

    move v2, v5

    :goto_2c
    add-int v1, v6, v2

    .line 468
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v2, :cond_183

    move v2, v5

    :goto_35
    add-int v1, v6, v2

    .line 469
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 470
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eqz v2, :cond_18b

    move v2, v3

    :goto_49
    add-int v1, v6, v2

    .line 471
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v2, :cond_18e

    move v2, v3

    :goto_52
    add-int v1, v6, v2

    .line 472
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-eqz v2, :cond_191

    move v2, v3

    :goto_5b
    add-int v1, v6, v2

    .line 473
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_194

    move v2, v3

    :goto_64
    add-int v1, v6, v2

    .line 474
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eqz v2, :cond_197

    move v2, v3

    :goto_6d
    add-int v1, v6, v2

    .line 475
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    add-int v1, v2, v6

    .line 476
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_19a

    move v2, v3

    :goto_7c
    add-int v1, v6, v2

    .line 477
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_19d

    move v2, v3

    :goto_85
    add-int v1, v6, v2

    .line 478
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 479
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eqz v2, :cond_1a0

    move v2, v3

    :goto_99
    add-int v1, v6, v2

    .line 480
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_1a3

    :goto_a1
    add-int v1, v2, v3

    .line 481
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_1a6

    move v2, v5

    :goto_aa
    add-int v1, v3, v2

    .line 482
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v2, :cond_1ae

    move v2, v5

    :goto_b3
    add-int v1, v3, v2

    .line 483
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v2, :cond_1b6

    move v2, v5

    :goto_bc
    add-int v1, v3, v2

    .line 484
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 485
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_1be

    move v2, v5

    :goto_d0
    add-int v1, v3, v2

    .line 486
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 487
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 488
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v2, :cond_1c6

    move v2, v5

    :goto_ef
    add-int v1, v3, v2

    .line 489
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v2, :cond_1ce

    move v2, v5

    :goto_f8
    add-int v1, v3, v2

    .line 490
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v2, :cond_1d6

    move v2, v5

    :goto_101
    add-int v1, v3, v2

    .line 491
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_1de

    move v2, v5

    :goto_10a
    add-int v1, v3, v2

    .line 492
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    add-int v1, v2, v3

    .line 493
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    add-int v1, v2, v3

    .line 494
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 495
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v2, :cond_1e6

    move v2, v5

    :goto_12a
    add-int v1, v3, v2

    .line 496
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v2, :cond_1ee

    move v2, v5

    :goto_133
    add-int v1, v3, v2

    .line 497
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v2, :cond_1f6

    move v2, v5

    :goto_13c
    add-int v1, v3, v2

    .line 498
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v2, :cond_1fe

    move v2, v5

    :goto_145
    add-int v1, v3, v2

    .line 499
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v2, :cond_206

    move v2, v5

    :goto_14e
    add-int v1, v3, v2

    .line 500
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_20e

    move v2, v5

    :goto_157
    add-int v1, v3, v2

    .line 501
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    add-int v1, v2, v3

    .line 502
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v3, :cond_216

    :goto_165
    add-int v1, v2, v5

    .line 503
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    add-int v1, v2, v3

    .line 504
    return v1

    :cond_16e
    move v2, v4

    .line 464
    goto/16 :goto_f

    .line 465
    :cond_171
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 467
    :cond_17b
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2c

    .line 468
    :cond_183
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_35

    :cond_18b
    move v2, v4

    .line 470
    goto/16 :goto_49

    :cond_18e
    move v2, v4

    .line 471
    goto/16 :goto_52

    :cond_191
    move v2, v4

    .line 472
    goto/16 :goto_5b

    :cond_194
    move v2, v4

    .line 473
    goto/16 :goto_64

    :cond_197
    move v2, v4

    .line 474
    goto/16 :goto_6d

    :cond_19a
    move v2, v4

    .line 476
    goto/16 :goto_7c

    :cond_19d
    move v2, v4

    .line 477
    goto/16 :goto_85

    :cond_1a0
    move v2, v4

    .line 479
    goto/16 :goto_99

    :cond_1a3
    move v3, v4

    .line 480
    goto/16 :goto_a1

    .line 481
    :cond_1a6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_aa

    .line 482
    :cond_1ae
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b3

    .line 483
    :cond_1b6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_bc

    .line 485
    :cond_1be
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d0

    .line 488
    :cond_1c6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_ef

    .line 489
    :cond_1ce
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f8

    .line 490
    :cond_1d6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto/16 :goto_101

    .line 491
    :cond_1de
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10a

    .line 495
    :cond_1e6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12a

    .line 496
    :cond_1ee
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_133

    .line 497
    :cond_1f6
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13c

    .line 498
    :cond_1fe
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_145

    .line 499
    :cond_206
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_14e

    .line 500
    :cond_20e
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_157

    .line 502
    :cond_216
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto/16 :goto_165
.end method

.method public isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z
    .registers 10
    .parameter "originalModel"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 603
    if-ne p0, p1, :cond_6

    move v2, v3

    .line 674
    :cond_5
    :goto_5
    return v2

    .line 606
    :cond_6
    if-eqz p1, :cond_5

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 614
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 615
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 622
    :cond_1e
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 623
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 630
    :cond_2e
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 631
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 638
    :cond_3e
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 639
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 646
    :cond_4e
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 649
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 655
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6e

    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 659
    :cond_6e
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 661
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a2

    .line 662
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d5

    :cond_8c
    move v1, v3

    .line 664
    .local v1, syncIdNotReferenced:Z
    :goto_8d
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9d

    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d7

    :cond_9d
    move v0, v3

    .line 666
    .local v0, localIdNotReferenced:Z
    :goto_9e
    if-eqz v1, :cond_a2

    if-nez v0, :cond_5

    .end local v0           #localIdNotReferenced:Z
    .end local v1           #syncIdNotReferenced:Z
    :cond_a2
    move v2, v3

    .line 674
    goto/16 :goto_5

    .line 618
    :cond_a5
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_5

    .line 626
    :cond_b1
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_5

    .line 634
    :cond_bd
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_5

    .line 642
    :cond_c9
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_5

    :cond_d5
    move v1, v2

    .line 662
    goto :goto_8d

    .restart local v1       #syncIdNotReferenced:Z
    :cond_d7
    move v0, v2

    .line 664
    goto :goto_9e

    .line 670
    .end local v1           #syncIdNotReferenced:Z
    :cond_d9
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    goto/16 :goto_5
.end method

.method public isValid()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 354
    :cond_9
    :goto_9
    return v0

    .line 351
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 354
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public normalizeReminders()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 843
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_a

    .line 861
    :cond_9
    return v5

    .line 848
    :cond_a
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 851
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 852
    .local v2, prev:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .local v1, i:I
    :goto_27
    if-ltz v1, :cond_9

    .line 853
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 854
    .local v0, cur:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 856
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 858
    :cond_3e
    move-object v2, v0

    .line 852
    add-int/lit8 v1, v1, -0x1

    goto :goto_27
.end method
