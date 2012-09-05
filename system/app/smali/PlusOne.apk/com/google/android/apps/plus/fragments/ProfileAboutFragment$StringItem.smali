.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;
.super Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringItem"
.end annotation


# instance fields
.field final value:Ljava/lang/String;

.field final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "viewType"
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    .line 183
    iput p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->viewType:I

    .line 184
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->value:Ljava/lang/String;

    .line 185
    return-void
.end method
