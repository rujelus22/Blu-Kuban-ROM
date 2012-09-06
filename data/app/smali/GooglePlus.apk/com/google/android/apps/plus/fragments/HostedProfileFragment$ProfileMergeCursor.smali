.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
.super Landroid/database/MergeCursor;
.source "HostedProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileMergeCursor"
.end annotation


# instance fields
.field private mProfileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

.field private mStreamCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursors"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 519
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mProfileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 520
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mStreamCursor:Landroid/database/Cursor;

    .line 521
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;)Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mProfileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    return-object v0
.end method


# virtual methods
.method public wrapsStreamCursor(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "streamCursor"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mStreamCursor:Landroid/database/Cursor;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
