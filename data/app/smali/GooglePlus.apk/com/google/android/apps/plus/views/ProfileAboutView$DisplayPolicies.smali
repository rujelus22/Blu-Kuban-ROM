.class public Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;
.super Ljava/lang/Object;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayPolicies"
.end annotation


# instance fields
.field public hideButtons:Z

.field public showDetailsAlways:Z

.field public showExpandButtonText:Z

.field public showInfoIcons:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    .line 89
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->hideButtons:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showExpandButtonText:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showDetailsAlways:Z

    return-void
.end method
