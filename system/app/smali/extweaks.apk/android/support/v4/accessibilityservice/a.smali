.class final Landroid/support/v4/accessibilityservice/a;
.super Landroid/support/v4/accessibilityservice/b;
.source "AccessibilityServiceInfoCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/accessibilityservice/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
