.class Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;
.super Ljava/lang/Object;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/ads/PlusOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAbuseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->showDialog(I)V

    .line 438
    return-void
.end method
