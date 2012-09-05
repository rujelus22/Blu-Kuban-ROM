.class abstract Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;
.super Ljava/lang/Object;
.source "PeopleSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Profile"
.end annotation


# instance fields
.field gaiaId:Ljava/lang/Long;

.field name:Ljava/lang/String;

.field personId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;->personId:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;->gaiaId:Ljava/lang/Long;

    .line 78
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;->name:Ljava/lang/String;

    .line 79
    return-void
.end method
