.class Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;
.super Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 64
    invoke-static {p1}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter "info"

    .prologue
    .line 69
    invoke-static {p1}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter "info"

    .prologue
    .line 74
    invoke-static {p1}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "info"

    .prologue
    .line 79
    invoke-static {p1}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter "info"

    .prologue
    .line 84
    invoke-static {p1}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
