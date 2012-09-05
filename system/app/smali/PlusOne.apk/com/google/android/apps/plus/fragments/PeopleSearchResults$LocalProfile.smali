.class Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;
.super Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;
.source "PeopleSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalProfile"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field packedCircleIds:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field phoneType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "packedCircleIds"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 91
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->packedCircleIds:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->email:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneNumber:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneType:Ljava/lang/String;

    .line 95
    return-void
.end method
