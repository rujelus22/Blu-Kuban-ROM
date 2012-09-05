.class public Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
.super Ljava/lang/Object;
.source "PeopleSearchResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Profile;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/fragments/PeopleSearchResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

.field private mCursorValid:Z

.field private final mGaiaIdsAndCircles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGaiaIdsAndCirclesLoaded:Z

.field private mHasMoreResults:Z

.field private final mLocalProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalProfilesLoaded:Z

.field private mMyPersonId:Ljava/lang/String;

.field private mNextId:J

.field private final mPublicProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mQuery:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "matched_email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->PROJECTION:[Ljava/lang/String;

    .line 395
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    .line 129
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    .line 132
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    .line 129
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    .line 130
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    .line 131
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    .line 132
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v6, 0x1

    :cond_3d
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 358
    .local v4, publicCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    if-ge v1, v4, :cond_67

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, personId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 361
    .local v0, gaiaId:Ljava/lang/Long;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, snippet:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    invoke-direct {v7, v3, v0, v2, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 365
    .end local v0           #gaiaId:Ljava/lang/Long;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #personId:Ljava/lang/String;
    .end local v5           #snippet:Ljava/lang/String;
    :cond_67
    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "personId"
    .parameter "lookupKey"
    .parameter "name"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 230
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public addGaiaIdAndCircles(Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"
    .parameter "packedCircleIds"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public addLocalProfile(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "packedCircleIds"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    :goto_8
    return-void

    .line 215
    :cond_9
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public addPublicProfile(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "snippet"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    :goto_8
    return-void

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    goto :goto_8
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 15

    .prologue
    .line 250
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    if-eqz v7, :cond_7

    .line 251
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 349
    :goto_6
    return-object v7

    .line 254
    :cond_7
    new-instance v7, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v8, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 255
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 257
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    if-eqz v7, :cond_1b

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    if-nez v7, :cond_1e

    .line 258
    :cond_1b
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    goto :goto_6

    .line 261
    :cond_1e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 262
    .local v3, gaiaIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v5, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;

    .line 265
    .local v6, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;
    iget-object v2, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->gaiaId:Ljava/lang/Long;

    .line 266
    .local v2, gaiaId:Ljava/lang/Long;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v7, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->personId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->packedCircleIds:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->email:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0x8

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneNumber:Ljava/lang/String;

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e

    .line 284
    .end local v2           #gaiaId:Ljava/lang/Long;
    .end local v6           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;
    :cond_8c
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_92
    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;

    .line 285
    .local v1, contact:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;
    iget-object v7, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 289
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->personId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->lookupKey:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->email:Ljava/lang/String;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneNumber:Ljava/lang/String;

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_92

    .line 304
    .end local v1           #contact:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;
    :cond_ef
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f5
    :goto_f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 305
    .local v6, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v2, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/Long;

    .line 306
    .restart local v2       #gaiaId:Ljava/lang/Long;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, circles:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f5

    .line 311
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v0, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f5

    .line 328
    .end local v0           #circles:Ljava/lang/String;
    .end local v2           #gaiaId:Ljava/lang/Long;
    .end local v6           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    :cond_15d
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_163
    :goto_163
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 329
    .restart local v6       #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v2, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/Long;

    .line 330
    .restart local v2       #gaiaId:Ljava/lang/Long;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_163

    .line 334
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/16 v9, 0xa

    iget-object v10, v6, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_163

    .line 349
    .end local v2           #gaiaId:Ljava/lang/Long;
    .end local v6           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    :cond_1bc
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    goto/16 :goto_6
.end method

.method public getPublicProfileCount()I
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public hasMoreResults()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    return v0
.end method

.method public isParcelable()Z
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onFinishContacts()V
    .registers 1

    .prologue
    .line 234
    return-void
.end method

.method public onFinishGaiaIdsAndCircles()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    .line 201
    return-void
.end method

.method public onFinishLocalProfiles()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 221
    return-void
.end method

.method public onStartContacts()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 226
    return-void
.end method

.method public onStartGaiaIdsAndCircles()V
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 193
    return-void
.end method

.method public onStartLocalProfiles()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 206
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 207
    return-void
.end method

.method public setHasMoreResults(Z)V
    .registers 2
    .parameter "hasMoreResults"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    .line 160
    return-void
.end method

.method public setMyProfile(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 4
    .parameter "queryString"

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 189
    :goto_9
    return-void

    .line 183
    :cond_a
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 187
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    goto :goto_9
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 372
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 377
    .local v2, publicCount:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    if-ge v0, v2, :cond_48

    .line 379
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 380
    .local v1, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 375
    .end local v0           #i:I
    .end local v1           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    .end local v2           #publicCount:I
    :cond_46
    const/4 v3, 0x0

    goto :goto_14

    .line 385
    .restart local v0       #i:I
    .restart local v2       #publicCount:I
    :cond_48
    return-void
.end method
