.class public Lcom/google/android/apps/books/provider/BooksContract;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/BooksContract$1;,
        Lcom/google/android/apps/books/provider/BooksContract$Files;,
        Lcom/google/android/apps/books/provider/BooksContract$Configuration;,
        Lcom/google/android/apps/books/provider/BooksContract$ConfigurationColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;,
        Lcom/google/android/apps/books/provider/BooksContract$Accounts;,
        Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;,
        Lcom/google/android/apps/books/provider/BooksContract$Annotations;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;,
        Lcom/google/android/apps/books/provider/BooksContract$Collections;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;,
        Lcom/google/android/apps/books/provider/BooksContract$Pages;,
        Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;,
        Lcom/google/android/apps/books/provider/BooksContract$Resources;,
        Lcom/google/android/apps/books/provider/BooksContract$Chapters;,
        Lcom/google/android/apps/books/provider/BooksContract$Segments;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes;,
        Lcom/google/android/apps/books/provider/BooksContract$SessionKeyJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$AnnotationColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumeBaseColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStatesColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStatesJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$PageColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$SegmentResourceColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ResourceType;,
        Lcom/google/android/apps/books/provider/BooksContract$ResourceColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ChapterColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$SegmentColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$BaseVolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ContentStatus;
    }
.end annotation


# static fields
.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract;->sUriMatcher:Landroid/content/UriMatcher;

    .line 314
    const-string v0, "content://com.google.android.apps.books"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3247
    return-void
.end method

.method static synthetic access$100()Landroid/content/UriMatcher;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .registers 5

    .prologue
    .line 124
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 125
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v0, "com.google.android.apps.books"

    .line 127
    .local v0, authority:Ljava/lang/String;
    const-string v2, "com.google.android.apps.books"

    const-string v3, "volumes/*"

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/#"

    const/16 v4, 0x3e9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/volumes"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes"

    const/16 v4, 0x6e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*"

    const/16 v4, 0x78

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/cover"

    const/16 v4, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/cover_thumbnail"

    const/16 v4, 0x97

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/segments"

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/segments/*"

    const/16 v4, 0xc9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/segments/*/content"

    const/16 v4, 0xca

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/chapters"

    const/16 v4, 0xcd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/chapters/*"

    const/16 v4, 0xce

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/res"

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/res/*"

    const/16 v4, 0x12d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/res/*/content"

    const/16 v4, 0x12e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/segment_res"

    const/16 v4, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/segment_res/segment/*/res/*"

    const/16 v4, 0x15f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/pages"

    const/16 v4, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/pages/*"

    const/16 v4, 0x191

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/pages/*/content"

    const/16 v4, 0x192

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/files"

    const/16 v4, 0x19a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/files/segments"

    const/16 v4, 0x19b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/files/res"

    const/16 v4, 0x19c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    const-string v2, "com.google.android.apps.books"

    const-string v3, "accounts/*/volumes/*/files/pages"

    const/16 v4, 0x19d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    const-string v2, "com.google.android.apps.books"

    const-string v3, "volumes/*/annotations"

    const/16 v4, 0x1ae

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    const-string v2, "com.google.android.apps.books"

    const-string v3, "volumes/*/annotations/#"

    const/16 v4, 0x1af

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    const-string v2, "com.google.android.apps.books"

    const-string v3, "session_keys"

    const/16 v4, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    const-string v2, "com.google.android.apps.books"

    const-string v3, "session_keys/#"

    const/16 v4, 0x1c3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    const-string v2, "com.google.android.apps.books"

    const-string v3, "search_suggest_query/"

    const/16 v4, 0x1f5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    const-string v2, "com.google.android.apps.books"

    const-string v3, "search_suggest_query/*"

    const/16 v4, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    const-string v2, "com.google.android.apps.books"

    const-string v3, "search_suggest_shortcut/*"

    const/16 v4, 0x1f6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    const-string v2, "com.google.android.apps.books"

    const-string v3, "states"

    const/16 v4, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    const-string v2, "com.google.android.apps.books"

    const-string v3, "states/accounts/*"

    const/16 v4, 0x259

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    const-string v2, "com.google.android.apps.books"

    const-string v3, "states/accounts/*/volumes/*"

    const/16 v4, 0x25a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/collections"

    const/16 v4, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/*/collections"

    const/16 v4, 0x2bd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/*/collections/#"

    const/16 v4, 0x2be

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/collections/volumes"

    const/16 v4, 0x2c6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/*/collections/#/volumes"

    const/16 v4, 0x2c7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/*/collections/#/volumes/*"

    const/16 v4, 0x2c8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    const-string v2, "com.google.android.apps.books"

    const-string v3, "lib/accounts/*/collections/library/volumes"

    const/16 v4, 0x2d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    const-string v2, "com.google.android.apps.books"

    const-string v3, "config"

    const/16 v4, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    const-string v2, "com.google.android.apps.books"

    const-string v3, "files"

    const/16 v4, 0x384

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    return-object v1
.end method

.method public static markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "callerIsSyncAdapter"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static match(Landroid/net/Uri;)I
    .registers 2
    .parameter "uri"

    .prologue
    .line 207
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static requestManualSync(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-static {p0, v0, v0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualSync(Landroid/accounts/Account;ZZ)V

    .line 271
    return-void
.end method

.method public static requestManualSync(Landroid/accounts/Account;ZZ)V
    .registers 7
    .parameter "account"
    .parameter "download"
    .parameter "forceFetchBooks"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    if-eqz p1, :cond_13

    .line 286
    const-string v1, "SyncService.DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    :cond_13
    if-nez p2, :cond_1a

    .line 289
    const-string v1, "SyncService.FETCH_BOOKS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_1a
    new-instance v1, Lcom/google/android/apps/books/util/RequestSyncTask;

    const-string v2, "com.google.android.apps.books"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/apps/books/util/RequestSyncTask;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/RequestSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    return-void
.end method

.method public static varargs requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V
    .registers 6
    .parameter "displayProgress"
    .parameter "account"
    .parameter "volumeIds"

    .prologue
    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string v1, "SyncService.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    invoke-static {v0, p2}, Lcom/google/android/apps/books/service/SyncService;->setVolumeIds(Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/google/android/apps/books/util/RequestSyncTask;

    const-string v2, "com.google.android.apps.books"

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/apps/books/util/RequestSyncTask;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/RequestSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    return-void
.end method
