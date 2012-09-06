.class Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;
.super Lcom/google/android/apps/plus/views/ProfileAboutView$Item;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
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
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$Item;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    .line 233
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->address:Ljava/lang/String;

    .line 234
    iput-boolean p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->current:Z

    .line 235
    return-void
.end method
