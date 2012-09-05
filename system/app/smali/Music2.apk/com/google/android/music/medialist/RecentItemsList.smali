.class public Lcom/google/android/music/medialist/RecentItemsList;
.super Lcom/google/android/music/medialist/MediaList;
.source "RecentItemsList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/RecentItemsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/music/medialist/RecentItemsList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/RecentItemsList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/RecentItemsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/MediaList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
