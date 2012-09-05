.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;
.super Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoteItem"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;-><init>()V

    return-void
.end method
