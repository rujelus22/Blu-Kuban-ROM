.class public Lcom/android/inputmethod/voice/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 83
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_7

    .end local p2
    :goto_6
    return-object p2

    .restart local p2
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method
