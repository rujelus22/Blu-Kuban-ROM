.class public Lcom/android/calendar/EditEvent$Attendee;
.super Ljava/lang/Object;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attendee"
.end annotation


# instance fields
.field mContactId:I

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter "name"
    .parameter "email"
    .parameter "contactId"

    .prologue
    .line 4012
    iput-object p1, p0, Lcom/android/calendar/EditEvent$Attendee;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4013
    iput-object p2, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    .line 4014
    iput-object p3, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    .line 4016
    iput p4, p0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    .line 4017
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    .line 4018
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter "name"
    .parameter "email"
    .parameter "contactId"
    .parameter "status"

    .prologue
    .line 4020
    iput-object p1, p0, Lcom/android/calendar/EditEvent$Attendee;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4021
    iput-object p2, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    .line 4022
    iput-object p3, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    .line 4024
    iput p4, p0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    .line 4025
    iput p5, p0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    .line 4026
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "s"
    .parameter "d"

    .prologue
    .line 4029
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4030
    const/4 v0, 0x1

    .line 4031
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public contain(Lcom/android/calendar/EditEvent$Attendee;)Z
    .registers 5
    .parameter "attendee"

    .prologue
    const/4 v0, 0x1

    .line 4043
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent$Attendee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4049
    :cond_b
    :goto_b
    return v0

    .line 4045
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent$Attendee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4049
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDisplay()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4053
    const/4 v0, 0x0

    .line 4054
    .local v0, display:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 4055
    iget-object v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    .line 4061
    :cond_f
    :goto_f
    return-object v0

    .line 4056
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 4057
    iget-object v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    goto :goto_f
.end method
