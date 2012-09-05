.class Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
.super Ljava/lang/Object;
.source "EsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tab"
.end annotation


# instance fields
.field public containerView:Landroid/view/View;

.field public fragment:Landroid/support/v4/app/Fragment;

.field public tabButton:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/EsTabActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;-><init>()V

    return-void
.end method
