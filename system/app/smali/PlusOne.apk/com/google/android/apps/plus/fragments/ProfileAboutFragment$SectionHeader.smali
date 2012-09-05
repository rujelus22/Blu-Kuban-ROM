.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;
.super Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionHeader"
.end annotation


# instance fields
.field final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    .line 164
    iput p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;->resourceId:I

    .line 165
    return-void
.end method
