.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
.super Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItem"
.end annotation


# instance fields
.field firstItem:Z

.field showLongDivider:Z

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    .line 174
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    .line 175
    return-void
.end method
