.class Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
.super Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;
.source "PeopleSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicProfile"
.end annotation


# instance fields
.field snippet:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "snippet"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    .line 120
    return-void
.end method
