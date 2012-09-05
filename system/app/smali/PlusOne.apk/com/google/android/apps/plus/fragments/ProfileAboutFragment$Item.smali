.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.super Ljava/lang/Object;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field showDivider:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;->showDivider:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>()V

    return-void
.end method
