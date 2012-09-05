.class final Lcom/google/android/finsky/activities/AuthenticatedActivity$1;
.super Ljava/util/HashMap;
.source "AuthenticatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 116
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/android/vending/MarketWidgetProvider;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/widget/MusicWidgetProvider;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/widget/MoviesWidgetProvider;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/widget/BooksWidgetProvider;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method
