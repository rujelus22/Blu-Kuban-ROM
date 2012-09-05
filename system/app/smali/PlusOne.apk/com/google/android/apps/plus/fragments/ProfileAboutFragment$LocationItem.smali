.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;
.super Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationItem"
.end annotation


# instance fields
.field final address:Ljava/lang/String;

.field final current:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "address"
    .parameter "current"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    .line 196
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->address:Ljava/lang/String;

    .line 197
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->current:Z

    .line 198
    return-void
.end method
