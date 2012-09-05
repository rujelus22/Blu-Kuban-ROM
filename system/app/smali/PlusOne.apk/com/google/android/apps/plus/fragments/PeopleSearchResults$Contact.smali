.class Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;
.super Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;
.source "PeopleSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field lookupKey:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field phoneType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "personId"
    .parameter "lookupKey"
    .parameter "name"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->lookupKey:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->email:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneNumber:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneType:Ljava/lang/String;

    .line 111
    return-void
.end method
