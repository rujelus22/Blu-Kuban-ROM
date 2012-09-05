.class public Lcom/android/browser/BrowserFeature;
.super Ljava/lang/Object;
.source "BrowserFeature.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAmoled()Z
    .registers 5

    .prologue
    .line 29
    const-string v2, "ro.product.model"

    const-string v3, "Not Available"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, model:Ljava/lang/String;
    const-string v2, "Colorize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v2, "I9100G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 34
    const/4 v0, 0x0

    .line 37
    .local v0, mColorize:Z
    :goto_29
    return v0

    .line 36
    .end local v0           #mColorize:Z
    :cond_2a
    const/4 v0, 0x1

    .restart local v0       #mColorize:Z
    goto :goto_29
.end method
