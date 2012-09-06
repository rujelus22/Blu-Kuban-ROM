.class public Lcom/google/wireless/gdata2/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "EventEntry.java"


# static fields
.field public static final STATUS_CANCELED:B = 0x2t

.field public static final STATUS_CONFIRMED:B = 0x1t

.field public static final STATUS_TENTATIVE:B = 0x0t

.field public static final TRANSPARENCY_OPAQUE:B = 0x0t

.field public static final TRANSPARENCY_TRANSPARENT:B = 0x1t

.field public static final VISIBILITY_CONFIDENTIAL:B = 0x1t

.field public static final VISIBILITY_DEFAULT:B = 0x0t

.field public static final VISIBILITY_PRIVATE:B = 0x2t

.field public static final VISIBILITY_PUBLIC:B = 0x3t


# instance fields
.field private attendees:Ljava/util/Vector;

.field private calendarUrl:Ljava/lang/String;

.field private commentsUri:Ljava/lang/String;

.field private extendedProperties:Ljava/util/Hashtable;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private organizer:Ljava/lang/String;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private quickAdd:Z

.field private recurrence:Ljava/lang/String;

.field private reminders:Ljava/util/Vector;

.field private sendEventNotifications:Z

.field private status:B

.field private transparency:B

.field private visibility:B

.field private whens:Ljava/util/Vector;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 74
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 75
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 86
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .registers 3
    .parameter "attendee"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 310
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .registers 3
    .parameter "reminder"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V
    .registers 3
    .parameter "when"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 100
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 101
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 102
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 103
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 104
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 105
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 108
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 110
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 111
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 112
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 117
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 118
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public clearAttendees()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 219
    return-void
.end method

.method public clearExtendedProperties()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 318
    return-void
.end method

.method public clearReminders()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 261
    return-void
.end method

.method public clearWhens()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 231
    return-void
.end method

.method public getAttendees()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    return-object v0
.end method

.method public getCalendarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v1, :cond_6

    .line 299
    const/4 v0, 0x0

    .line 305
    :cond_5
    :goto_5
    return-object v0

    .line 301
    :cond_6
    const/4 v0, 0x0

    .line 302
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 303
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_5
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/When;

    goto :goto_9
.end method

.method public getGuestsCanInviteOthers()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    return v0
.end method

.method public getGuestsCanModify()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    return v0
.end method

.method public getGuestsCanSeeGuests()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    return-object v0
.end method

.method public getSendEventNotifications()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    return v0
.end method

.method public getStatus()B
    .registers 2

    .prologue
    .line 139
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .registers 2

    .prologue
    .line 153
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getVisibility()B
    .registers 2

    .prologue
    .line 167
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickAdd()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    return v0
.end method

.method public setCalendarUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "calendarUrl"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .registers 2
    .parameter "commentsUri"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setGuestsCanInviteOthers(Z)V
    .registers 2
    .parameter "guestsCanInviteOthers"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 199
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .registers 2
    .parameter "guestsCanModify"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 191
    return-void
.end method

.method public setGuestsCanSeeGuests(Z)V
    .registers 2
    .parameter "guestsCanSeeGuests"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 207
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .registers 2
    .parameter "organizer"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .registers 2
    .parameter "originalEventId"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .registers 2
    .parameter "originalEventStartTime"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setQuickAdd(Z)V
    .registers 2
    .parameter "quickAdd"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 334
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .registers 2
    .parameter "recurrence"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSendEventNotifications(Z)V
    .registers 2
    .parameter "sendEventNotifications"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 183
    return-void
.end method

.method public setStatus(B)V
    .registers 2
    .parameter "status"

    .prologue
    .line 146
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 147
    return-void
.end method

.method public setTransparency(B)V
    .registers 2
    .parameter "transparency"

    .prologue
    .line 160
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 161
    return-void
.end method

.method public setVisibility(B)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 174
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 175
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .registers 2
    .parameter "where"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 13
    .parameter "sb"

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 352
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STATUS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v9, "RECURRENCE"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VISIBILITY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSPARENCY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v9, "ORIGINAL_EVENT_ID"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v9, "ORIGINAL_START_TIME"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUICK_ADD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v9, :cond_139

    const-string v9, "true"

    :goto_83
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v9, :cond_13d

    const-string v9, "true"

    :goto_a5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_MODIFY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v9, :cond_141

    const-string v9, "true"

    :goto_c7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v9, :cond_144

    const-string v9, "true"

    :goto_e9
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v9, :cond_147

    const-string v9, "true"

    :goto_10b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v9, "ORGANIZER"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 368
    .local v8, whos:Ljava/util/Enumeration;
    :goto_129
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 369
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 370
    .local v7, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-virtual {v7, p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_129

    .line 359
    .end local v7           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    .end local v8           #whos:Ljava/util/Enumeration;
    :cond_139
    const-string v9, "false"

    goto/16 :goto_83

    .line 360
    :cond_13d
    const-string v9, "false"

    goto/16 :goto_a5

    .line 362
    :cond_141
    const-string v9, "false"

    goto :goto_c7

    .line 363
    :cond_144
    const-string v9, "false"

    goto :goto_e9

    .line 364
    :cond_147
    const-string v9, "false"

    goto :goto_10b

    .line 373
    .restart local v8       #whos:Ljava/util/Enumeration;
    :cond_14a
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 374
    .local v4, times:Ljava/util/Enumeration;
    :goto_150
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_160

    .line 375
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 376
    .local v6, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-virtual {v6, p1}, Lcom/google/wireless/gdata2/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_150

    .line 378
    .end local v6           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_160
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v9, :cond_17a

    .line 379
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 380
    .local v0, alarms:Ljava/util/Enumeration;
    :goto_16a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_17a

    .line 381
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 382
    .local v3, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_16a

    .line 385
    .end local v0           #alarms:Ljava/util/Enumeration;
    .end local v3           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    :cond_17a
    const-string v9, "WHERE"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v9, "COMMENTS"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v9, :cond_1b7

    .line 388
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 389
    .local v1, entryNames:Ljava/util/Enumeration;
    :goto_192
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1b7

    .line 390
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .local v2, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 392
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_192

    .line 398
    .end local v1           #entryNames:Ljava/util/Enumeration;
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_1b7
    const-string v9, "CALENDAR_URL"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method
