.class Lcom/android/calendar/EventInfoActivity$Attendee;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attendee"
.end annotation


# instance fields
.field mContactId:I

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "email"
    .parameter "contactId"

    .prologue
    .line 986
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 988
    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    .line 990
    iput p3, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mContactId:I

    .line 991
    return-void
.end method
