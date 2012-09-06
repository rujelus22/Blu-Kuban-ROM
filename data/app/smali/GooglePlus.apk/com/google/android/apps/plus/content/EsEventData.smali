.class public Lcom/google/android/apps/plus/content/EsEventData;
.super Ljava/lang/Object;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;,
        Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;,
        Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;,
        Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;,
        Lcom/google/android/apps/plus/content/EsEventData$InviteeList;,
        Lcom/google/android/apps/plus/content/EsEventData$EventPerson;,
        Lcom/google/android/apps/plus/content/EsEventData$EventComment;,
        Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;,
        Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;,
        Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;,
        Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    }
.end annotation


# static fields
.field public static final ASPECT_ICON:Ljava/lang/String;

.field public static final ASPECT_LARGE:Ljava/lang/String;

.field public static final ASPECT_MEDIUM:Ljava/lang/String;

.field public static final ASPECT_SMALL:Ljava/lang/String;

.field public static final EVENT_ACTIVITY_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_COALESCED_FRAME_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_COMMENT_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventComment;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PERSON_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPerson;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PHOTO_ALBUM_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PHOTO_PLUS_ONE_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_QUERY_PROJECTION:[Ljava/lang/String;

.field public static final FORMAT_GIF:Ljava/lang/String;

.field public static final FORMAT_JPG:Ljava/lang/String;

.field public static final FORMAT_MOV:Ljava/lang/String;

.field public static final INVITEE_LIST_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$InviteeList;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSVP_ATTENDING:Ljava/lang/String;

.field public static final RSVP_CHECKIN:Ljava/lang/String;

.field public static final RSVP_INVITED:Ljava/lang/String;

.field public static final RSVP_MAYBE:Ljava/lang/String;

.field public static final RSVP_NOT_ATTENDING:Ljava/lang/String;

.field public static final RSVP_NOT_ATTENDING_AND_REMOVE:Ljava/lang/String;

.field public static final RSVP_NOT_RESPONDED:Ljava/lang/String;

.field private static final SYNC_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final mSyncLock:Ljava/lang/Object;

.field private static sEventThemesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->CHECKIN:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->MAYBE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->INVITED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_INVITED:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING_AND_REMOVE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING_AND_REMOVE:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_RESPONDED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->FORMAT_GIF:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->JPG:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->FORMAT_JPG:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->MOV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->FORMAT_MOV:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->ASPECT_SMALL:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->MEDIUM:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->ASPECT_MEDIUM:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->LARGE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->ASPECT_LARGE:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->ICON:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->ASPECT_ICON:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->mSyncLock:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "polling_token"

    aput-object v1, v0, v4

    const-string v1, "resume_token"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->SYNC_QUERY_PROJECTION:[Ljava/lang/String;

    .line 167
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "event_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_QUERY_PROJECTION:[Ljava/lang/String;

    .line 186
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_ACTIVITY_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 209
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 223
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_ALBUM_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 236
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_PLUS_ONE_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 251
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventComment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COMMENT_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 262
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PERSON_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 272
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Lcom/google/api/services/plusi/model/InviteeJson;

    aput-object v2, v1, v3

    const-string v2, "invitees"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/json/EsJson;->buildJson(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->INVITEE_LIST_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 282
    const-class v0, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PERSON_JSON:Lcom/google/android/apps/plus/json/EsJson;

    aput-object v2, v1, v3

    const-string v2, "people"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/json/EsJson;->buildJson(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COALESCED_FRAME_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 2330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsEventData;->sEventThemesLock:Ljava/lang/Object;

    return-void
.end method

.method public static canAddPhotos(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z
    .registers 4
    .parameter "event"
    .parameter "userGaiaId"

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 1100
    .local v0, allowsPhotos:Z
    :goto_1d
    return v0

    .line 1094
    .end local v0           #allowsPhotos:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static canRsvp(Lcom/google/api/services/plusi/model/PlusEvent;)Z
    .registers 2
    .parameter "event"

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    if-nez v0, :cond_16

    :cond_a
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static convertToInvitee(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/api/services/plusi/model/Invitee;
    .registers 5
    .parameter "invitee"

    .prologue
    .line 1682
    new-instance v0, Lcom/google/api/services/plusi/model/Invitee;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Invitee;-><init>()V

    .line 1683
    .local v0, jsonInvitee:Lcom/google/api/services/plusi/model/Invitee;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasInvitee()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1684
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getInvitee()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v2

    .line 1686
    .local v2, person:Lcom/google/protos/embed/PersonItem$Person;
    new-instance v1, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EmbedsPerson;-><init>()V

    .line 1687
    .local v1, jsonPerson:Lcom/google/api/services/plusi/model/EmbedsPerson;
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1688
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getEmail()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    .line 1690
    :cond_20
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasGender()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1691
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getGender()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->gender:Ljava/lang/String;

    .line 1693
    :cond_2c
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasImageUrl()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1694
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->imageUrl:Ljava/lang/String;

    .line 1696
    :cond_38
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasName()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1697
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    .line 1699
    :cond_44
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasOwnerObfuscatedId()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1700
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 1702
    :cond_50
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1703
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->url:Ljava/lang/String;

    .line 1705
    :cond_5c
    iput-object v1, v0, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 1707
    .end local v1           #jsonPerson:Lcom/google/api/services/plusi/model/EmbedsPerson;
    .end local v2           #person:Lcom/google/protos/embed/PersonItem$Person;
    :cond_5e
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasInviter()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 1708
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getInvitee()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v2

    .line 1710
    .restart local v2       #person:Lcom/google/protos/embed/PersonItem$Person;
    new-instance v1, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EmbedsPerson;-><init>()V

    .line 1711
    .restart local v1       #jsonPerson:Lcom/google/api/services/plusi/model/EmbedsPerson;
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1712
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getEmail()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    .line 1714
    :cond_79
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasGender()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1715
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getGender()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->gender:Ljava/lang/String;

    .line 1717
    :cond_85
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasImageUrl()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1718
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->imageUrl:Ljava/lang/String;

    .line 1720
    :cond_91
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasName()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1721
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    .line 1723
    :cond_9d
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasOwnerObfuscatedId()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1724
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 1726
    :cond_a9
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1727
    invoke-virtual {v2}, Lcom/google/protos/embed/PersonItem$Person;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/services/plusi/model/EmbedsPerson;->url:Ljava/lang/String;

    .line 1729
    :cond_b5
    iput-object v1, v0, Lcom/google/api/services/plusi/model/Invitee;->inviter:Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 1731
    .end local v1           #jsonPerson:Lcom/google/api/services/plusi/model/EmbedsPerson;
    .end local v2           #person:Lcom/google/protos/embed/PersonItem$Person;
    :cond_b7
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasIsAdminBlacklisted()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 1732
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getIsAdminBlacklisted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    .line 1734
    :cond_c7
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasNumAdditionalGuests()Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 1735
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getNumAdditionalGuests()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Invitee;->numAdditionalGuests:Ljava/lang/Integer;

    .line 1737
    :cond_d7
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasRsvpType()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 1738
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    .line 1740
    :cond_e7
    return-object v0
.end method

.method public static convertToPlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 57
    .parameter "event"
    .parameter "account"

    .prologue
    .line 1747
    new-instance v20, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-direct/range {v20 .. v20}, Lcom/google/api/services/plusi/model/PlusEvent;-><init>()V

    .line 1748
    .local v20, jsonEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasAbuseStatus()Z

    move-result v53

    if-eqz v53, :cond_19

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getAbuseStatus()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->abuseStatus:Ljava/lang/String;

    .line 1751
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasCreatorObfuscatedId()Z

    move-result v53

    if-eqz v53, :cond_29

    .line 1752
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getCreatorObfuscatedId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    .line 1754
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDescription()Z

    move-result v53

    if-eqz v53, :cond_39

    .line 1755
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDescription()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    .line 1757
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDisplayContent()Z

    move-result v53

    if-eqz v53, :cond_213

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDisplayContent()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v6

    .line 1759
    .local v6, displayContent:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    new-instance v19, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    invoke-direct/range {v19 .. v19}, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;-><init>()V

    .line 1760
    .local v19, jsonDisplayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasEventTimeRange()Z

    move-result v53

    if-eqz v53, :cond_58

    .line 1761
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeRange()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->eventTimeRange:Ljava/lang/String;

    .line 1763
    :cond_58
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasEventTimeStart()Z

    move-result v53

    if-eqz v53, :cond_68

    .line 1764
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeStart()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->eventTimeStart:Ljava/lang/String;

    .line 1766
    :cond_68
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasDescriptionHtml()Z

    move-result v53

    if-eqz v53, :cond_78

    .line 1767
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->descriptionHtml:Ljava/lang/String;

    .line 1769
    :cond_78
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasDescriptionSegments()Z

    move-result v53

    if-eqz v53, :cond_20d

    .line 1770
    invoke-virtual {v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionSegments()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v5

    .line 1772
    .local v5, descriptionSegments:Lcom/google/apps/tacotown/proto/data/ViewSegments;
    new-instance v18, Lcom/google/api/services/plusi/model/ViewSegments;

    invoke-direct/range {v18 .. v18}, Lcom/google/api/services/plusi/model/ViewSegments;-><init>()V

    .line 1774
    .local v18, jsonDescriptionSegments:Lcom/google/api/services/plusi/model/ViewSegments;
    invoke-virtual {v5}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getSegmentsCount()I

    move-result v53

    if-lez v53, :cond_207

    .line 1775
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    .local v33, jsonSegments:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Segment;>;"
    invoke-virtual {v5}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getSegmentsList()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_201

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/google/apps/tacotown/proto/data/Segment;

    .line 1779
    .local v46, segment:Lcom/google/apps/tacotown/proto/data/Segment;
    new-instance v32, Lcom/google/api/services/plusi/model/Segment;

    invoke-direct/range {v32 .. v32}, Lcom/google/api/services/plusi/model/Segment;-><init>()V

    .line 1780
    .local v32, jsonSegment:Lcom/google/api/services/plusi/model/Segment;
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasFormatting()Z

    move-result v53

    if-eqz v53, :cond_fc

    .line 1781
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getFormatting()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v7

    .line 1783
    .local v7, formatting:Lcom/google/apps/tacotown/proto/data/Formatting;
    new-instance v21, Lcom/google/api/services/plusi/model/Formatting;

    invoke-direct/range {v21 .. v21}, Lcom/google/api/services/plusi/model/Formatting;-><init>()V

    .line 1785
    .local v21, jsonFormatting:Lcom/google/api/services/plusi/model/Formatting;
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasBold()Z

    move-result v53

    if-eqz v53, :cond_ce

    .line 1786
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->getBold()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Formatting;->bold:Ljava/lang/Boolean;

    .line 1788
    :cond_ce
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasItalics()Z

    move-result v53

    if-eqz v53, :cond_e2

    .line 1789
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->getItalics()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Formatting;->italics:Ljava/lang/Boolean;

    .line 1791
    :cond_e2
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasStrikethrough()Z

    move-result v53

    if-eqz v53, :cond_f6

    .line 1792
    invoke-virtual {v7}, Lcom/google/apps/tacotown/proto/data/Formatting;->getStrikethrough()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Formatting;->strikethrough:Ljava/lang/Boolean;

    .line 1794
    :cond_f6
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->formatting:Lcom/google/api/services/plusi/model/Formatting;

    .line 1796
    .end local v7           #formatting:Lcom/google/apps/tacotown/proto/data/Formatting;
    .end local v21           #jsonFormatting:Lcom/google/api/services/plusi/model/Formatting;
    :cond_fc
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasHashtag()Z

    move-result v53

    if-eqz v53, :cond_121

    .line 1797
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getHashtag()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v10

    .line 1799
    .local v10, hashtag:Lcom/google/apps/tacotown/proto/data/Hashtag;
    new-instance v24, Lcom/google/api/services/plusi/model/Hashtag;

    invoke-direct/range {v24 .. v24}, Lcom/google/api/services/plusi/model/Hashtag;-><init>()V

    .line 1800
    .local v24, jsonHashtag:Lcom/google/api/services/plusi/model/Hashtag;
    invoke-virtual {v10}, Lcom/google/apps/tacotown/proto/data/Hashtag;->hasSearchText()Z

    move-result v53

    if-eqz v53, :cond_11b

    .line 1801
    invoke-virtual {v10}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getSearchText()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Hashtag;->searchText:Ljava/lang/String;

    .line 1803
    :cond_11b
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->hashtag:Lcom/google/api/services/plusi/model/Hashtag;

    .line 1805
    .end local v10           #hashtag:Lcom/google/apps/tacotown/proto/data/Hashtag;
    .end local v24           #jsonHashtag:Lcom/google/api/services/plusi/model/Hashtag;
    :cond_121
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasLink()Z

    move-result v53

    if-eqz v53, :cond_18f

    .line 1806
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getLink()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v41

    .line 1808
    .local v41, link:Lcom/google/apps/tacotown/proto/data/Link;
    new-instance v28, Lcom/google/api/services/plusi/model/Link;

    invoke-direct/range {v28 .. v28}, Lcom/google/api/services/plusi/model/Link;-><init>()V

    .line 1809
    .local v28, jsonLink:Lcom/google/api/services/plusi/model/Link;
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->hasPicasaAlbum()Z

    move-result v53

    if-eqz v53, :cond_165

    .line 1810
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->getPicasaAlbum()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v44

    .line 1812
    .local v44, picasaAlbum:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    new-instance v31, Lcom/google/api/services/plusi/model/PicasaAlbum;

    invoke-direct/range {v31 .. v31}, Lcom/google/api/services/plusi/model/PicasaAlbum;-><init>()V

    .line 1814
    .local v31, jsonPicasaAlbum:Lcom/google/api/services/plusi/model/PicasaAlbum;
    invoke-virtual/range {v44 .. v44}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->hasAlbumId()Z

    move-result v53

    if-eqz v53, :cond_14f

    .line 1815
    invoke-virtual/range {v44 .. v44}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PicasaAlbum;->albumId:Ljava/lang/String;

    .line 1817
    :cond_14f
    invoke-virtual/range {v44 .. v44}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->hasOwnerId()Z

    move-result v53

    if-eqz v53, :cond_15f

    .line 1818
    invoke-virtual/range {v44 .. v44}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getOwnerId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PicasaAlbum;->ownerId:Ljava/lang/String;

    .line 1820
    :cond_15f
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Link;->picasaAlbum:Lcom/google/api/services/plusi/model/PicasaAlbum;

    .line 1822
    .end local v31           #jsonPicasaAlbum:Lcom/google/api/services/plusi/model/PicasaAlbum;
    .end local v44           #picasaAlbum:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    :cond_165
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->hasType()Z

    move-result v53

    if-eqz v53, :cond_179

    .line 1823
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->getType()Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Link;->type:Ljava/lang/String;

    .line 1825
    :cond_179
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->hasUrl()Z

    move-result v53

    if-eqz v53, :cond_189

    .line 1826
    invoke-virtual/range {v41 .. v41}, Lcom/google/apps/tacotown/proto/data/Link;->getUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Link;->url:Ljava/lang/String;

    .line 1828
    :cond_189
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->link:Lcom/google/api/services/plusi/model/Link;

    .line 1830
    .end local v28           #jsonLink:Lcom/google/api/services/plusi/model/Link;
    .end local v41           #link:Lcom/google/apps/tacotown/proto/data/Link;
    :cond_18f
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasText()Z

    move-result v53

    if-eqz v53, :cond_19f

    .line 1831
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getText()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->text:Ljava/lang/String;

    .line 1833
    :cond_19f
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasType()Z

    move-result v53

    if-eqz v53, :cond_1b3

    .line 1834
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getType()Lcom/google/apps/tacotown/proto/data/Segment$Type;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/tacotown/proto/data/Segment$Type;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->type:Ljava/lang/String;

    .line 1836
    :cond_1b3
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->hasUser()Z

    move-result v53

    if-eqz v53, :cond_1f8

    .line 1837
    invoke-virtual/range {v46 .. v46}, Lcom/google/apps/tacotown/proto/data/Segment;->getUser()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v52

    .line 1839
    .local v52, user:Lcom/google/apps/tacotown/proto/data/UserRef;
    new-instance v40, Lcom/google/api/services/plusi/model/UserRef;

    invoke-direct/range {v40 .. v40}, Lcom/google/api/services/plusi/model/UserRef;-><init>()V

    .line 1840
    .local v40, jsonUser:Lcom/google/api/services/plusi/model/UserRef;
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasEmail()Z

    move-result v53

    if-eqz v53, :cond_1d2

    .line 1841
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->getEmail()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/google/api/services/plusi/model/UserRef;->email:Ljava/lang/String;

    .line 1843
    :cond_1d2
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasName()Z

    move-result v53

    if-eqz v53, :cond_1e2

    .line 1844
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/google/api/services/plusi/model/UserRef;->name:Ljava/lang/String;

    .line 1846
    :cond_1e2
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasUserId()Z

    move-result v53

    if-eqz v53, :cond_1f2

    .line 1847
    invoke-virtual/range {v52 .. v52}, Lcom/google/apps/tacotown/proto/data/UserRef;->getUserId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/google/api/services/plusi/model/UserRef;->userId:Ljava/lang/String;

    .line 1849
    :cond_1f2
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Segment;->user:Lcom/google/api/services/plusi/model/UserRef;

    .line 1851
    .end local v40           #jsonUser:Lcom/google/api/services/plusi/model/UserRef;
    .end local v52           #user:Lcom/google/apps/tacotown/proto/data/UserRef;
    :cond_1f8
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9a

    .line 1853
    .end local v32           #jsonSegment:Lcom/google/api/services/plusi/model/Segment;
    .end local v46           #segment:Lcom/google/apps/tacotown/proto/data/Segment;
    :cond_201
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ViewSegments;->segments:Ljava/util/List;

    .line 1855
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v33           #jsonSegments:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Segment;>;"
    :cond_207
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->descriptionSegments:Lcom/google/api/services/plusi/model/ViewSegments;

    .line 1858
    .end local v5           #descriptionSegments:Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .end local v18           #jsonDescriptionSegments:Lcom/google/api/services/plusi/model/ViewSegments;
    :cond_20d
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    .line 1860
    .end local v6           #displayContent:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .end local v19           #jsonDisplayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;
    :cond_213
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEndDate()Z

    move-result v53

    if-eqz v53, :cond_223

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndDate()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endDate:Ljava/lang/String;

    .line 1863
    :cond_223
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEndTime()Z

    move-result v53

    if-eqz v53, :cond_25c

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v51

    .line 1865
    .local v51, time:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    new-instance v39, Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct/range {v39 .. v39}, Lcom/google/api/services/plusi/model/EventTime;-><init>()V

    .line 1866
    .local v39, jsonTime:Lcom/google/api/services/plusi/model/EventTime;
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimeMs()Z

    move-result v53

    if-eqz v53, :cond_246

    .line 1867
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimeMs()J

    move-result-wide v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 1869
    :cond_246
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimezone()Z

    move-result v53

    if-eqz v53, :cond_256

    .line 1870
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimezone()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventTime;->timezone:Ljava/lang/String;

    .line 1872
    :cond_256
    move-object/from16 v0, v39

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 1874
    .end local v39           #jsonTime:Lcom/google/api/services/plusi/model/EventTime;
    .end local v51           #time:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    :cond_25c
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEventOptions()Z

    move-result v53

    if-eqz v53, :cond_2cf

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEventOptions()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v43

    .line 1876
    .local v43, options:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    new-instance v30, Lcom/google/api/services/plusi/model/EventOptions;

    invoke-direct/range {v30 .. v30}, Lcom/google/api/services/plusi/model/EventOptions;-><init>()V

    .line 1877
    .local v30, jsonOptions:Lcom/google/api/services/plusi/model/EventOptions;
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasHangout()Z

    move-result v53

    if-eqz v53, :cond_27f

    .line 1878
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getHangout()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventOptions;->hangout:Ljava/lang/Boolean;

    .line 1880
    :cond_27f
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasHideGuestList()Z

    move-result v53

    if-eqz v53, :cond_293

    .line 1881
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getHideGuestList()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventOptions;->hideGuestList:Ljava/lang/Boolean;

    .line 1883
    :cond_293
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasOpenEventAcl()Z

    move-result v53

    if-eqz v53, :cond_2a7

    .line 1884
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getOpenEventAcl()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    .line 1886
    :cond_2a7
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasOpenPhotoAcl()Z

    move-result v53

    if-eqz v53, :cond_2bb

    .line 1887
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getOpenPhotoAcl()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    .line 1889
    :cond_2bb
    invoke-virtual/range {v43 .. v43}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getBroadcast()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    .line 1890
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    .line 1892
    .end local v30           #jsonOptions:Lcom/google/api/services/plusi/model/EventOptions;
    .end local v43           #options:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    :cond_2cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasHangoutInfo()Z

    move-result v53

    if-eqz v53, :cond_2f4

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getHangoutInfo()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v9

    .line 1894
    .local v9, hangoutInfo:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    new-instance v23, Lcom/google/api/services/plusi/model/HangoutInfo;

    invoke-direct/range {v23 .. v23}, Lcom/google/api/services/plusi/model/HangoutInfo;-><init>()V

    .line 1895
    .local v23, jsonHangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;
    invoke-virtual {v9}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->hasUrl()Z

    move-result v53

    if-eqz v53, :cond_2ee

    .line 1896
    invoke-virtual {v9}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/api/services/plusi/model/HangoutInfo;->url:Ljava/lang/String;

    .line 1898
    :cond_2ee
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

    .line 1900
    .end local v9           #hangoutInfo:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .end local v23           #jsonHangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;
    :cond_2f4
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasId()Z

    move-result v53

    if-eqz v53, :cond_304

    .line 1901
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    .line 1903
    :cond_304
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasIsPublic()Z

    move-result v53

    if-eqz v53, :cond_318

    .line 1904
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getIsPublic()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    .line 1906
    :cond_318
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getInviteeSummaryCount()I

    move-result v53

    if-lez v53, :cond_3b8

    .line 1907
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1909
    .local v36, jsonSummaryList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/InviteeSummary;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getInviteeSummaryList()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_32b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_3b2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    .line 1910
    .local v48, summary:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    new-instance v35, Lcom/google/api/services/plusi/model/InviteeSummary;

    invoke-direct/range {v35 .. v35}, Lcom/google/api/services/plusi/model/InviteeSummary;-><init>()V

    .line 1911
    .local v35, jsonSummary:Lcom/google/api/services/plusi/model/InviteeSummary;
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasCount()Z

    move-result v53

    if-eqz v53, :cond_350

    .line 1912
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getCount()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    .line 1914
    :cond_350
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getInviteeCount()I

    move-result v53

    if-lez v53, :cond_381

    .line 1915
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v27, jsonInviteeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getInviteeList()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_363
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_37b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 1917
    .local v14, invitee:Lcom/google/protos/embeds/PlusEventItem$Invitee;
    invoke-static {v14}, Lcom/google/android/apps/plus/content/EsEventData;->convertToInvitee(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/api/services/plusi/model/Invitee;

    move-result-object v53

    move-object/from16 v0, v27

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_363

    .line 1919
    .end local v14           #invitee:Lcom/google/protos/embeds/PlusEventItem$Invitee;
    :cond_37b
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->invitee:Ljava/util/List;

    .line 1921
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v27           #jsonInviteeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    :cond_381
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasRsvpType()Z

    move-result v53

    if-eqz v53, :cond_395

    .line 1922
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    .line 1924
    :cond_395
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasSetByViewer()Z

    move-result v53

    if-eqz v53, :cond_3a9

    .line 1925
    invoke-virtual/range {v48 .. v48}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getSetByViewer()Z

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    .line 1927
    :cond_3a9
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32b

    .line 1929
    .end local v35           #jsonSummary:Lcom/google/api/services/plusi/model/InviteeSummary;
    .end local v48           #summary:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    :cond_3b2
    move-object/from16 v0, v36

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    .line 1931
    .end local v36           #jsonSummaryList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/InviteeSummary;>;"
    :cond_3b8
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasLocation()Z

    move-result v53

    if-eqz v53, :cond_4cf

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v42

    .line 1933
    .local v42, location:Lcom/google/protos/embed/place/PlaceItem$Place;
    new-instance v29, Lcom/google/api/services/plusi/model/Place;

    invoke-direct/range {v29 .. v29}, Lcom/google/api/services/plusi/model/Place;-><init>()V

    .line 1934
    .local v29, jsonLocation:Lcom/google/api/services/plusi/model/Place;
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasAddress()Z

    move-result v53

    if-eqz v53, :cond_43c

    .line 1935
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getAddress()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v3

    .line 1936
    .local v3, address:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    new-instance v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    invoke-direct {v15}, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;-><init>()V

    .line 1937
    .local v15, jsonAddress:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressCountry()Z

    move-result v53

    if-eqz v53, :cond_3e4

    .line 1938
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressCountry()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->addressCountry:Ljava/lang/String;

    .line 1940
    :cond_3e4
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressLocality()Z

    move-result v53

    if-eqz v53, :cond_3f2

    .line 1941
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressLocality()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->addressLocality:Ljava/lang/String;

    .line 1943
    :cond_3f2
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressRegion()Z

    move-result v53

    if-eqz v53, :cond_400

    .line 1944
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressRegion()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->addressRegion:Ljava/lang/String;

    .line 1946
    :cond_400
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasName()Z

    move-result v53

    if-eqz v53, :cond_40e

    .line 1947
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->name:Ljava/lang/String;

    .line 1949
    :cond_40e
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasPostalCode()Z

    move-result v53

    if-eqz v53, :cond_41c

    .line 1950
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->postalCode:Ljava/lang/String;

    .line 1952
    :cond_41c
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasPostOfficeBoxNumber()Z

    move-result v53

    if-eqz v53, :cond_42a

    .line 1953
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostOfficeBoxNumber()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    .line 1955
    :cond_42a
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasStreetAddress()Z

    move-result v53

    if-eqz v53, :cond_438

    .line 1956
    invoke-virtual {v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getStreetAddress()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    iput-object v0, v15, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->streetAddress:Ljava/lang/String;

    .line 1958
    :cond_438
    move-object/from16 v0, v29

    iput-object v15, v0, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    .line 1960
    .end local v3           #address:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .end local v15           #jsonAddress:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;
    :cond_43c
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasClusterId()Z

    move-result v53

    if-eqz v53, :cond_44c

    .line 1961
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getClusterId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    .line 1963
    :cond_44c
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasDescription()Z

    move-result v53

    if-eqz v53, :cond_45c

    .line 1964
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDescription()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->description:Ljava/lang/String;

    .line 1966
    :cond_45c
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasGeo()Z

    move-result v53

    if-eqz v53, :cond_499

    .line 1967
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getGeo()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v8

    .line 1968
    .local v8, geo:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    new-instance v22, Lcom/google/api/services/plusi/model/GeoCoordinates;

    invoke-direct/range {v22 .. v22}, Lcom/google/api/services/plusi/model/GeoCoordinates;-><init>()V

    .line 1969
    .local v22, jsonGeo:Lcom/google/api/services/plusi/model/GeoCoordinates;
    invoke-virtual {v8}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasLatitude()Z

    move-result v53

    if-eqz v53, :cond_47f

    .line 1970
    invoke-virtual {v8}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getLatitude()D

    move-result-wide v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    .line 1972
    :cond_47f
    invoke-virtual {v8}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasLongitude()Z

    move-result v53

    if-eqz v53, :cond_493

    .line 1973
    invoke-virtual {v8}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getLongitude()D

    move-result-wide v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    .line 1975
    :cond_493
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    .line 1977
    .end local v8           #geo:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .end local v22           #jsonGeo:Lcom/google/api/services/plusi/model/GeoCoordinates;
    :cond_499
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasName()Z

    move-result v53

    if-eqz v53, :cond_4a9

    .line 1978
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    .line 1980
    :cond_4a9
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasOwnerObfuscatedId()Z

    move-result v53

    if-eqz v53, :cond_4b9

    .line 1981
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->ownerObfuscatedId:Ljava/lang/String;

    .line 1983
    :cond_4b9
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasUrl()Z

    move-result v53

    if-eqz v53, :cond_4c9

    .line 1984
    invoke-virtual/range {v42 .. v42}, Lcom/google/protos/embed/place/PlaceItem$Place;->getUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Place;->url:Ljava/lang/String;

    .line 1986
    :cond_4c9
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    .line 1988
    .end local v29           #jsonLocation:Lcom/google/api/services/plusi/model/Place;
    .end local v42           #location:Lcom/google/protos/embed/place/PlaceItem$Place;
    :cond_4cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasName()Z

    move-result v53

    if-eqz v53, :cond_4df

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    .line 1991
    :cond_4df
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getPhotoContributorCount()I

    move-result v53

    if-lez v53, :cond_4e5

    .line 2000
    :cond_4e5
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasStartDate()Z

    move-result v53

    if-eqz v53, :cond_4f5

    .line 2001
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartDate()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startDate:Ljava/lang/String;

    .line 2003
    :cond_4f5
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasStartTime()Z

    move-result v53

    if-eqz v53, :cond_52e

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v51

    .line 2005
    .restart local v51       #time:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    new-instance v39, Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct/range {v39 .. v39}, Lcom/google/api/services/plusi/model/EventTime;-><init>()V

    .line 2006
    .restart local v39       #jsonTime:Lcom/google/api/services/plusi/model/EventTime;
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimeMs()Z

    move-result v53

    if-eqz v53, :cond_518

    .line 2007
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimeMs()J

    move-result-wide v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 2009
    :cond_518
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimezone()Z

    move-result v53

    if-eqz v53, :cond_528

    .line 2010
    invoke-virtual/range {v51 .. v51}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimezone()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventTime;->timezone:Ljava/lang/String;

    .line 2012
    :cond_528
    move-object/from16 v0, v39

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 2014
    .end local v39           #jsonTime:Lcom/google/api/services/plusi/model/EventTime;
    .end local v51           #time:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    :cond_52e
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasTheme()Z

    move-result v53

    if-eqz v53, :cond_607

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getTheme()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v49

    .line 2016
    .local v49, theme:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    new-instance v37, Lcom/google/api/services/plusi/model/Theme;

    invoke-direct/range {v37 .. v37}, Lcom/google/api/services/plusi/model/Theme;-><init>()V

    .line 2017
    .local v37, jsonTheme:Lcom/google/api/services/plusi/model/Theme;
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getCategoryCount()I

    move-result v53

    if-lez v53, :cond_583

    .line 2018
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v17, jsonCategoryList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/EventCategory;>;"
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getCategoryList()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_550
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_57d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 2021
    .local v4, category:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    new-instance v16, Lcom/google/api/services/plusi/model/EventCategory;

    invoke-direct/range {v16 .. v16}, Lcom/google/api/services/plusi/model/EventCategory;-><init>()V

    .line 2022
    .local v16, jsonCategory:Lcom/google/api/services/plusi/model/EventCategory;
    invoke-virtual {v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->hasCategory()Z

    move-result v53

    if-eqz v53, :cond_575

    .line 2023
    invoke-virtual {v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getCategory()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventCategory;->category:Ljava/lang/String;

    .line 2025
    :cond_575
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_550

    .line 2027
    .end local v4           #category:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .end local v16           #jsonCategory:Lcom/google/api/services/plusi/model/EventCategory;
    :cond_57d
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Theme;->category:Ljava/util/List;

    .line 2029
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v17           #jsonCategoryList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/EventCategory;>;"
    :cond_583
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getImageCount()I

    move-result v53

    if-lez v53, :cond_5ed

    .line 2030
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v26, jsonImageList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ThemeImage;>;"
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getImageList()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_596
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_5e7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    .line 2032
    .local v13, image:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    new-instance v25, Lcom/google/api/services/plusi/model/ThemeImage;

    invoke-direct/range {v25 .. v25}, Lcom/google/api/services/plusi/model/ThemeImage;-><init>()V

    .line 2033
    .local v25, jsonImage:Lcom/google/api/services/plusi/model/ThemeImage;
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasAspectRatio()Z

    move-result v53

    if-eqz v53, :cond_5bb

    .line 2034
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getAspectRatio()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ThemeImage;->aspectRatio:Ljava/lang/String;

    .line 2036
    :cond_5bb
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasFormat()Z

    move-result v53

    if-eqz v53, :cond_5cf

    .line 2037
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getFormat()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->name()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ThemeImage;->format:Ljava/lang/String;

    .line 2039
    :cond_5cf
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasUrl()Z

    move-result v53

    if-eqz v53, :cond_5df

    .line 2040
    invoke-virtual {v13}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ThemeImage;->url:Ljava/lang/String;

    .line 2042
    :cond_5df
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_596

    .line 2044
    .end local v13           #image:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .end local v25           #jsonImage:Lcom/google/api/services/plusi/model/ThemeImage;
    :cond_5e7
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Theme;->image:Ljava/util/List;

    .line 2046
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v26           #jsonImageList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ThemeImage;>;"
    :cond_5ed
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->hasThemeId()Z

    move-result v53

    if-eqz v53, :cond_601

    .line 2047
    invoke-virtual/range {v49 .. v49}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getThemeId()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    .line 2049
    :cond_601
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    .line 2051
    .end local v37           #jsonTheme:Lcom/google/api/services/plusi/model/Theme;
    .end local v49           #theme:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    :cond_607
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasThemeSpecification()Z

    move-result v53

    if-eqz v53, :cond_640

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getThemeSpecification()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v47

    .line 2053
    .local v47, specification:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    new-instance v34, Lcom/google/api/services/plusi/model/ThemeSpecification;

    invoke-direct/range {v34 .. v34}, Lcom/google/api/services/plusi/model/ThemeSpecification;-><init>()V

    .line 2054
    .local v34, jsonSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;
    invoke-virtual/range {v47 .. v47}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->hasImageUrl()Z

    move-result v53

    if-eqz v53, :cond_626

    .line 2055
    invoke-virtual/range {v47 .. v47}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getImageUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ThemeSpecification;->imageUrl:Ljava/lang/String;

    .line 2057
    :cond_626
    invoke-virtual/range {v47 .. v47}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->hasThemeId()Z

    move-result v53

    if-eqz v53, :cond_63a

    .line 2058
    invoke-virtual/range {v47 .. v47}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getThemeId()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/google/api/services/plusi/model/ThemeSpecification;->themeId:Ljava/lang/Integer;

    .line 2060
    :cond_63a
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    .line 2062
    .end local v34           #jsonSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;
    .end local v47           #specification:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    :cond_640
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasThirdPartyInfo()Z

    move-result v53

    if-eqz v53, :cond_685

    .line 2063
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getThirdPartyInfo()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v50

    .line 2064
    .local v50, thirdPartyInfo:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    new-instance v38, Lcom/google/api/services/plusi/model/EventThirdPartyInfo;

    invoke-direct/range {v38 .. v38}, Lcom/google/api/services/plusi/model/EventThirdPartyInfo;-><init>()V

    .line 2065
    .local v38, jsonThirdPartyInfo:Lcom/google/api/services/plusi/model/EventThirdPartyInfo;
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasParkingInfo()Z

    move-result v53

    if-eqz v53, :cond_65f

    .line 2066
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getParkingInfo()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventThirdPartyInfo;->parkingInfo:Ljava/lang/String;

    .line 2068
    :cond_65f
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasThirdPartyEventUrl()Z

    move-result v53

    if-eqz v53, :cond_66f

    .line 2069
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getThirdPartyEventUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventThirdPartyInfo;->thirdPartyEventUrl:Ljava/lang/String;

    .line 2071
    :cond_66f
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasTicketSellerUrl()Z

    move-result v53

    if-eqz v53, :cond_67f

    .line 2072
    invoke-virtual/range {v50 .. v50}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getTicketSellerUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/google/api/services/plusi/model/EventThirdPartyInfo;->ticketSellerUrl:Ljava/lang/String;

    .line 2074
    :cond_67f
    move-object/from16 v0, v38

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->thirdPartyInfo:Lcom/google/api/services/plusi/model/EventThirdPartyInfo;

    .line 2076
    .end local v38           #jsonThirdPartyInfo:Lcom/google/api/services/plusi/model/EventThirdPartyInfo;
    .end local v50           #thirdPartyInfo:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    :cond_685
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasUrl()Z

    move-result v53

    if-eqz v53, :cond_695

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getUrl()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->url:Ljava/lang/String;

    .line 2089
    :cond_695
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpTypeFromSummaries(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v45

    .line 2091
    .local v45, rsvpType:Ljava/lang/String;
    if-eqz v45, :cond_6a4

    .line 2092
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->setViewerInfoRsvp(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 2095
    :cond_6a4
    return-object v20
.end method

.method private static createMobilePhoto(Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 9
    .parameter "photo"

    .prologue
    .line 1481
    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_ALBUM_JSON:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v7, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->albumData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/json/EsJson;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;

    .line 1482
    .local v0, album:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_PLUS_ONE_JSON:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v7, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->plusoneData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/json/EsJson;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;

    .line 1484
    .local v4, plusone:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v2

    .line 1485
    .local v2, photoBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1486
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->ownerId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1487
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->description:Ljava/lang/String;

    if-eqz v6, :cond_2f

    .line 1488
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->description:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1490
    :cond_2f
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->title:Ljava/lang/String;

    if-eqz v6, :cond_38

    .line 1491
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1493
    :cond_38
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    if-eqz v6, :cond_41

    .line 1494
    iget-object v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1496
    :cond_41
    iget-wide v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->timestamp:J

    invoke-virtual {v2, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1497
    iget v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->totalComments:I

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1498
    iget v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->width:I

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setWidth(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1499
    iget v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->height:I

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setHeight(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1501
    const/4 v5, 0x0

    .line 1502
    .local v5, stateFlags:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanComment:Z

    if-eqz v6, :cond_5c

    .line 1503
    or-int/lit8 v5, v5, 0x2

    .line 1505
    :cond_5c
    iget-boolean v6, p0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanTag:Z

    if-eqz v6, :cond_62

    .line 1506
    or-int/lit8 v5, v5, 0x4

    .line 1508
    :cond_62
    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPhotoActionState;->getState(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1510
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v1

    .line 1511
    .local v1, albumBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 1512
    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->ownerId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 1513
    iget v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->photoCount:I

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTotalPhotos(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 1514
    iget-wide v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->timestamp:J

    invoke-virtual {v1, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 1515
    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->title:Ljava/lang/String;

    if-eqz v6, :cond_8e

    .line 1516
    iget-object v6, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 1518
    :cond_8e
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1520
    iget-object v6, v4, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->id:Ljava/lang/String;

    if-eqz v6, :cond_ab

    .line 1521
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v3

    .line 1522
    .local v3, plusOneBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    iget-object v6, v4, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1523
    iget-boolean v6, v4, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->plusoneByMe:Z

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1524
    iget v6, v4, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->count:I

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1525
    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 1528
    .end local v3           #plusOneBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_ab
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v6

    return-object v6
.end method

.method public static deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "eventId"

    .prologue
    .line 2106
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2108
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "events"

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2110
    .local v0, count:I
    const/4 v2, 0x0

    .line 2113
    .local v2, disableIs:Z
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2114
    const/4 v2, 0x1

    .line 2115
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    .line 2118
    :cond_25
    if-lez v0, :cond_31

    .line 2119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2122
    :cond_31
    const-string v3, "EsEventData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2123
    const-string v4, "EsEventData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DELETE_EVENT], id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_5b

    const-string v3, "; disable IS"

    :goto_4f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_5a
    return-void

    .line 2123
    :cond_5b
    const-string v3, ""

    goto :goto_4f
.end method

.method public static disableInstantShare(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1193
    const-string v0, "EsEventData"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1194
    const-string v0, "EsEventData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#disableInstantShare; now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_26
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShareInternal(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1198
    return-void
.end method

.method public static enableInstantShare(Landroid/content/Context;ZLcom/google/api/services/plusi/model/PlusEvent;)V
    .registers 14
    .parameter "context"
    .parameter "enabled"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    .line 1205
    const-string v0, "EsEventData"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1206
    const-string v0, "EsEventData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#enableInstantShare; event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_23
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 1211
    .local v7, alarmManager:Landroid/app/AlarmManager;
    iget-object v0, p2, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getEventFinishedIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1213
    .local v8, eventEndIntent:Landroid/app/PendingIntent;
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v5

    .line 1214
    .local v5, eventEndAlarmTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1216
    .local v9, now:J
    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1217
    if-eqz p1, :cond_8e

    const-wide/16 v0, 0x1388

    add-long/2addr v0, v9

    cmp-long v0, v0, v5

    if-gez v0, :cond_8e

    .line 1218
    const-string v0, "EsEventData"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1219
    const-string v0, "EsEventData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#enableInstantShare; start IS; now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wake in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_7b
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p2, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShareInternal(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1226
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v5, v6, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1235
    :goto_8d
    return-void

    .line 1228
    :cond_8e
    const-string v0, "EsEventData"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1229
    const-string v0, "EsEventData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#enableInstantShare; event over; now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_b8
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    goto :goto_8d
.end method

.method private static enableInstantShareInternal(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "eventOwnerId"
    .parameter "eventName"
    .parameter "eventEndTime"

    .prologue
    const/4 v7, 0x0

    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1146
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v4, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_5d

    const/4 v1, 0x1

    .line 1148
    .local v1, enable:Z
    :goto_d
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, activeISEventId:Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 1151
    const-string v5, "auto_upload_account_name"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v5, "auto_upload_account_type"

    const-string v6, "com.google"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_23
    const-string v5, "instant_share_eventid"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v5, "instant_share_endtime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1157
    sget-object v5, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1159
    if-eqz v1, :cond_5f

    .line 1160
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/Intents;->getViewEventActivityNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1162
    .local v2, intent:Landroid/app/PendingIntent;
    invoke-static {p0, p4, v2}, Lcom/google/android/apps/plus/util/NotificationUtils;->notifyInstantShareEnabled(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1164
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/InstantUpload;->ensureSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1168
    .end local v2           #intent:Landroid/app/PendingIntent;
    :goto_42
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->startMonitoring(Landroid/content/Context;)V

    .line 1170
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1173
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/google/android/apps/plus/content/EsEventData$2;

    invoke-direct {v6, v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsEventData$2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1187
    :cond_5c
    return-void

    .line 1147
    .end local v0           #activeISEventId:Ljava/lang/String;
    .end local v1           #enable:Z
    :cond_5d
    const/4 v1, 0x0

    goto :goto_d

    .line 1166
    .restart local v0       #activeISEventId:Ljava/lang/String;
    .restart local v1       #enable:Z
    :cond_5f
    invoke-static {p0}, Lcom/google/android/apps/plus/util/NotificationUtils;->cancelInstantShareEnabled(Landroid/content/Context;)V

    goto :goto_42
.end method

.method private static ensureFreshEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 13
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2336
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2342
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v8, Lcom/google/android/apps/plus/content/EsEventData;->sEventThemesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2345
    :try_start_b
    const-string v7, "SELECT event_themes_sync_time  FROM account_status"

    const/4 v9, 0x0

    invoke-static {v2, v7, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_3a
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_b .. :try_end_11} :catch_36

    move-result-wide v3

    .line 2352
    .local v3, lastSyncTimestamp:J
    :goto_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v3

    .line 2353
    .local v0, age:J
    const-wide/32 v9, 0x5265c00

    cmp-long v7, v0, v9

    if-lez v7, :cond_34

    .line 2354
    new-instance v6, Lcom/google/android/apps/plus/api/GetEventThemesOperation;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, p0, p1, v7, v9}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2356
    .local v6, op:Lcom/google/android/apps/plus/api/GetEventThemesOperation;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->start()V

    .line 2357
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->hasError()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 2360
    const-string v7, "EsEventData"

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->logError(Ljava/lang/String;)V

    .line 2363
    .end local v6           #op:Lcom/google/android/apps/plus/api/GetEventThemesOperation;
    :cond_34
    monitor-exit v8

    .line 2364
    return-void

    .line 2348
    .end local v0           #age:J
    .end local v3           #lastSyncTimestamp:J
    :catch_36
    move-exception v5

    .line 2349
    .local v5, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v3, -0x1

    .restart local v3       #lastSyncTimestamp:J
    goto :goto_12

    .line 2363
    .end local v3           #lastSyncTimestamp:J
    .end local v5           #noData:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_3a
    move-exception v7

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3a

    throw v7
.end method

.method public static filterRsvpType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "rsvpType"

    .prologue
    .line 2460
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING_AND_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2471
    .end local p0
    :cond_28
    :goto_28
    return-object p0

    .line 2467
    .restart local p0
    :cond_29
    const-string v0, "EsEventData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2468
    const-string v0, "EsEventData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FILTER_RSVP_TYPE]; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_50
    sget-object p0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    goto :goto_28
.end method

.method public static getDisplayTime(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)J
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "eventId"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 608
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 610
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "event_id=?"

    .line 611
    .local v11, eventWhere:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    aput-object p2, v4, v6

    .line 613
    .local v4, eventArgs:[Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 614
    .local v9, displayTime:J
    const-string v1, "events"

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "display_time"

    aput-object v3, v2, v6

    const-string v3, "event_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 618
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 619
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_32

    move-result-wide v9

    .line 622
    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 624
    return-wide v9

    .line 622
    :catchall_32
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 323
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 325
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    const-string v3, "event_id=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "projection"

    .prologue
    .line 520
    const-string v10, "SELECT display_time FROM events WHERE event_id = ?"

    .line 523
    .local v10, displayTimeQuery:Ljava/lang/String;
    const-string v11, "event_id = ? AND timestamp >= ?"

    .line 526
    .local v11, eventActivitiesQuery:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 529
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v8, 0x0

    .line 531
    .local v8, displayTime:J
    :try_start_e
    const-string v1, "SELECT display_time FROM events WHERE event_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_e .. :try_end_19} :catch_36

    move-result-wide v8

    .line 537
    :goto_1a
    const-string v1, "event_activities"

    const-string v3, "event_id = ? AND timestamp >= ?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 533
    :catch_36
    move-exception v1

    goto :goto_1a
.end method

.method public static getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J
    .registers 5
    .parameter "event"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    if-nez v0, :cond_17

    :cond_a
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    :goto_16
    return-wide v0

    :cond_17
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_16
.end method

.method private static getEventOutput(Lcom/google/api/services/plusi/model/PlusEvent;I)Ljava/lang/String;
    .registers 11
    .parameter "event"
    .parameter "indent"

    .prologue
    .line 2409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2410
    .local v4, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_12

    .line 2411
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_12

    .line 2412
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2411
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2415
    .end local v1           #i:I
    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2416
    .local v3, indentString:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2418
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EVENT ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "owner: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    if-nez v6, :cond_c8

    const-string v6, "N/A"

    :goto_42
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    const-string v2, "MMM dd, yyyy h:mmaa"

    .line 2427
    .local v2, inFormat:Ljava/lang/CharSequence;
    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2429
    .local v5, startDateString:Ljava/lang/CharSequence;
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2433
    iget-object v6, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v6, :cond_93

    iget-object v6, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    if-eqz v6, :cond_93

    .line 2434
    const-string v2, "MMM dd, yyyy h:mmaa"

    .line 2435
    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2437
    .local v0, endDateString:Ljava/lang/CharSequence;
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2441
    .end local v0           #endDateString:Ljava/lang/CharSequence;
    :cond_93
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 2418
    .end local v2           #inFormat:Ljava/lang/CharSequence;
    .end local v5           #startDateString:Ljava/lang/CharSequence;
    :cond_c8
    iget-object v6, p0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    goto/16 :goto_42
.end method

.method public static getEventTheme(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "themeId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 2303
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2307
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_20

    .line 2308
    const-string v3, "is_default!=0"

    .line 2309
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2315
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_f
    const-string v1, "event_themes"

    const-string v7, "theme_id"

    move-object v2, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2318
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 2325
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_1f
    return-object v8

    .line 2311
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_20
    const-string v3, "theme_id=?"

    .line 2312
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_f

    .line 2322
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2324
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsEventData;->ensureFreshEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2325
    const-string v1, "event_themes"

    const-string v7, "theme_id"

    move-object v2, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1f
.end method

.method public static getEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "filter"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 2284
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsEventData;->ensureFreshEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2286
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2288
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "event_themes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_featured="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2e

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "theme_id"

    move-object v2, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_2e
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static getImageUrl(Lcom/google/api/services/plusi/model/Theme;)Ljava/lang/String;
    .registers 3
    .parameter "theme"

    .prologue
    .line 2268
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getThemeImage(Lcom/google/api/services/plusi/model/Theme;)Lcom/google/api/services/plusi/model/ThemeImage;

    move-result-object v0

    .line 2269
    .local v0, image:Lcom/google/api/services/plusi/model/ThemeImage;
    if-eqz v0, :cond_9

    .line 2270
    iget-object v1, v0, Lcom/google/api/services/plusi/model/ThemeImage;->url:Ljava/lang/String;

    .line 2272
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static getInviteeSummary(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Lcom/google/api/services/plusi/model/InviteeSummary;
    .registers 7
    .parameter "event"
    .parameter "rsvpType"

    .prologue
    .line 2601
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    if-nez v3, :cond_6

    .line 2602
    const/4 v1, 0x0

    .line 2622
    :cond_5
    :goto_5
    return-object v1

    .line 2605
    :cond_6
    const/4 v1, 0x0

    .line 2607
    .local v1, returnSummary:Lcom/google/api/services/plusi/model/InviteeSummary;
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/InviteeSummary;

    .line 2608
    .local v2, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    iget-object v3, v2, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 2611
    iget-object v3, v2, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    iget-object v3, v2, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    if-eqz v3, :cond_32

    iget-object v3, v2, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2615
    :cond_32
    iget-object v3, v2, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2616
    move-object v1, v2

    .line 2617
    goto :goto_5
.end method

.method public static getMyCurrentEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "now"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 590
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 592
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    const-string v3, "mine = 1 AND ? < end_time"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v7, "end_time ASC"

    move-object v2, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 596
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private static getMyEventIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .registers 11
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1664
    const-string v1, "events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "event_id"

    aput-object v0, v2, v3

    const-string v3, "mine = 1"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1667
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1669
    .local v9, eventList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1a
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1670
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 1673
    :catchall_29
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1675
    return-object v9
.end method

.method public static getMyPastEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "now"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 571
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 573
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    const-string v3, "mine = 1 AND ? > end_time"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v7, "end_time DESC"

    move-object v2, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 577
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private static getPlusEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 338
    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 352
    :cond_9
    :goto_9
    return-object v1

    .line 342
    :cond_a
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_QUERY_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v2}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 344
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2d

    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 345
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/PlusEvent;
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_33

    .line 348
    if-eqz v0, :cond_9

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 348
    :cond_2d
    if-eqz v0, :cond_9

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 348
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_39

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v1
.end method

.method public static getRsvpStatus(Lcom/google/api/services/plusi/model/PlusEvent;)I
    .registers 3
    .parameter "event"

    .prologue
    .line 2533
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v0

    .line 2535
    .local v0, rsvpType:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2537
    :cond_14
    const/4 v1, 0x1

    .line 2544
    :goto_15
    return v1

    .line 2538
    :cond_16
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2539
    const/4 v1, 0x2

    goto :goto_15

    .line 2540
    :cond_20
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING_AND_REMOVE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2542
    :cond_30
    const/4 v1, 0x3

    goto :goto_15

    .line 2544
    :cond_32
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;
    .registers 2
    .parameter "event"

    .prologue
    .line 2479
    if-eqz p0, :cond_f

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-eqz v0, :cond_f

    .line 2480
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->filterRsvpType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2483
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    goto :goto_e
.end method

.method private static getRsvpTypeFromSummaries(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;
    .registers 7
    .parameter "event"

    .prologue
    .line 2492
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    .line 2493
    .local v3, returnRsvp:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2495
    .local v1, found:Z
    iget-object v5, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    if-nez v5, :cond_8

    .line 2514
    .end local v3           #returnRsvp:Ljava/lang/String;
    :cond_7
    :goto_7
    return-object v3

    .line 2502
    .restart local v3       #returnRsvp:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/plusi/model/InviteeSummary;

    .line 2503
    .local v4, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    iget-object v5, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 2504
    iget-object v5, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsEventData;->filterRsvpType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2506
    .local v0, filteredRsvpType:Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    move-object v3, v0

    .line 2507
    goto :goto_7

    .line 2510
    :cond_38
    const/4 v1, 0x1

    goto :goto_e

    .line 2514
    .end local v0           #filteredRsvpType:Ljava/lang/String;
    .end local v4           #summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    :cond_3a
    if-nez v1, :cond_7

    const/4 v3, 0x0

    goto :goto_7
.end method

.method public static getThemeImage(Lcom/google/api/services/plusi/model/Theme;)Lcom/google/api/services/plusi/model/ThemeImage;
    .registers 6
    .parameter "theme"

    .prologue
    .line 2231
    const/4 v1, 0x0

    .line 2233
    .local v1, image:Lcom/google/api/services/plusi/model/ThemeImage;
    if-eqz p0, :cond_3f

    iget-object v3, p0, Lcom/google/api/services/plusi/model/Theme;->image:Ljava/util/List;

    if-eqz v3, :cond_3f

    .line 2234
    iget-object v3, p0, Lcom/google/api/services/plusi/model/Theme;->image:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/ThemeImage;

    .line 2235
    .local v2, themeImage:Lcom/google/api/services/plusi/model/ThemeImage;
    if-eqz v2, :cond_d

    .line 2239
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->ASPECT_LARGE:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/api/services/plusi/model/ThemeImage;->aspectRatio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2248
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->FORMAT_JPG:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/api/services/plusi/model/ThemeImage;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2249
    move-object v1, v2

    goto :goto_d

    .line 2251
    :cond_31
    if-nez v1, :cond_d

    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->FORMAT_MOV:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/api/services/plusi/model/ThemeImage;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2254
    move-object v1, v2

    goto :goto_d

    .line 2258
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #themeImage:Lcom/google/api/services/plusi/model/ThemeImage;
    :cond_3f
    return-object v1
.end method

.method static insertDisplayTimeInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .registers 18
    .parameter "db"
    .parameter "eventId"
    .parameter "displayTime"

    .prologue
    .line 958
    const-string v9, "event_id=?"

    .line 959
    .local v9, eventWhere:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 961
    .local v4, eventArgs:[Ljava/lang/String;
    const/4 v10, 0x1

    .line 962
    .local v10, newEvent:Z
    const-wide/16 v11, 0x0

    .line 963
    .local v11, oldDisplayTime:J
    const-string v1, "events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_time"

    aput-object v3, v2, v0

    const-string v3, "event_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 967
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 968
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_49

    move-result-wide v11

    .line 969
    const/4 v10, 0x0

    .line 972
    :cond_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 975
    cmp-long v0, p2, v11

    if-eqz v0, :cond_48

    .line 976
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 977
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "display_time"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 979
    if-eqz v10, :cond_4e

    .line 980
    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 985
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_48
    :goto_48
    return-void

    .line 972
    :catchall_49
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 982
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_4e
    const-string v0, "events"

    const-string v1, "event_id=?"

    invoke-virtual {p0, v0, v13, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_48
.end method

.method public static insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "activityId"
    .parameter "plusEvent"

    .prologue
    const/4 v10, 0x0

    .line 661
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 663
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v6, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 667
    :try_start_11
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z

    .line 669
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_4f

    .line 671
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 675
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0, p1, p4}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 677
    const/4 v0, 0x1

    invoke-static {p0, v0, p4}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShare(Landroid/content/Context;ZLcom/google/api/services/plusi/model/PlusEvent;)V

    .line 680
    :cond_37
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 681
    .local v9, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3b

    .line 671
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #notifyUri:Landroid/net/Uri;
    :catchall_4f
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 683
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 684
    return-void
.end method

.method public static insertEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "pollingToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    const/4 v8, 0x0

    .line 697
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 699
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v5, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 703
    :try_start_11
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsEventData;->insertPollingTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x0

    invoke-static {v1, p2, v0}, Lcom/google/android/apps/plus/content/EsEventData;->insertResumeTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-eqz p4, :cond_21

    .line 706
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventActivitiesInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    .line 709
    :cond_21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_3f

    .line 711
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 714
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 715
    .local v7, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2b

    .line 711
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #notifyUri:Landroid/net/Uri;
    :catchall_3f
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 717
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 718
    return-void
.end method

.method private static insertEventActivitiesInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    .registers 35
    .parameter "context"
    .parameter "db"
    .parameter "eventId"
    .parameter
    .parameter "updateOnly"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventActivity;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    .local p5, pendingNotification:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    const-string v18, "event_id=?"

    .line 1357
    .local v18, eventWhere:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    .line 1359
    .local v7, eventArgs:[Ljava/lang/String;
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1361
    .local v25, statusMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;>;"
    const/16 v26, 0x0

    .line 1363
    .local v26, updatedPhotos:Z
    const-string v4, "event_activities"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "type"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "owner_gaia_id"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "timestamp"

    aput-object v6, v5, v3

    const/4 v3, 0x4

    const-string v6, "fingerprint"

    aput-object v6, v5, v3

    const-string v6, "event_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1373
    .local v16, cursor:Landroid/database/Cursor;
    :goto_38
    :try_start_38
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1374
    new-instance v21, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;-><init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V

    .line 1375
    .local v21, key:Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;
    new-instance v24, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;-><init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V

    .line 1377
    .local v24, status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;->id:Ljava/lang/String;

    .line 1378
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->type:I

    .line 1379
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    .line 1380
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->timestamp:J

    .line 1381
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v24

    iput v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;->fingerprint:I

    .line 1383
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_38 .. :try_end_8e} :catchall_8f

    goto :goto_38

    .line 1386
    .end local v21           #key:Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;
    .end local v24           #status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    :catchall_8f
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_94
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1390
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1391
    .local v28, values:Landroid/content/ContentValues;
    new-instance v21, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;-><init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V

    .line 1392
    .restart local v21       #key:Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1394
    .local v12, seenPhotoAlbums:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_ad
    :goto_ad
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    .line 1395
    .local v14, activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    iget v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    move-object/from16 v0, v21

    iput v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->type:I

    .line 1396
    iget-object v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    .line 1397
    iget-wide v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->timestamp:J

    .line 1399
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;

    .line 1400
    .restart local v24       #status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    iget-object v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    if-nez v3, :cond_179

    const/16 v19, 0x0

    .line 1401
    .local v19, fingerprint:I
    :goto_db
    const/16 v22, 0x0

    .line 1402
    .local v22, photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    const/16 v27, 0x0

    .line 1403
    .local v27, url:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1404
    .local v15, comment:Ljava/lang/String;
    iget v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_181

    .line 1405
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/json/EsJson;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    check-cast v22, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;

    .line 1406
    .restart local v22       #photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    if-eqz v22, :cond_f8

    .line 1407
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1416
    :cond_f8
    :goto_f8
    if-nez v24, :cond_198

    .line 1417
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 1418
    const-string v3, "event_id"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v3, "type"

    iget v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1420
    const-string v3, "timestamp"

    iget-wide v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    const-string v3, "owner_gaia_id"

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v3, "owner_name"

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v3, "data"

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v3, "url"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v3, "comment"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v3, "fingerprint"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string v3, "event_activities"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1442
    :goto_160
    iget v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_ad

    .line 1443
    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/plus/content/EsEventData;->createMobilePhoto(Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v11

    .local v11, mobilePhoto:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p5

    .line 1444
    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertEventPhotoInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/Set;Ljava/util/List;)V

    .line 1446
    const/16 v26, 0x1

    goto/16 :goto_ad

    .line 1400
    .end local v11           #mobilePhoto:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v15           #comment:Ljava/lang/String;
    .end local v19           #fingerprint:I
    .end local v22           #photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    .end local v27           #url:Ljava/lang/String;
    :cond_179
    iget-object v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    goto/16 :goto_db

    .line 1409
    .restart local v15       #comment:Ljava/lang/String;
    .restart local v19       #fingerprint:I
    .restart local v22       #photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    .restart local v27       #url:Ljava/lang/String;
    :cond_181
    iget v3, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f8

    .line 1410
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COMMENT_JSON:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/json/EsJson;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/apps/plus/content/EsEventData$EventComment;

    .line 1411
    .local v17, eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    if-eqz v17, :cond_f8

    .line 1412
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->text:Ljava/lang/String;

    goto/16 :goto_f8

    .line 1429
    .end local v17           #eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    :cond_198
    move-object/from16 v0, v24

    iget v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;->fingerprint:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_1dc

    .line 1430
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 1431
    const-string v3, "data"

    iget-object v4, v14, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v3, "url"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v3, "comment"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v3, "fingerprint"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1435
    const-string v3, "event_activities"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;->id:Ljava/lang/String;

    aput-object v8, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1439
    :cond_1dc
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_160

    .line 1451
    .end local v14           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v15           #comment:Ljava/lang/String;
    .end local v19           #fingerprint:I
    .end local v22           #photo:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    .end local v24           #status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    .end local v27           #url:Ljava/lang/String;
    :cond_1e5
    if-nez p4, :cond_20f

    .line 1452
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1ef
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;

    .line 1453
    .restart local v24       #status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    const-string v3, "event_activities"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;->id:Ljava/lang/String;

    aput-object v8, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1ef

    .line 1459
    .end local v24           #status:Lcom/google/android/apps/plus/content/EsEventData$EventActivityStatus;
    :cond_20f
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 1460
    const-string v3, "activity_refresh_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1461
    const-string v3, "events"

    const-string v4, "event_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1463
    if-eqz v26, :cond_23f

    .line 1464
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_EVENT_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1466
    .local v23, photoNotifyUri:Landroid/net/Uri;
    if-eqz p5, :cond_240

    .line 1467
    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    .end local v23           #photoNotifyUri:Landroid/net/Uri;
    :cond_23f
    :goto_23f
    return-void

    .line 1469
    .restart local v23       #photoNotifyUri:Landroid/net/Uri;
    :cond_240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_23f
.end method

.method public static insertEventHomeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1592
    .local p2, upcoming:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/PlusEvent;>;"
    .local p3, upcomingDeclined:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/PlusEvent;>;"
    .local p4, past:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/PlusEvent;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1594
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v8, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    .line 1597
    .local v4, userGaiaId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsEventData;->getMyEventIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v6

    .line 1598
    .local v6, myEvents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x5

    new-array v7, v2, [I

    .line 1600
    .local v7, eventStatus:[I
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    .line 1603
    :try_start_1f
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventListInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;[ILjava/util/List;)V

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    .line 1606
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventListInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;[ILjava/util/List;)V

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    .line 1609
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventListInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;[ILjava/util/List;)V

    .line 1612
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1613
    .local v14, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 1614
    .local v9, eventIds:[Ljava/lang/String;
    const-string v2, "event_id IN ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    const/4 v10, 0x0

    .local v10, i:I
    :goto_44
    array-length v2, v9

    if-ge v10, v2, :cond_56

    .line 1616
    if-eqz v10, :cond_4e

    .line 1617
    const/16 v2, 0x2c

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1619
    :cond_4e
    const/16 v2, 0x3f

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1615
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 1621
    :cond_56
    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1622
    const-string v2, "events"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1624
    const/4 v2, 0x3

    array-length v5, v9

    aput v5, v7, v2

    .line 1627
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1628
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "event_list_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1630
    const-string v2, "account_status"

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v15, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1631
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catchall {:try_start_1f .. :try_end_87} :catchall_138

    .line 1633
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1636
    const-string v2, "EsEventData"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 1637
    const-string v2, "EsEventData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[INSERT_EVENT_LIST]; "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x0

    aget v16, v7, v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, " inserted, "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x1

    aget v16, v7, v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, " changed, "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x2

    aget v16, v7, v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, " not changed, "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x3

    aget v16, v7, v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, " removed, "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x4

    aget v16, v7, v16

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, " ignored"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_103
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->getPlusEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v13

    .line 1647
    .local v13, plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 1648
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShare(Landroid/content/Context;ZLcom/google/api/services/plusi/model/PlusEvent;)V

    .line 1651
    :cond_11f
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_123
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 1652
    .local v12, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_123

    .line 1633
    .end local v9           #eventIds:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #notifyUri:Landroid/net/Uri;
    .end local v13           #plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_138
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1654
    .restart local v9       #eventIds:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_13d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1656
    return-void
.end method

.method static insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z
    .registers 31
    .parameter "context"
    .parameter "userGaiaId"
    .parameter "db"
    .parameter "eventId"
    .parameter "activityId"
    .parameter "plusEvent"
    .parameter
    .parameter "displayTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 787
    .local p6, pendingNotification:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 789
    .local v17, now:J
    const/4 v11, 0x0

    .line 790
    .local v11, dbModified:Z
    const/4 v15, 0x1

    .line 791
    .local v15, newEvent:Z
    const/16 v19, 0x0

    .line 792
    .local v19, oldFingerprint:I
    const-string v3, "events"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "fingerprint"

    aput-object v5, v4, v2

    const-string v5, "event_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 796
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 797
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_187

    move-result v19

    .line 798
    const/4 v15, 0x0

    .line 801
    :cond_2f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 804
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/google/api/services/plusi/model/PlusEventJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v14

    .line 805
    .local v14, eventBytes:[B
    invoke-static {v14}, Ljava/util/Arrays;->hashCode([B)I

    move-result v16

    .line 807
    .local v16, newFingerprint:I
    if-nez v15, :cond_48

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_1a8

    .line 808
    :cond_48
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "refresh_timestamp"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 810
    const-string v2, "name"

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v2, "event_data"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 812
    const-string v2, "mine"

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->isMine(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 813
    const-string v3, "can_invite_people"

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v2, :cond_18c

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    if-eqz v2, :cond_18c

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18c

    :cond_a5
    const/4 v2, 0x1

    :goto_a6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 818
    const-string v3, "can_post_photos"

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v2, :cond_18f

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    if-eqz v2, :cond_18f

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18f

    :cond_d7
    const/4 v2, 0x1

    :goto_d8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 825
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v2, :cond_192

    .line 826
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 831
    .local v20, startTime:J
    :goto_f1
    const-string v2, "start_time"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v12

    .line 834
    .local v12, endTime:J
    const-string v2, "end_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 836
    const-string v2, "fingerprint"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    if-nez v15, :cond_11a

    if-eqz p4, :cond_123

    .line 838
    :cond_11a
    const-string v2, "activity_id"

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_123
    if-eqz p7, :cond_12e

    .line 842
    const-string v2, "display_time"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 845
    :cond_12e
    if-eqz v15, :cond_196

    .line 846
    const-string v2, "event_id"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v2, "owner_gaia_id"

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v2, "events"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 854
    :goto_14e
    const/4 v11, 0x1

    .line 862
    .end local v12           #endTime:J
    .end local v20           #startTime:J
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_14f
    :goto_14f
    const-string v2, "EsEventData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 863
    const-string v2, "EsEventData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INSERT_EVENT], duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsEventData;->getEventOutput(Lcom/google/api/services/plusi/model/PlusEvent;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsEventData;->writeToLog(Ljava/lang/String;)V

    .line 867
    :cond_186
    return v11

    .line 801
    .end local v14           #eventBytes:[B
    .end local v16           #newFingerprint:I
    :catchall_187
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 813
    .restart local v14       #eventBytes:[B
    .restart local v16       #newFingerprint:I
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_18c
    const/4 v2, 0x0

    goto/16 :goto_a6

    .line 818
    :cond_18f
    const/4 v2, 0x0

    goto/16 :goto_d8

    .line 828
    :cond_192
    move-wide/from16 v20, v17

    .restart local v20       #startTime:J
    goto/16 :goto_f1

    .line 851
    .restart local v12       #endTime:J
    :cond_196
    const-string v2, "events"

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14e

    .line 855
    .end local v12           #endTime:J
    .end local v20           #startTime:J
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_1a8
    if-eqz p4, :cond_14f

    .line 856
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 857
    .restart local v22       #values:Landroid/content/ContentValues;
    const-string v2, "activity_id"

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v2, "events"

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14f
.end method

.method public static insertEventInviteeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p3, inviteeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    const-string v7, "EsEventData"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 998
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/plusi/model/Invitee;

    .line 999
    .local v4, invitee:Lcom/google/api/services/plusi/model/Invitee;
    const-string v7, "EsEventData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[INSERT_EVENT_INVITEE]; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/google/api/services/plusi/model/InviteeJson;->getInstance()Lcom/google/api/services/plusi/model/InviteeJson;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/api/services/plusi/model/InviteeJson;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1004
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #invitee:Lcom/google/api/services/plusi/model/Invitee;
    :cond_44
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1007
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "event_id=?"

    .line 1008
    .local v2, eventWhere:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v1, v7

    .line 1010
    .local v1, eventArgs:[Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v6, values:Landroid/content/ContentValues;
    new-instance v5, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;

    invoke-direct {v5}, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;-><init>()V

    .line 1012
    .local v5, list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    iput-object p3, v5, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;->invitees:Ljava/util/List;

    .line 1014
    const-string v7, "invitee_roster_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1015
    const-string v7, "invitee_roster"

    sget-object v8, Lcom/google/android/apps/plus/content/EsEventData;->INVITEE_LIST_JSON:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v8, v5}, Lcom/google/android/apps/plus/json/EsJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1017
    const-string v7, "events"

    const-string v8, "event_id=?"

    invoke-virtual {v0, v7, v6, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1020
    return-void
.end method

.method private static insertEventListInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;[ILjava/util/List;)V
    .registers 20
    .parameter "context"
    .parameter "db"
    .parameter "userGaiaId"
    .parameter
    .parameter
    .parameter "eventStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1559
    .local p3, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/PlusEvent;>;"
    .local p4, myEvents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, notificationList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    if-nez p3, :cond_3

    .line 1578
    :cond_2
    return-void

    .line 1563
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/plusi/model/PlusEvent;

    .line 1564
    .local v6, event:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static {v6, p2}, Lcom/google/android/apps/plus/content/EsEventData;->isMine(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1565
    const/4 v1, 0x4

    aget v2, p5, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p5, v1

    goto :goto_7

    .line 1569
    :cond_21
    iget-object v1, v6, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v10

    .line 1570
    .local v10, hasEvent:Z
    iget-object v4, v6, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z

    move-result v9

    .line 1573
    .local v9, dbChanged:Z
    if-eqz v9, :cond_44

    if-eqz v10, :cond_42

    const/4 v12, 0x1

    .line 1576
    .local v12, statusIndex:I
    :goto_3b
    aget v1, p5, v12

    add-int/lit8 v1, v1, 0x1

    aput v1, p5, v12

    goto :goto_7

    .line 1573
    .end local v12           #statusIndex:I
    :cond_42
    const/4 v12, 0x0

    goto :goto_3b

    :cond_44
    const/4 v12, 0x2

    goto :goto_3b
.end method

.method public static insertEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 26
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Theme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2142
    .local p2, themes:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Theme;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2144
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2146
    :try_start_b
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2147
    .local v19, knownThemes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;>;"
    const-string v3, "event_themes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "theme_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "is_default"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "is_featured"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "image_url"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_77

    move-result-object v11

    .line 2155
    .local v11, cursor:Landroid/database/Cursor;
    :goto_32
    :try_start_32
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 2156
    new-instance v20, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;-><init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V

    .line 2157
    .local v20, theme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2158
    .local v21, themeId:I
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x1

    :goto_4d
    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->isDefault:Z

    .line 2159
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7e

    const/4 v3, 0x1

    :goto_59
    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->isFeatured:Z

    .line 2160
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->imageUrl:Ljava/lang/String;

    .line 2161
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_32 .. :try_end_71} :catchall_72

    goto :goto_32

    .line 2164
    .end local v20           #theme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    .end local v21           #themeId:I
    :catchall_72
    move-exception v3

    :try_start_73
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    .line 2219
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v19           #knownThemes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;>;"
    :catchall_77
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2158
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v19       #knownThemes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;>;"
    .restart local v20       #theme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    .restart local v21       #themeId:I
    :cond_7c
    const/4 v3, 0x0

    goto :goto_4d

    .line 2159
    :cond_7e
    const/4 v3, 0x0

    goto :goto_59

    .line 2164
    .end local v20           #theme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    .end local v21           #themeId:I
    :cond_80
    :try_start_80
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2167
    new-instance v12, Ljava/util/HashSet;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2168
    .local v12, deletedThemes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2170
    .local v22, values:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_95
    :goto_95
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_150

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/api/services/plusi/model/Theme;

    .line 2171
    .local v20, theme:Lcom/google/api/services/plusi/model/Theme;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    if-eqz v3, :cond_95

    .line 2175
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/plus/content/EsEventData;->getImageUrl(Lcom/google/api/services/plusi/model/Theme;)Ljava/lang/String;

    move-result-object v15

    .line 2176
    .local v15, imageUrl:Ljava/lang/String;
    if-eqz v15, :cond_95

    .line 2180
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2182
    const/16 v16, 0x0

    .line 2183
    .local v16, isDefault:Z
    const/16 v17, 0x0

    .line 2184
    .local v17, isFeatured:Z
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/api/services/plusi/model/Theme;->category:Ljava/util/List;

    if-eqz v3, :cond_ec

    .line 2185
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/api/services/plusi/model/Theme;->category:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_c6
    :goto_c6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ec

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/services/plusi/model/EventCategory;

    .line 2186
    .local v10, category:Lcom/google/api/services/plusi/model/EventCategory;
    const-string v3, "FEATURED"

    iget-object v4, v10, Lcom/google/api/services/plusi/model/EventCategory;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 2187
    const/16 v17, 0x1

    goto :goto_c6

    .line 2188
    :cond_df
    const-string v3, "DEFAULT"

    iget-object v4, v10, Lcom/google/api/services/plusi/model/EventCategory;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 2189
    const/16 v16, 0x1

    goto :goto_c6

    .line 2194
    .end local v10           #category:Lcom/google/api/services/plusi/model/EventCategory;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_ec
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;

    .line 2195
    .local v18, knownTheme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    if-eqz v18, :cond_114

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->isDefault:Z

    move/from16 v0, v16

    if-ne v3, v0, :cond_114

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->isFeatured:Z

    move/from16 v0, v17

    if-ne v3, v0, :cond_114

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;->imageUrl:Ljava/lang/String;

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 2199
    :cond_114
    const-string v3, "theme_id"

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2200
    const-string v4, "is_featured"

    if-eqz v17, :cond_14c

    const/4 v3, 0x1

    :goto_124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2201
    const-string v4, "is_default"

    if-eqz v16, :cond_14e

    const/4 v3, 0x1

    :goto_132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2202
    const-string v3, "image_url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v3, "event_themes"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_95

    .line 2200
    :cond_14c
    const/4 v3, 0x0

    goto :goto_124

    .line 2201
    :cond_14e
    const/4 v3, 0x0

    goto :goto_132

    .line 2207
    .end local v15           #imageUrl:Ljava/lang/String;
    .end local v16           #isDefault:Z
    .end local v17           #isFeatured:Z
    .end local v18           #knownTheme:Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
    .end local v20           #theme:Lcom/google/api/services/plusi/model/Theme;
    :cond_150
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_154
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 2208
    .local v21, themeId:Ljava/lang/Integer;
    const-string v3, "event_themes"

    const-string v4, "theme_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_154

    .line 2212
    .end local v21           #themeId:Ljava/lang/Integer;
    :cond_172
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 2213
    const-string v3, "event_themes_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2215
    const-string v3, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2217
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_190
    .catchall {:try_start_80 .. :try_end_190} :catchall_77

    .line 2219
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2221
    return-void
.end method

.method static insertPollingTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "db"
    .parameter "eventId"
    .parameter "pollingToken"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 880
    const-string v9, "event_id=?"

    .line 881
    .local v9, eventWhere:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v3

    .line 883
    .local v4, eventArgs:[Ljava/lang/String;
    const/4 v10, 0x1

    .line 884
    .local v10, newEvent:Z
    const/4 v11, 0x0

    .line 885
    .local v11, oldPollingToken:Ljava/lang/String;
    const-string v1, "events"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "polling_token"

    aput-object v0, v2, v3

    const-string v3, "event_id=?"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 889
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 890
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_43

    move-result-object v11

    .line 891
    const/4 v10, 0x0

    .line 894
    :cond_28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 897
    invoke-static {v11, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 898
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "polling_token"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    if-eqz v10, :cond_48

    .line 902
    const-string v0, "events"

    invoke-virtual {p0, v0, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 907
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_42
    :goto_42
    return-void

    .line 894
    :catchall_43
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 904
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_48
    const-string v0, "events"

    const-string v1, "event_id=?"

    invoke-virtual {p0, v0, v12, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_42
.end method

.method static insertResumeTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "db"
    .parameter "eventId"
    .parameter "resumeToken"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 919
    const-string v9, "event_id=?"

    .line 920
    .local v9, eventWhere:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v3

    .line 922
    .local v4, eventArgs:[Ljava/lang/String;
    const/4 v10, 0x1

    .line 923
    .local v10, newEvent:Z
    const/4 v11, 0x0

    .line 924
    .local v11, oldResumeToken:Ljava/lang/String;
    const-string v1, "events"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "resume_token"

    aput-object v0, v2, v3

    const-string v3, "event_id=?"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 928
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 929
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_43

    move-result-object v11

    .line 930
    const/4 v10, 0x0

    .line 933
    :cond_28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 936
    invoke-static {v11, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 937
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 938
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "resume_token"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    if-eqz v10, :cond_48

    .line 941
    const-string v0, "events"

    invoke-virtual {p0, v0, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 946
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_42
    :goto_42
    return-void

    .line 933
    :catchall_43
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 943
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_48
    const-string v0, "events"

    const-string v1, "event_id=?"

    invoke-virtual {p0, v0, v12, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_42
.end method

.method public static isEventOver(Lcom/google/api/services/plusi/model/PlusEvent;J)Z
    .registers 6
    .parameter "event"
    .parameter "now"

    .prologue
    .line 1115
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v0

    .line 1116
    .local v0, eventEnd:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_a

    const/4 v2, 0x1

    :goto_9
    return v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static isEventPostable(Lcom/google/api/services/plusi/model/PlusEvent;)Z
    .registers 2
    .parameter "event"

    .prologue
    .line 2715
    if-eqz p0, :cond_26

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    if-nez v0, :cond_24

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isBroadcastView:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isBroadcastView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_18
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static isInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)Z
    .registers 16
    .parameter "event"
    .parameter "userGaiaId"
    .parameter "now"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1081
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsEventData;->canAddPhotos(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z

    move-result v0

    .line 1082
    .local v0, allowsPhotos:Z
    iget-object v8, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-eqz v8, :cond_33

    iget-object v8, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    if-eqz v8, :cond_33

    move v5, v6

    .line 1083
    .local v5, hasRsvpType:Z
    :goto_11
    iget-object v8, p0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xa4cb80

    sub-long v3, v8, v10

    .line 1084
    .local v3, eventStart:J
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    sub-long v1, v8, v10

    .line 1086
    .local v1, eventEnd:J
    if-eqz v0, :cond_35

    if-eqz v5, :cond_35

    cmp-long v8, p2, v3

    if-lez v8, :cond_35

    cmp-long v8, p2, v1

    if-gez v8, :cond_35

    :goto_32
    return v6

    .end local v1           #eventEnd:J
    .end local v3           #eventStart:J
    .end local v5           #hasRsvpType:Z
    :cond_33
    move v5, v7

    .line 1082
    goto :goto_11

    .restart local v1       #eventEnd:J
    .restart local v3       #eventStart:J
    .restart local v5       #hasRsvpType:Z
    :cond_35
    move v6, v7

    .line 1086
    goto :goto_32
.end method

.method private static isMine(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z
    .registers 6
    .parameter "event"
    .parameter "userGaiaId"

    .prologue
    const/4 v2, 0x1

    .line 2371
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2390
    :cond_9
    :goto_9
    return v2

    .line 2381
    :cond_a
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 2383
    :cond_14
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    if-eqz v3, :cond_37

    .line 2384
    iget-object v3, p0, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/InviteeSummary;

    .line 2385
    .local v1, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    iget-object v3, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_9

    .line 2390
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    :cond_37
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static isViewerCheckedIn(Lcom/google/api/services/plusi/model/PlusEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2702
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static refreshEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 365
    new-instance v0, Lcom/google/android/apps/plus/content/EsEventData$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsEventData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public static retrieveEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 296
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 297
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 311
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_b
    return-object v7

    .line 301
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    new-instance v0, Lcom/google/android/apps/plus/api/GetEventOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 305
    .local v0, op:Lcom/google/android/apps/plus/api/GetEventOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetEventOperation;->start()V

    .line 306
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetEventOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 307
    const-string v1, "EsEventData"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetEventOperation;->logError(Ljava/lang/String;)V

    move-object v7, v5

    .line 308
    goto :goto_b

    .line 311
    :cond_29
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_b
.end method

.method public static setRsvpType(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "rsvpType"

    .prologue
    .line 387
    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 389
    .local v10, checkin:Z
    if-eqz v10, :cond_5e

    const-string v14, "UNDO_CHECKIN"

    .line 391
    .local v14, previousRsvpType:Ljava/lang/String;
    :goto_c
    const/4 v12, 0x0

    .line 393
    .local v12, event:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 395
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "events"

    sget-object v4, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 398
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 399
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    check-cast v12, Lcom/google/api/services/plusi/model/PlusEvent;
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_61

    .line 402
    .restart local v12       #event:Lcom/google/api/services/plusi/model/PlusEvent;
    :cond_3d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 405
    if-eqz v12, :cond_17e

    .line 407
    iget-object v3, v12, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    if-eqz v3, :cond_4e

    iget-object v3, v12, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_66

    .line 408
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/apps/plus/content/EsEventData;->isMine(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v12, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    if-nez v3, :cond_66

    .line 409
    :cond_5c
    const/4 v3, 0x0

    .line 484
    :goto_5d
    return-object v3

    .line 389
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v14           #previousRsvpType:Ljava/lang/String;
    :cond_5e
    sget-object v14, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    goto :goto_c

    .line 402
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v14       #previousRsvpType:Ljava/lang/String;
    :catchall_61
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 415
    .restart local v12       #event:Lcom/google/api/services/plusi/model/PlusEvent;
    :cond_66
    const/16 v18, 0x0

    .line 416
    .local v18, updatedExistingSummary:Z
    iget-object v3, v12, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 417
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/api/services/plusi/model/InviteeSummary;>;"
    :cond_6e
    :goto_6e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 418
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/api/services/plusi/model/InviteeSummary;

    .line 421
    .local v17, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    if-eqz v3, :cond_6e

    .line 425
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    if-eqz v3, :cond_c3

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c3

    const/16 v16, 0x1

    .line 428
    .local v16, setByViewer:Z
    :goto_92
    if-eqz v16, :cond_9a

    if-nez v10, :cond_9a

    .line 429
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    .line 432
    :cond_9a
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 433
    const/16 v18, 0x1

    .line 434
    if-nez v16, :cond_6e

    .line 435
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    .line 436
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    if-nez v3, :cond_c6

    const/4 v3, 0x1

    :goto_ba
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    goto :goto_6e

    .line 425
    .end local v16           #setByViewer:Z
    :cond_c3
    const/16 v16, 0x0

    goto :goto_92

    .line 436
    .restart local v16       #setByViewer:Z
    :cond_c6
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 439
    :cond_d1
    if-eqz v16, :cond_6e

    .line 443
    const/4 v15, 0x1

    .line 444
    .local v15, remove:Z
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    sget-object v4, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 445
    const-string v3, "UNDO_CHECKIN"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 447
    :cond_e8
    if-eqz v15, :cond_6e

    .line 448
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    .line 449
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    if-eqz v3, :cond_6e

    .line 450
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    .line 453
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6e

    .line 454
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_6e

    .line 464
    .end local v15           #remove:Z
    .end local v16           #setByViewer:Z
    .end local v17           #summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    :cond_11e
    if-nez v18, :cond_145

    .line 465
    new-instance v17, Lcom/google/api/services/plusi/model/InviteeSummary;

    invoke-direct/range {v17 .. v17}, Lcom/google/api/services/plusi/model/InviteeSummary;-><init>()V

    .line 466
    .restart local v17       #summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/api/services/plusi/model/InviteeSummary;->rsvpType:Ljava/lang/String;

    .line 467
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    .line 468
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->setByViewer:Ljava/lang/Boolean;

    .line 469
    iget-object v3, v12, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 473
    .end local v17           #summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    :cond_145
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v12, v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->setViewerInfoRsvp(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 475
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "event_data"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/api/services/plusi/model/PlusEventJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 477
    const-string v3, "refresh_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v3, "events"

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/api/services/plusi/model/InviteeSummary;>;"
    .end local v18           #updatedExistingSummary:Z
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_17e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v3, v14

    .line 484
    goto/16 :goto_5d
.end method

.method public static setViewerInfoRsvp(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "account"
    .parameter "rsvpType"

    .prologue
    .line 497
    if-eqz p0, :cond_24

    .line 499
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    if-nez v0, :cond_20

    .line 500
    new-instance v0, Lcom/google/api/services/plusi/model/Invitee;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Invitee;-><init>()V

    iput-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    .line 501
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    new-instance v1, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EmbedsPerson;-><init>()V

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 502
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 505
    :cond_20
    iget-object v0, p0, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    iput-object p2, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    .line 507
    :cond_24
    return-void
.end method

.method public static syncCurrentEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"

    .prologue
    .line 2646
    sget-object v20, Lcom/google/android/apps/plus/content/EsEventData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v20

    .line 2647
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2648
    monitor-exit v20

    .line 2696
    :goto_a
    return-void

    .line 2651
    :cond_b
    const-string v3, "Current events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2654
    .local v18, now:J
    const-wide/32 v3, 0x112a880

    sub-long v15, v18, v3

    .line 2655
    .local v15, currentEventsStart:J
    const-wide/32 v3, 0xa4cb80

    add-long v13, v18, v3

    .line 2656
    .local v13, currentEventsEnd:J
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2659
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "events"

    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->SYNC_QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "end_time > ? AND start_time < ?"

    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_5d

    move-result-object v17

    .line 2668
    .local v17, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 2670
    .local v12, countSynced:I
    :goto_47
    :try_start_47
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2671
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_98

    move-result v3

    if-eqz v3, :cond_60

    .line 2691
    :cond_53
    :try_start_53
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2694
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 2695
    monitor-exit v20

    goto :goto_a

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #countSynced:I
    .end local v13           #currentEventsEnd:J
    .end local v15           #currentEventsStart:J
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v18           #now:J
    :catchall_5d
    move-exception v3

    monitor-exit v20
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_5d

    throw v3

    .line 2675
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #countSynced:I
    .restart local v13       #currentEventsEnd:J
    .restart local v15       #currentEventsStart:J
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v18       #now:J
    :cond_60
    const/4 v3, 0x0

    :try_start_61
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2676
    .local v5, eventId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2677
    .local v6, pollingToken:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2679
    .local v7, resumeToken:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/EventReadOperation;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/apps/plus/api/EventReadOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2682
    .local v2, op:Lcom/google/android/apps/plus/api/EventReadOperation;
    new-instance v3, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v3}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/apps/plus/api/EventReadOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 2683
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/EventReadOperation;->hasError()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 2685
    const-string v3, "EsEventData"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/api/EventReadOperation;->logError(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_61 .. :try_end_97} :catchall_98

    goto :goto_47

    .line 2691
    .end local v2           #op:Lcom/google/android/apps/plus/api/EventReadOperation;
    .end local v5           #eventId:Ljava/lang/String;
    .end local v6           #pollingToken:Ljava/lang/String;
    .end local v7           #resumeToken:Ljava/lang/String;
    :catchall_98
    move-exception v3

    :try_start_99
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_5d

    .line 2687
    .restart local v2       #op:Lcom/google/android/apps/plus/api/EventReadOperation;
    .restart local v5       #eventId:Ljava/lang/String;
    .restart local v6       #pollingToken:Ljava/lang/String;
    .restart local v7       #resumeToken:Ljava/lang/String;
    :cond_9d
    add-int/lit8 v12, v12, 0x1

    goto :goto_47
.end method

.method public static timeUntilInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)J
    .registers 10
    .parameter "event"
    .parameter "userGaiaId"
    .parameter "now"

    .prologue
    .line 1125
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsEventData;->isInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1126
    const-wide/16 v2, 0x0

    .line 1133
    :goto_8
    return-wide v2

    .line 1128
    :cond_9
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v0

    .line 1130
    .local v0, eventEnd:J
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsEventData;->canAddPhotos(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    cmp-long v2, p2, v0

    if-lez v2, :cond_1a

    .line 1131
    :cond_17
    const-wide/16 v2, -0x1

    goto :goto_8

    .line 1133
    :cond_1a
    iget-object v2, p0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb80

    sub-long/2addr v2, v4

    sub-long/2addr v2, p2

    goto :goto_8
.end method

.method public static updateEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJ)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "activityId"
    .parameter "plusEvent"
    .parameter "pollingToken"
    .parameter "resumeToken"
    .parameter
    .parameter "updatesOnly"
    .parameter "displayTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventActivity;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p7, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 739
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v8, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 743
    :try_start_10
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z

    .line 745
    move-object/from16 v0, p5

    invoke-static {v4, p2, v0}, Lcom/google/android/apps/plus/content/EsEventData;->insertPollingTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p6

    invoke-static {v4, p2, v0}, Lcom/google/android/apps/plus/content/EsEventData;->insertResumeTokenInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    move-wide/from16 v0, p9

    invoke-static {v4, p2, v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->insertDisplayTimeInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 748
    if-eqz p7, :cond_3a

    move-object v3, p0

    move-object v5, p2

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 749
    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventActivitiesInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    .line 753
    :cond_3a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_71

    .line 755
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 759
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 761
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-static {p0, v2, v0}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShare(Landroid/content/Context;ZLcom/google/api/services/plusi/model/PlusEvent;)V

    .line 764
    :cond_58
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 765
    .local v11, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_5c

    .line 755
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #notifyUri:Landroid/net/Uri;
    :catchall_71
    move-exception v2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 767
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 768
    return-void
.end method

.method public static updateEventInviteeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "blacklist"
    .parameter "gaiaId"
    .parameter "email"

    .prologue
    .line 1028
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1031
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 1032
    .local v17, inviteeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    const-string v5, "events"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "invitee_roster"

    aput-object v8, v6, v7

    const-string v7, "event_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1036
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1037
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 1038
    .local v13, bytes:[B
    if-eqz v13, :cond_3c

    .line 1039
    sget-object v5, Lcom/google/android/apps/plus/content/EsEventData;->INVITEE_LIST_JSON:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v5, v13}, Lcom/google/android/apps/plus/json/EsJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;

    iget-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;->invitees:Ljava/util/List;

    move-object/from16 v17, v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_42

    .line 1043
    .end local v13           #bytes:[B
    :cond_3c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1046
    if-nez v17, :cond_47

    .line 1066
    :cond_41
    :goto_41
    return-void

    .line 1043
    :catchall_42
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1050
    :cond_47
    const/16 v16, 0x0

    .line 1051
    .local v16, invitee:Lcom/google/api/services/plusi/model/Invitee;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/api/services/plusi/model/Invitee;

    .line 1052
    .local v12, anInvitee:Lcom/google/api/services/plusi/model/Invitee;
    iget-object v5, v12, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    if-eqz v5, :cond_4d

    iget-object v5, v12, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, v12, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1055
    move-object/from16 v16, v12

    .line 1060
    .end local v12           #anInvitee:Lcom/google/api/services/plusi/model/Invitee;
    :cond_77
    if-eqz v16, :cond_41

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    if-eqz v5, :cond_8b

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v0, p3

    if-eq v5, v0, :cond_41

    .line 1063
    :cond_8b
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    .line 1064
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInviteeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_41
.end method

.method public static validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1243
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsEventData;->getPlusEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v0

    .line 1245
    .local v0, event:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v1

    return v1
.end method

.method private static validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)Z
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 1258
    const/4 v3, 0x0

    .line 1260
    .local v3, enableInstantShare:Z
    const-string v13, "EsEventData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 1261
    const-string v13, "EsEventData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#validateInstantShare; now: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_26
    if-eqz p1, :cond_112

    if-eqz p2, :cond_112

    .line 1266
    :try_start_2a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v12

    .line 1267
    .local v12, userGaiaId:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    .line 1269
    .local v7, eventId:Ljava/lang/String;
    const-string v13, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1271
    .local v2, alarmManager:Landroid/app/AlarmManager;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/apps/plus/phone/Intents;->getEventFinishedIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1275
    .local v10, now:J
    const-string v13, "EsEventData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_6f

    .line 1276
    const-string v13, "EsEventData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#validateInstantShare; cur event: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_6f
    move-object/from16 v0, p2

    invoke-static {v0, v12, v10, v11}, Lcom/google/android/apps/plus/content/EsEventData;->isInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_112

    .line 1280
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7, v13}, Lcom/google/android/apps/plus/phone/Intents;->getViewEventActivityNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1282
    .local v9, intent:Landroid/app/PendingIntent;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v9, v14}, Lcom/google/android/apps/plus/util/NotificationUtils;->notifyInstantShareEnabled(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Z)V

    .line 1284
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v4

    .line 1285
    .local v4, eventEndAlarmTime:J
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/phone/Intents;->getEventFinishedIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1287
    .local v6, eventEndIntent:Landroid/app/PendingIntent;
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1288
    const/4 v3, 0x1

    .line 1290
    const-string v13, "EsEventData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 1291
    const-string v13, "EsEventData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#validateInstantShare; keep IS; now: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", end: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", wake in: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v4, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_d3
    const-string v13, "EsEventData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_112

    .line 1296
    const-string v8, "MMM dd, yyyy h:mmaa"

    .line 1297
    .local v8, inFormat:Ljava/lang/CharSequence;
    const-string v13, "EsEventData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Enable Instant Share; now: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", alarm: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_2a .. :try_end_112} :catchall_12b

    .line 1305
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v4           #eventEndAlarmTime:J
    .end local v6           #eventEndIntent:Landroid/app/PendingIntent;
    .end local v7           #eventId:Ljava/lang/String;
    .end local v8           #inFormat:Ljava/lang/CharSequence;
    .end local v9           #intent:Landroid/app/PendingIntent;
    .end local v10           #now:J
    .end local v12           #userGaiaId:Ljava/lang/String;
    :cond_112
    if-nez v3, :cond_12a

    .line 1307
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    .line 1308
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/NotificationUtils;->cancelInstantShareEnabled(Landroid/content/Context;)V

    .line 1310
    const-string v13, "EsEventData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_12a

    .line 1311
    const-string v13, "EsEventData"

    const-string v14, "Disable Instant Share"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_12a
    return v3

    .line 1305
    :catchall_12b
    move-exception v13

    if-nez v3, :cond_144

    .line 1307
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    .line 1308
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/NotificationUtils;->cancelInstantShareEnabled(Landroid/content/Context;)V

    .line 1310
    const-string v14, "EsEventData"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_144

    .line 1311
    const-string v14, "EsEventData"

    const-string v15, "Disable Instant Share"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    throw v13
.end method

.method private static writeToLog(Ljava/lang/String;)V
    .registers 6
    .parameter "logEntry"

    .prologue
    const/16 v4, 0xa

    .line 2397
    const/4 v1, 0x0

    .line 2398
    .local v1, lastIndex:I
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2399
    .local v0, index:I
    :goto_8
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 2400
    const-string v2, "EsEventData"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    add-int/lit8 v1, v0, 0x1

    .line 2402
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_8

    .line 2404
    :cond_1b
    const-string v2, "EsEventData"

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return-void
.end method
