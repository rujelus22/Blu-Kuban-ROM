.class Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;
.super Lcom/google/android/apps/plus/views/ProfileAboutView$Item;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalActionsItem"
.end annotation


# instance fields
.field final address:Ljava/lang/String;

.field final mapsCid:Ljava/lang/String;

.field final phone:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "phone"
    .parameter "title"
    .parameter "mapsCid"
    .parameter "address"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$Item;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    .line 245
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->phone:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->title:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->mapsCid:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->address:Ljava/lang/String;

    .line 249
    return-void
.end method
