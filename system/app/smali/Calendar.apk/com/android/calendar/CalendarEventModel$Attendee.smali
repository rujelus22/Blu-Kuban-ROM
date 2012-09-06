.class public Lcom/android/calendar/CalendarEventModel$Attendee;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# instance fields
.field public mEmail:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "email"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "email"
    .parameter "status"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 89
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_5

    .line 65
    :cond_4
    :goto_4
    return v1

    .line 58
    :cond_5
    instance-of v3, p1, Lcom/android/calendar/CalendarEventModel$Attendee;

    if-nez v3, :cond_b

    move v1, v2

    .line 59
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 62
    .local v0, other:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 63
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method
