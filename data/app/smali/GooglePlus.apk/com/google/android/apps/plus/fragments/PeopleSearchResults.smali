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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGaiaIdsAndCirclesLoaded:Z

.field private mHasMoreResults:Z

.field private mIncludePeopleInCircles:Z

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

    .line 492
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
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

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 11
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    .line 129
    iput-boolean v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    .line 130
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    .line 132
    iput-boolean v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    .line 136
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    move v6, v7

    :goto_40
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    :goto_48
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 454
    .local v4, publicCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4f
    if-ge v1, v4, :cond_72

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, personId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, gaiaId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, snippet:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    invoke-direct {v7, v3, v0, v2, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .end local v0           #gaiaId:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #personId:Ljava/lang/String;
    .end local v4           #publicCount:I
    .end local v5           #snippet:Ljava/lang/String;
    :cond_6e
    move v6, v8

    .line 451
    goto :goto_40

    :cond_70
    move v7, v8

    .line 452
    goto :goto_48

    .line 461
    .restart local v1       #i:I
    .restart local v4       #publicCount:I
    :cond_72
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
    .line 239
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

    .line 240
    return-void
.end method

.method public addGaiaIdAndCircles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"
    .parameter "packedCircleIds"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public addLocalProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "packedCircleIds"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    :goto_8
    return-void

    .line 224
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

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public addPublicProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "personId"
    .parameter "gaiaId"
    .parameter "name"
    .parameter "snippet"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    :goto_8
    return-void

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    goto :goto_8
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 25

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    .line 444
    :goto_e
    return-object v17

    .line 263
    :cond_f
    new-instance v17, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v18, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->PROJECTION:[Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 264
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 266
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    move/from16 v17, v0

    if-nez v17, :cond_3b

    .line 267
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    goto :goto_e

    .line 273
    :cond_3b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 274
    .local v10, gaiaIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 275
    .local v14, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v6, emails:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    move/from16 v17, v0

    if-eqz v17, :cond_191

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;

    .line 281
    .local v15, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;
    iget-object v9, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->gaiaId:Ljava/lang/String;

    .line 282
    .local v9, gaiaId:Ljava/lang/String;
    iget-object v13, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->email:Ljava/lang/String;

    .line 284
    .local v13, matchedEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->personId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v9, v18, v19

    const/16 v19, 0x4

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x5

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->packedCircleIds:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x6

    aput-object v13, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x8

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x9

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->phoneType:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0xa

    const/16 v20, 0x0

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    if-eqz v13, :cond_5c

    .line 301
    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5c

    .line 310
    .end local v9           #gaiaId:Ljava/lang/String;
    .end local v13           #matchedEmail:Ljava/lang/String;
    .end local v15           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$LocalProfile;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f4
    :goto_f4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_191

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 312
    .local v15, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v9, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/String;

    .line 313
    .restart local v9       #gaiaId:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f4

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    .local v3, circles:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f4

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v9, v18, v19

    const/16 v19, 0x4

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x5

    aput-object v3, v18, v19

    const/16 v19, 0x6

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0xa

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f4

    .line 342
    .end local v3           #circles:Ljava/lang/String;
    .end local v9           #gaiaId:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2a1

    .line 350
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v12, mapByEmail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1ac
    :goto_1ac
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2a1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;

    .line 354
    .local v4, contact:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;
    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ac

    .line 358
    iget-object v5, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->email:Ljava/lang/String;

    .line 361
    .local v5, email:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ac

    .line 365
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 366
    .local v7, existing:[Ljava/lang/Object;
    if-eqz v7, :cond_225

    .line 367
    const/16 v17, 0x4

    aget-object v8, v7, v17

    check-cast v8, Ljava/lang/String;

    .line 370
    .local v8, existingName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1e6

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1ac

    .line 376
    :cond_1e6
    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1ac

    .line 377
    const/16 v17, 0x1

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->personId:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v17

    .line 378
    const/16 v17, 0x2

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->lookupKey:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v17

    .line 379
    const/16 v17, 0x4

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v17

    .line 382
    const/16 v17, 0x8

    aget-object v17, v7, v17

    if-nez v17, :cond_216

    .line 383
    const/16 v17, 0x8

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v17

    .line 385
    :cond_216
    const/16 v17, 0x9

    aget-object v17, v7, v17

    if-nez v17, :cond_1ac

    .line 386
    const/16 v17, 0x9

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneType:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v17

    goto :goto_1ac

    .line 394
    .end local v8           #existingName:Ljava/lang/String;
    :cond_225
    const/16 v17, 0xb

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->personId:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->lookupKey:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const/16 v18, 0x0

    aput-object v18, v16, v17

    const/16 v17, 0x4

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-object v18, v16, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-object v18, v16, v17

    const/16 v17, 0x7

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x8

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x9

    iget-object v0, v4, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;->phoneType:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0xa

    const/16 v18, 0x0

    aput-object v18, v16, v17

    .line 408
    .local v16, row:[Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1ac

    .line 417
    .end local v4           #contact:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$Contact;
    .end local v5           #email:Ljava/lang/String;
    .end local v7           #existing:[Ljava/lang/Object;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #mapByEmail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v16           #row:[Ljava/lang/Object;
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_2ab
    :goto_2ab
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_338

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 419
    .restart local v15       #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v9, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/String;

    .line 420
    .restart local v9       #gaiaId:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2ab

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2ab

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mNextId:J

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v9, v18, v19

    const/16 v19, 0x4

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0xa

    iget-object v0, v15, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2ab

    .line 444
    .end local v9           #gaiaId:Ljava/lang/String;
    .end local v15           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    :cond_338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-object/from16 v17, v0

    goto/16 :goto_e
.end method

.method public getPublicProfileCount()I
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public hasMoreResults()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    return v0
.end method

.method public isParcelable()Z
    .registers 3

    .prologue
    .line 172
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
    .line 243
    return-void
.end method

.method public onFinishGaiaIdsAndCircles()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCirclesLoaded:Z

    .line 210
    return-void
.end method

.method public onFinishLocalProfiles()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 230
    return-void
.end method

.method public onStartContacts()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 235
    return-void
.end method

.method public onStartGaiaIdsAndCircles()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mGaiaIdsAndCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 202
    return-void
.end method

.method public onStartLocalProfiles()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 215
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 216
    return-void
.end method

.method public setHasMoreResults(Z)V
    .registers 2
    .parameter "hasMoreResults"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    .line 161
    return-void
.end method

.method public setIncludePeopleInCircles(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    .line 197
    return-void
.end method

.method public setMyProfile(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 4
    .parameter "queryString"

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 190
    :goto_9
    return-void

    .line 184
    :cond_a
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mLocalProfilesLoaded:Z

    .line 188
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mCursorValid:Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    goto :goto_9
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mMyPersonId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mHasMoreResults:Z

    if-eqz v3, :cond_4b

    move v3, v4

    :goto_16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mIncludePeopleInCircles:Z

    if-eqz v3, :cond_4d

    :goto_1d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    .local v2, publicCount:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    if-ge v0, v2, :cond_4f

    .line 476
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->mPublicProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;

    .line 477
    .local v1, profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->personId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->gaiaId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v3, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .end local v0           #i:I
    .end local v1           #profile:Lcom/google/android/apps/plus/fragments/PeopleSearchResults$PublicProfile;
    .end local v2           #publicCount:I
    :cond_4b
    move v3, v5

    .line 471
    goto :goto_16

    :cond_4d
    move v4, v5

    .line 472
    goto :goto_1d

    .line 482
    .restart local v0       #i:I
    .restart local v2       #publicCount:I
    :cond_4f
    return-void
.end method
