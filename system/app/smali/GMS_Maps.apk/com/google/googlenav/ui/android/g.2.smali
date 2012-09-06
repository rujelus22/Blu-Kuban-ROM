.class public Lcom/google/googlenav/ui/android/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Dialog;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 32
    :goto_3
    return-void

    .line 25
    :catch_4
    move-exception v0

    .line 30
    const-string v1, "UIDialogs.dismiss"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static b(Landroid/app/Dialog;)V
    .registers 1
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 47
    return-void
.end method
