.class public Lcom/swype/android/widget/Themes;
.super Ljava/lang/Object;
.source "Themes.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static setActivityTheme(Landroid/app/Activity;Lcom/swype/android/jni/SwypeCore;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 19
    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/swype/android/jni/SwypeCore;->getSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "style"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 25
    :cond_19
    return-void
.end method

.method public static setSeekbarTextColor(Landroid/widget/TextView;Lcom/swype/android/jni/SwypeCore;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 31
    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/swype/android/jni/SwypeCore;->getSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SeekbarTextColor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "color"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 35
    if-eqz v0, :cond_38

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :cond_38
    return-void
.end method
