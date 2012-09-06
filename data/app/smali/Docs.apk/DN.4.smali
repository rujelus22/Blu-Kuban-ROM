.class LDN;
.super Ljava/lang/ref/WeakReference;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/view/View;",
        ">;",
        "Landroid/text/NoCopySpan;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 272
    return-void
.end method
