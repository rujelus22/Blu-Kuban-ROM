.class public Lcom/google/android/apps/plus/ads/LegacyPlusOneActivity;
.super Lcom/google/android/apps/plus/phone/SignOnActivity;
.source "LegacyPlusOneActivity.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.plus"

    const-string v2, "com.google.android.apps.circles.platform.PlusOneActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/ads/LegacyPlusOneActivity;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;-><init>()V

    return-void
.end method
